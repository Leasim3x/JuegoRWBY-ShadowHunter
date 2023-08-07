// Obtenemos el objeto jugador
var player = instance_find(objPlayer, 0);

// Cambiamos de Room (reemplaza 'Room2' con el nombre de la siguiente sala)
room_goto(Room5);

// Establecemos la posición del jugador en la siguiente sala (ajusta los valores X e Y según lo necesites)
player.x = 64; // La posición X de la puerta actual
player.y = 704; // La posición Y de la puerta actual