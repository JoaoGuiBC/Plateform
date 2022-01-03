switch(state) {
	case EnemyState.IDLE: EnemyStateIdle(); break;
	case EnemyState.CHASE: EnemyStateChase(); break;
	case EnemyState.ATTACK: EnemyStateAttack(); break;
}

if state = EnemyState.ATTACK {
	hspd = 0;
	sprite_index = spr_enemy_attack;
}

if hp <= 0 {
	sprite_index = spr_enemy_death;
}