module WhiskerTypes

export HydroWhisker, TopoWhisker

struct HydroWhisker
    λ::Float64
    γ::Float64
    Ac::Float64
    At::Float64
    ϕ::Float64
    ϵ::Float64
    T::Float64
end 

struct TopoWhisker
    a::Float64
    b::Float64
    k::Float64
    l::Float64
    α::Float64
    β::Float64
    M::Float64
end