extends Area3D

@export var dialogue_timeline : String #Creating export variable for convenianec sake, and to make this more modulare

@export var is_self_destruct : bool = false #This is potional. This is just if you only want to trigger the dialogue once, and then never again
		
		
func _on_body_entered(body: Node3D) -> void:
	if(body.name == "player"): #This 'if' statement is cheking if the 'body' parameter is named "player", then exectue this code. For good practice, you should be using 'if(body.is_in_group("insert_group name here")
		if(is_self_destruct == false): # This just checks if this is NOT a self destruct trigger. And if so
			Dialogic.start(dialogue_timeline) #Just trigger the dialogue option. Keep in mind, that the 'start()' function that comes with dialogic, can only take strings, hens why we made the variable a type "String"
		else: #If it is
			queue_free() #We destroy the trigger with the 'queue_free()' function
			Dialogic.start(dialogue_timeline) #And then we also trigger the dialogue
			
#Heres a nice little house to go with your code :D
#------------------------------------------------------------------
#                                   /\
#                              /\  //\\
#                       /\    //\\///\\\        /\
#                      //\\  ///\////\\\\  /\  //\\
#         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \
#        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \
#       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *
#      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\
#     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\
#    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\
#   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\
#  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\
# / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |
#/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |ooooooo
#ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
