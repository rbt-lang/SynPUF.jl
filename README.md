SynPUF.jl : Medicare Synthetic Public Use Files
===============================================

*This package helps download the [SynPUF] dataset so that it could
be used within a Julia environment.*

Usage
-----

```
using DataDeps
using SynPUF
SynPUF.register()
path = datadep"synpuf_01"
print(path)
```

[SynPuf]: https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DESample01.html
