(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (memory 1)
  (data (i32.const 0) "Hello World\n")
  (export "memory" (memory 0))
  (func (export "_start")
    (call $fd_write
      (i32.const 1)
      (i32.const 8)
      (i32.const 1)
      (i32.const 20))
    drop))
