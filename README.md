Note

- XCode 12 somehow put `-arch arm64` by default which messed with some library header. To properly install CPython library, must add `ARCHFLAGS="-arch x86_64"` before any package installation. 