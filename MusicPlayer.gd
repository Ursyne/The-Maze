extends AudioStreamPlayer

var random = RandomNumberGenerator.new()

onready var tracks = [
  'music_one',
  'music_two',
  'music_three',
  'music_four',
  'music_five',
  'music_six',
  'music_seven',
  'music_eight',
  'music_nine',
  'music_ten'
]

func _ready():
	random.randomize()
	var rand_nb = random.randi_range(0,9)
	var audiostream = load('res://Assets/Music/' + tracks[rand_nb] + '.ogg')
	set_stream(audiostream)
	play()
	pass
