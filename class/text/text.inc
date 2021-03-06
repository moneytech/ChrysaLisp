(import 'class/view/view.inc)

(def-class 'text 'view)
(def-method 'create 'class/text/create 'static nil '(r0))
(def-method 'new 'class/text/new 'static nil '(r0))
(def-method 'init 'class/text/init)
(def-method 'set_font 'class/text/set_font 'static '(r0 r1 r2) '(r0))
(def-method 'set_text 'class/text/set_text 'static '(r0 r1) '(r0))
(def-method 'get_text 'class/text/get_text 'static '(r0) '(r0 r1))
(def-method 'ref_text 'class/text/ref_text 'static '(r0) '(r0 r1))
(def-method 'set_text_color 'class/text/set_text_color 'static '(r0 r1))

(def-method 'deinit 'class/text/deinit 'final)
(def-method 'pref_size 'class/text/pref_size 'final)
(def-method 'draw 'class/text/draw 'final)

(def-struct 'text 'view)
	(ptr 'font)
	(ptr 'string)
	(ptr 'words)
	(uint 'text_color)
(def-struct-end)

;;;;;;;;;;;;;;;;
; inline methods
;;;;;;;;;;;;;;;;

(defcfun class/text/get_text ()
	;inputs
	;r0 = text object
	;outputs
	;r0 = text object
	;r1 = 0 else, string object
	(vp-cpy-ir r0 text_string r1))

(defcfun class/text/set_text_color ()
	;inputs
	;r0 = text object
	;r1 = color
	(vp-cpy-ri-i r1 r0 text_text_color))
