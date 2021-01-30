##
function plotSurface(x, y, z, M, nM; camera::NTuple{2,Float64}=(-30, 30), plotSlice::Bool=false, saveFig::Bool=false)

    surface(z, x, y)
    surface!(z, x, -y, 
        camera=camera, 
        xlim=(0, nM * M), 
        palette=:haline, 
        bordercolor=:white,
        gridcolor=:white
        )

    if plotSlice
        X = -1.5:0.1:1.5
        Y = -1:0:1
        Z(X, Y) = 1
        surface(Z, X, Y, 
        fillcolor=:blue,
        alpha=0.8,
        gridcolor=:none)
    end


end
