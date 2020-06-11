a simple test case for reproducing python segfault in HaikuOS

Output from Linux:

```
cc ctypes-test.c -Wall -Wextra -Werror -O0 -g -fPIC -shared -o ctypes-test.so
set -e; ./ctypes-test.py
set_python_side_fn(0x7f4f140d6010)
Python side ready, calling C function now
going to call python function now, ptr: 0x7f4f140d6010
Python function called from C code, checker: 1337
done!
```

Output from HaikuOS:

```
cc ctypes-test.c -Wall -Wextra -Werror -O0 -g -fPIC -shared -o ctypes-test.so
set -e; ./ctypes-test.py
set_python_side_fn(0x11d24f6976d0)
Python side ready, calling C function now
going to call python function now, ptr: 0x11d24f6976d0
# crash happens here
/bin/sh: line 1:  4198 Kill Thread             ./ctypes-test.py
Makefile:8: recipe for target 'ctypes-test.so' failed
make: *** [ctypes-test.so] Error 149
```
