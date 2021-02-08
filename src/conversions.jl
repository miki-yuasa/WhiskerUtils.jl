module Conversions

using ..WhiskerStructs

function hydro2topo(hydro::HydroWhisker)::TopoWhisker
    c₁ = 0.5 * hydro.T * (hydro.γ + hydro.Ac)
    c2 = 0.5 * hydro.T * (hydro.γ - hydro.Ac);
    M = hydro.T * hydro.λ * 0.5;
    ΔL₁ = 0.5 * hydro.ϵ * M;
    ΔL2 = M * (hydro.Phi - 1) + ΔL₁;
    a = sqrt(sqr(c₁) + sqr(ΔL₁));
    k = sqrt(sqr(c2) + sqr(ΔL2));
    α = asin(ΔL₁ / a);
    β = asin(ΔL2 / k);
    b = 0.5 * hydro.T * (1 - hydro.At);
    l = 0.5 * hydro.T * (1 + hydro.At);

    return TopoWhisker(a, b, k, l, α, β, M)
end

function topo2hyrdro(topo::TopoWhisker)::HydroWhisker

end

export hydro2topo

end