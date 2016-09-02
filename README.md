# plfit_julia_wrapper

### To make the shared object or dynamic lib go to:   
`plfig_Julia_wrapper/build` and execute `make`   

### Then, to run the code from Julia,   
Go back to the master folder and run the following as an example:   
```
degs = readcsv("input_data.txt");
degs = degs[:,1];
include("call_plfit.jl")
call_plfit(degs,"./plfit -h")
call_plfit(degs,"./plfit -c")
```
