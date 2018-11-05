/*
To compile...
sudo gcc -o snookAR snookAR.c -lm
*/

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdint.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <pthread.h>

#define COLOR_DETECTOR 0x43C20000
#define OVERLAY_ADDR 0x43C10000
#define PIXEL_SIZE 4
#define R 15
#define R2 225
#define MAX_SPEED 8.0
#define	FRICTION 0.01  // every 100 loops, reduce speed by 1
#define WIDTH 640.0
#define HEIGHT 480.0
#define SPACIOUS 2.0
#define HORIZONTAL_OFFSET 0  // 144
#define VERTICAL_OFFSET 0  // 33
#define INITX 0  // initial dX value of white ball
#define INITY 0  // initial dY value of white ball

struct Vector
{
	float x;
	float y;
};

void Vector_create(struct Vector *who, float x, float y)
{
	assert(who != NULL);

	who->x = x;
	who->y = y;
}

void Vector_print(struct Vector *who)
{
	printf("(%f, %f)\n", who->x, who->y);
}

float dot(struct Vector *vec_1, struct Vector *vec_2)
{
	return vec_1->x * vec_2->x + vec_1->y * vec_2->y;
}

float quot(struct Vector *v1, struct Vector *x1, struct Vector *v2, struct Vector *x2)
{
	float n = dot(v1, x1) - dot(v1, x2) - dot(v2, x1) + dot(v2, x2);
	float d = dot(x1, x1) - dot(x1, x2) - dot(x2, x1) + dot(x2, x2);
	float result;
	if (d != 0){
		result = n/d;
	} else {
		result = 1;
	}
	return result;
}

struct Ball 
{
	char *color;
	float x;
	float y;
	float dX;
	float dY;
};

void Ball_create(struct Ball *who, char *color, float x, float y, float dX, float dY)
{
	assert(who != NULL);

	who->color = strdup(color);
	who->x = x;
	who->y = y;
	who->dX = dX;
	who->dY = dY;
}

int Ball_move(struct Ball *who)
{
	if(who->dX > 0) {
		who->dX -= FRICTION * fabs(who->dX);
	} else if(who->dX < 0) {
		who->dX += FRICTION * fabs(who->dX);
	}

	if(who->dY > 0) {
		who->dY -= FRICTION * fabs(who->dY);
	} else if(who->dX < 0) {
		who->dY += FRICTION * fabs(who->dY);
	}

	if(fabs(who->dX) < 0.01){
		who->dX = 0;
	}

	if(fabs(who->dY) < 0.01){
		who->dY = 0;
	}

	if (fabs(who->dX) > 0 && fabs(who->dY) > 0){
		who->x += who->dX;
		who->y += who->dY;
		return 1;  // ball moved
	} else {
		return 0;  // ball didn't move
	}
}

int Ball_is_moving(struct Ball *who)
{
	if (who->dX > 0 || who->dY > 0){
		return 1;  // ball is moving
	} else{
		return 0;
	}
}

void white_ball_hit(struct Ball *who, double dx, double dy, uint16_t x, uint16_t y)
{
	double magnitude = sqrt(dx*dx + dy*dy);

	double deltax, deltay;
	deltay = ((double)(who->y - y));
	deltax = ((double)(who->x - x));
	double alpha = atan2(deltay, deltax);

	double new_dy = magnitude * sin(alpha);
	double new_dx = magnitude * cos(alpha);

	who->dX = (double)new_dx*10;
	who->dY = (double)new_dy*10; 
}

void Ball_cold_stop(struct Ball *who)
{
	who->dX = 0;
	who->dY = 0;
}

uint16_t Ball_position_x(struct Ball *who)
{
	return (uint16_t) who->x + HORIZONTAL_OFFSET;
}

uint16_t Ball_position_y(struct Ball *who)
{
	return (uint16_t) who->y + VERTICAL_OFFSET;
}

void Ball_print(struct Ball *who)
{
	printf("Color:\t%s\n", who->color);
	printf("Coord:\t(%f, %f)\n\n", who->x, who->y);
}

int wall_collision(struct Ball *who)
{
	float x = who->x;
	float y = who->y;
	float dX = who->dX;
	float dY = who->dY;

	char *color = who->color;

	// uncomment these lines to include pockets
	// if (x < R*2 || x > WIDTH - R*2){
	// 	if (y < R*2 || y > HEIGHT - R*2){
	// 		if (color != "white"){
	// 			return 0;  // ball enters pocket, but is not white
	// 		} else {
	// 			return 1;  // RESET THE GAME
	// 		}
	// 	}
	// }

	if (x - R + dX < 0 || x + R + dX >= WIDTH){
		who->dX *= -1;
		return 0;
	}

	// uncomment these lines to include pockets
	// if (x > WIDTH/2 - (R*2) && x < WIDTH/2 + (R*2)){
	// 	if (y < 0 || y > HEIGHT){
	// 		if (color != "white"){
	// 			return 0;  // ball enters pocket, but is not white
	// 		} else {
	// 			return 1;  // RESET THE GAME
	// 		}
	// 	}
	// } else if (y - R + dY < 0 || y + R + dY >= HEIGHT){
	if(y - R + dY < 0 || y + R + dY >= HEIGHT){
		who->dY *= -1;
		return 0;
	}
}

