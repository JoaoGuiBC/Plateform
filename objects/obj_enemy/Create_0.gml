spd = 8;
hspd = 0;
vspd = 0;
grv = 0.5;
hp = 100;
distance = 100;

image_speed = 0.6;

state = EnemyState.IDLE;

enum EnemyState {
	IDLE,
	CHASE,
	ATTACK,
}