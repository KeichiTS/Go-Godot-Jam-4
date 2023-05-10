#Code by: KeichiTS - 2023

extends Area2D

var to_the_left_to_the_left = false
var velocity = 120

func _ready():
	if to_the_left_to_the_left == false:
		velocity = velocity
	else:
		velocity *= -1

func _process(delta):
	translate(Vector2(velocity*delta,0))


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group('player'):
		body.status = 0 
		queue_free()
		
	if body.is_in_group('ground'):
		queue_free()

###################################################
#     ~ It ain't much, but it's honest work ~     #
###################################################
##        #####################################   #
##          #############################         #
####            ######################            #
#####            #####           #                #
#######                                         ###
#########  #                                   ####
###########                              ## #######
#########      ###               ###       ########
#########     # ###             #####       #######
########      #####             ####         ######
########       ##                ##          ######
#######               ##                    #######
#######  ##           ####            ##      #####
####### #####        ########       #######    ####
########               #####                    ###
#########                                       ###
##########                                       ##
#########                                         #
###################################################
#               ~ KeichiTS - 2023 ~               #
###################################################
