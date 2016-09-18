%include 'inc/func.inc'
%include 'class/class_unordered_set.inc'

fn_function class/unordered_set/create
	;inputs
	;r0 = key compare callback
	;r1 = num buckets
	;outputs
	;r0 = 0 if error, else object
	;trashes
	;r1-r3, r5-r7

	;save data
	vp_cpy r0, r6
	vp_cpy r1, r7

	;create new string object
	s_call unordered_set, new, {}, {r0}
	if r0, !=, 0
		;init the object
		slot_function class, unordered_set
		s_call unordered_set, init, {r0, @_function_, r6, r7}, {r1}
		if r1, ==, 0
			;error with init
			m_call unordered_set, delete, {r0}, {}, r1
			vp_xor r0, r0
		endif
	endif
	vp_ret

fn_function_end
