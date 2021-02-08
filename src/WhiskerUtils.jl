module WhiskerUtils
# Define types
include("whiskerstructs.jl")
include("conversions.jl")

using .WhiskerStructs
using .Conversions

export HydroWhisker, TopoWhisker, hydro2topo

end # module
