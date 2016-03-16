%include 'inc/func.inc'
%include 'inc/gui.inc'
%include 'class/class_button.inc'

	fn_function class/button/new
		;outputs
		;r0 = 0 if error, else object
		;trashes
		;r1-r3

		;allocate new button object
		vp_cpy button_size, r0
		static_call mem, alloc
		if r0, !=, 0
			;clear object memory
			vp_cpy r0, r3
			vp_cpy button_size, r1
			static_call mem, clear
			vp_cpy r3, r0
		endif
		vp_ret

	fn_function_end