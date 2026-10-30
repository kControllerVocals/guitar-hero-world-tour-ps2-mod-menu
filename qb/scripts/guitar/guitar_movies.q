
script create_movie_viewport 
	return
	create_jumbotron
	create_bandname_viewport
endscript

script destroy_movie_viewport 
	return
	destroy_jumbotron
	destroy_bandname_viewport
endscript

script pausefullscreenmovie 
	if ismovieplaying \{textureslot = 0}
		pausemovie \{textureslot = 0}
	endif
endscript

script unpausefullscreenmovie 
	if ismovieplaying \{textureslot = 0}
		resumemovie \{textureslot = 0}
	endif
endscript
g_skip_remaining_movies = 0

script playmovieandwait 
	return
endscript

script endmovie 
	setspawninstancelimits \{max = 1
		management = ignore_spawn_request}
	if gotparam \{skip_remaining_movies}
		change \{g_skip_remaining_movies = 1}
	endif
	if 0x62b954d8
		0x34fb97d7
	endif
	if screenelementexists \{id = movie_handler}
		movie_handler :die
	endif
endscript
