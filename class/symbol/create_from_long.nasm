%include 'inc/func.ninc'
%include 'class/class_symbol.ninc'

def_func class/symbol/create_from_long
	;inputs
	;r0 = number
	;r1 = base
	;outputs
	;r0 = 0 if error, else object
	;trashes
	;all but r4

	f_call string, create_from_long, {r0, r1}, {r0}
	vpif r0, !=, 0
		func_path class, symbol
		fn_bind _function_, r1
		vp_cpy r1, [r0 + obj_vtable]
	endif
	vp_ret

def_func_end