void ball_collision(struct Ball *who_i, struct Ball *who_j, struct Vector *v1, struct Vector *x1, struct Vector *v2, struct Vector *x2)
{
	float x_i = who_i->x;
	float y_i = who_i->y;
	float dX_i = who_i->dX;
	float dY_i = who_i->dY;

	float x_j = who_j->x;
	float y_j = who_j->y;
	float dX_j = who_j->dX;
	float dY_j = who_j->dY;

	float x_diff = x_i + dX_i - x_j;
	float y_diff = y_i + dY_i - y_j;
	float hyp_2 = x_diff*x_diff + y_diff*y_diff;  // hypotenuse squared
	float sum_radi_2 = 4*R*R;  // sum of radi squared
	if (hyp_2 <= sum_radi_2)
	{
		Vector_create(v1, dX_i, dY_i);
		Vector_create(x1, x_i, y_i);
		Vector_create(v2, dX_j, dY_j);
		Vector_create(x2, x_j, y_j);

		float my_quot = quot(v1, x1, v2, x2);
		float v1_x = dX_i - my_quot * (x_i - x_j);
		float v1_y = dY_i - my_quot * (y_i - y_j);

		who_i->dX = v1_x;
		who_i->dY = v1_y;

		my_quot = quot(v2, x2, v1, x1);
		float v2_x = dX_j - my_quot * (x_j - x_i);
		float v2_y = dY_j - my_quot * (y_j - y_i);

		who_j->dX = v2_x;
		who_j->dY = v2_y;
	}
}

int check_overlap(struct Ball *who_i, struct Ball *who_j)
{
	float x_i = who_i->x;
	float y_i = who_i->y;
	float dX_i = who_i->dX;
	float dY_i = who_i->dY;
	float x_j = who_j->x;
	float y_j = who_j->y;

	float x_diff = x_i + dX_i - x_j;
	float y_diff = y_i + dY_i - y_j;
	float hyp_2 = x_diff*x_diff + y_diff*y_diff;  // hypotenuse squared
	float sum_radi_2 = 4*R*R;

	if (hyp_2 <= sum_radi_2){
		return 1;
	} else {
		return 0;
	}
}

void *thread_proc(void *arg)
{
	pthread_mutex_t *my_mutex = (pthread_mutex_t *) arg;
	while(1)
	{
		usleep(16666);
		pthread_mutex_unlock(&my_mutex[0]);
		pthread_mutex_lock(&my_mutex[1]);
	}
}

