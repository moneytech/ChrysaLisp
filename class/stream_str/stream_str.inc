(import 'class/stream/stream.inc)

(def-class 'stream_str 'stream)
(def-method 'create 'class/stream_str/create 'static '(r0) '(r0))
(def-method 'new 'class/stream_str/new 'static)
(def-method 'init 'class/stream_str/init 'static '(r0 r1 r2))
(def-method 'ref_string 'class/stream_str/ref_string 'static '(r0) '(r0 r1))

(def-method 'write_next 'class/stream_str/write_next 'final)
(def-method 'write_flush 'class/stream_str/write_flush 'final)

(def-struct 'stream_str 'stream)
(def-struct-end)
