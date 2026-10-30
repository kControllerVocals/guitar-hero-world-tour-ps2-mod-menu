
script ui_create_atom_unlock 
	make_generic_menu \{title = 'Modifiers'}
	add_generic_menu_text_item \{text = 'No Fail'
		pad_choose_script = 0x087ebcbc}
	add_generic_menu_text_item \{text = 'Black Background'
		pad_choose_script = 0x9f467659}
	add_generic_menu_text_item \{text = 'Use Pad as Instrument'
		pad_choose_script = toggle_allowcontroller}
	add_generic_menu_text_item \{text = 'Debug Mode'
		pad_choose_script = 0x5a8f1f16}
	menu_finish
endscript

script ui_destroy_atom_unlock 
	generic_ui_destroy
endscript

script ui_atom_unlock 
	debugforceatomunlock name = <name> atom = <atom>
endscript

script ui_atom_unlock_focus 
endscript
