%include 'inc/func.inc'
%include 'class/class_progress.inc'

	fn_function class/progress/create
		;outputs
		;r0 = 0 if error, else object
		;trashes
		;r1-r3

		;create new progress object
		static_call progress, new
		if r0, !=, 0
			;init the object
			fn_bind class/class_progress, r1
			static_call progress, init
			if r1, ==, 0
				;error with init
				method_call progress, delete, r1
				vp_xor r0, r0
			endif
		endif
		vp_ret

	fn_function_end