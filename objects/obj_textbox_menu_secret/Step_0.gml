/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

switch (string_lower(message)) {
    case "dev room":
        room_goto(rm_dev);
        break;
}