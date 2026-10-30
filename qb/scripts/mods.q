0x0c653a73 = 0
black_background = 0
no_fail = 0

script ui_create_downloads 
	menu_music_on
	make_menu_frontend \{screen = bassist
		title = 'MOD MENU'}
	add_menu_frontend_item \{text = 'Modifiers'
		choose_state = uistate_atom_unlock}
	add_menu_frontend_item \{text = 'Unlock All'
		pad_choose_script = playday_unlockall}
	add_menu_frontend_item \{text = 'Show FPS'
		pad_choose_script = togglefps}
	<item_id> :se_setprops {
		event_handlers = [
			{focus retail_menu_focus params = {id = <id>}}
			{unfocus retail_menu_unfocus params = {id = <id>}}
		]
	}
	menu_finish
endscript

script 0x087ebcbc 
	if ($no_fail = 0)
		change no_fail = 1
		change \{debug_forcescore = good}
		soundevent \{event = checkbox_check_sfx}
	else
		change no_fail = 0
		change \{debug_forcescore = off}
		soundevent \{event = checkbox_sfx}
	endif
endscript

script 0xdd7d7813 
	if ($0x0c653a73 = 0)
		change 0x0c653a73 = 1
		change highway_normal = [0 0 0 255]
		change highway_starpower = [0 0 0 255]
		soundevent \{event = checkbox_check_sfx}
	else
		change 0x0c653a73 = 0
		change highway_normal = [255 255 255 255]
		change highway_starpower = [64 255 255 255]
		soundevent \{event = checkbox_sfx}
	endif
endscript

script 0x5a8f1f16 
	if ($enable_button_cheats = 0)
		change enable_button_cheats = 1
		soundevent \{event = checkbox_check_sfx}
	else
		change enable_button_cheats = 0
		soundevent \{event = checkbox_sfx}
	endif
endscript

script 0x9f467659 
	if ($black_background = 0)
		change black_background = 1
		soundevent \{event = checkbox_check_sfx}
	else
		change black_background = 0
		soundevent \{event = checkbox_sfx}
	endif
endscript

script toggle_allowcontroller 
	if ($allow_controller_for_all_instruments = 1)
		change \{allow_controller_for_all_instruments = 0}
		soundevent \{event = checkbox_sfx}
	else
		change \{allow_controller_for_all_instruments = 1}
		soundevent \{event = checkbox_check_sfx}
	endif
	toggle_allowcontroller_setprop
endscript

script ui_destroy_downloads 
	generic_ui_destroy
endscript