int main()
{
	int write_to_file = 0;  // if 0, then use mmap; else write to .txt
	FILE *my_file = fopen("./ansi-c-log-files/c_log.txt", "w+");

	if (my_file == NULL){
		printf("Error in opening the file\n");
        return 0;
	}

	struct Ball *my_balls = malloc(sizeof(struct Ball)*16);

	char *colors[] = {"black", "yellow", "#722f37", "purple", 
	"crimson", "gold", "#50c878", "blue", "red", "green", 
	"orange", "teal", "salmon", "violet", "pink"};

	Ball_create(my_balls, "white", WIDTH/2, HEIGHT-R*2, INITX, INITY);

	int ball_count = 1;

	float initial_x = WIDTH/2.0 - (R+SPACIOUS)*4.0;
	float initial_y = HEIGHT/2.0 - (R+SPACIOUS)*3.4642;

	for (int i = 0; i < 5; i++){
		for (int j = 0; j < 5-i; j++){
			float x_pos = initial_x+(j*(R+SPACIOUS)*2)+(i*(R+SPACIOUS));
			float y_pos = initial_y+(i*(R+SPACIOUS)*1.74);
			Ball_create(my_balls+ball_count, *(colors+ball_count-1), x_pos, y_pos, 0, 0);
			ball_count += 1;
		}
	}

	struct Ball *ball_i;
	struct Ball *ball_j;

	struct Vector *v1 = malloc(sizeof(struct Vector));
	struct Vector *x1 = malloc(sizeof(struct Vector));
	struct Vector *v2 = malloc(sizeof(struct Vector));
	struct Vector *x2 = malloc(sizeof(struct Vector));

	// mmap
	int fd;
	uint16_t *overlay;
	uint32_t *color_track;
	if (write_to_file == 0)
	{
		fd = open("/dev/mem", O_RDWR | O_SYNC);
		overlay = (uint16_t *) mmap(0, getpagesize(), PROT_READ | PROT_WRITE, MAP_SHARED, fd, OVERLAY_ADDR);
		color_track = (uint32_t *)mmap(0, getpagesize(), PROT_READ | PROT_WRITE, MAP_SHARED, fd, COLOR_DETECTOR);
	}
	
	int animate = 1;
	int something_moved;

	// keep track of player's positions
	uint16_t player_x, player_y;
	uint32_t l2;
	int16_t lx, ly;
	double player_dx = 0, player_dy = 0;
	uint16_t prev_player_x = 0;
	uint16_t prev_player_y = 0;
	uint32_t sumX = 0, sumY = 0, num_points = 0;

	pthread_mutex_t my_mutex[2];
	pthread_mutex_init(&my_mutex[0], NULL);
	pthread_mutex_init(&my_mutex[1], NULL);

	pthread_mutex_lock(&my_mutex[1]);

	pthread_t thread2;
	pthread_create(&thread2, NULL, &thread_proc, my_mutex);
	while(1)	
	{
		if (animate == 0){
			break;
		}
		something_moved = 0;
		for (int i = 0; i < 16; i++)
		{
			ball_i = my_balls+i;
			if (wall_collision(ball_i) == 1)
			{
				animate = 0;  // white ball is inside pocket
			}
			for (int j = 0; j < 16; j++)
			{
				if (i != j){
					ball_j = my_balls+j;
					ball_collision(ball_i, ball_j, v1, x1, v2, x2);
					if (Ball_is_moving(ball_i) && Ball_is_moving(ball_j) == 1){
						if (check_overlap(ball_i, ball_j) == 1)
						{
							Ball_cold_stop(ball_i);
							Ball_cold_stop(ball_j);
						}
					}
				}
			}
			something_moved += Ball_move(ball_i);
			uint16_t pos_x = Ball_position_x(ball_i);
			uint16_t pos_y = Ball_position_y(ball_i);
			if (write_to_file == 0)
			{
				overlay[i*2] = pos_x + 144;
				overlay[i*2+1] = pos_y + 33;
			}else if (write_to_file == 1){
				fprintf(my_file, "%d\t", pos_x);
				printf("%d\t", pos_x);
				fprintf(my_file, "%d\t", pos_y);
				printf("%d\t", pos_y);
			}
		}

		/*drawing the tracker marker*/
		sumX = color_track[0];
    	sumY = color_track[1];
    	num_points = color_track[2];

    	if(num_points != 0){
            player_x = (uint16_t) (sumX/num_points);
            player_y = (uint16_t) (sumY/num_points);     
    	}

    	overlay[32] = player_x + 144;
		overlay[33] = player_y + 33;		
		/********/

		if (write_to_file == 1)
		{
			fprintf(my_file, "\n");
			printf("\n");
		}
		if (something_moved == 0)
		{
			// wait for player's move

			sumX = color_track[0];
        	sumY = color_track[1];
        	num_points = color_track[2];

        	if(num_points != 0){
        		prev_player_x = player_x;
        		prev_player_y = player_y;

	            player_x = (uint16_t) (sumX/num_points);
	            player_y = (uint16_t) (sumY/num_points); 

	            if(player_x-prev_player_x > 5)  
	            	player_x = prev_player_x + 5;
	          	else if(player_x-prev_player_x < -5) 
	          		player_x = prev_player_x - 5;

	          	if(player_y-prev_player_y > 5)  
	            	player_y = prev_player_y + 5;
	          	else if(player_y-prev_player_y < -5) 
	          		player_y = prev_player_y - 5;
        	}

			lx = Ball_position_x(my_balls) - player_x;
			ly = Ball_position_y(my_balls) - player_y;
			l2 = lx*lx+ly*ly;

			while (l2 > R2)
			{
				overlay[32] = player_x + 144;
				overlay[33] = player_y + 33;
				prev_player_x = player_x;
				prev_player_y = player_y;
				sumX = color_track[0];
	        	sumY = color_track[1];
	        	num_points = color_track[2];
				if(num_points != 0){
		            player_x = (uint16_t) (sumX/num_points);
		            player_y = (uint16_t) (sumY/num_points);   
		            if(player_x-prev_player_x > 5)  
		            	player_x = prev_player_x + 5;
		          	else if(player_x-prev_player_x < -5) 
		          		player_x = prev_player_x - 5;

		          	if(player_y-prev_player_y > 5)  
		            	player_y = prev_player_y + 5;
		          	else if(player_y-prev_player_y < -5) 
		          		player_y = prev_player_y - 5;  
	        	}

				lx = Ball_position_x(my_balls) - player_x;
				ly = Ball_position_y(my_balls) - player_y;
				l2 = lx*lx+ly*ly;

				player_dx = ((double)(player_x - prev_player_x))/10 + player_dx*9/10;
				if (player_dx > MAX_SPEED)
				{
					player_dx = MAX_SPEED;
				}
				player_dy = ((double)(player_y - prev_player_y))/10 + player_dy*9/10;
				if (player_dy > MAX_SPEED)
				{
					player_dy = MAX_SPEED;
				}
			}



			white_ball_hit(my_balls, player_dx, player_dy, player_x, player_y);
		}
		pthread_mutex_lock(&my_mutex[0]);
		pthread_mutex_unlock(&my_mutex[1]);
	}

	fclose(my_file);

	return 0;
}