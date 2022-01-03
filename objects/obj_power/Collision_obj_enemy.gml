instance_destroy();

with(other) {
	hp = hp - other.damage;
	show_debug_message(hp);
}