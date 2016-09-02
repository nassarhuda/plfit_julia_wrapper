# before calling this function, go to plfit_Julia_wrapper and execute the makefile

if OS_NAME == :Linux
    const libpath = string(pwd(), "/plfit_Julia_wrapper/build/libplfit.so")
else
    const libpath = string(pwd(), "/plfit_Julia_wrapper/build/libplfit.dylib")
end

function call_plfit(degs::Array{Float64},options::ASCIIString)
       ccall( (:process_file, libpath), # function + library
                                  Void, # return type
                                  (Ptr{Float64},Ptr{UInt8},UInt),
                                  degs,options,length(degs))
end

# example usage:
# degs = readcsv("input_data.txt");
# degs = degs[:,1];
# include("call_plfit.jl")
# call_plfit(degs,"./plfit -c")