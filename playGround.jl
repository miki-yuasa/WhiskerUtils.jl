##
using Plots
gr()
x = range(-2, stop=2, length=100)
y = range(sqrt(2), stop=2, length=100)
f(x,y) = x * y - x - y + 1

plot(x,y,f,st=:surface)

##
plot(rand(3))
plot!(rand(5),bordercolor=:white,        
gridcolor=:white
)

##
gr()
x = -1.5:0.1:1.5
y = -1:0.1:1
z(x,y) = 3.434

plt = surface(x, y, z, fillcolor=:blue, α=0.8, grid=false, )



##
using PyPlot

thetas = range(0, stop=pi,   length=50)
phis   = range(0, stop=pi / 2, length=50)

X(r,theta,phi) = r * sin(theta) * sin(phi)
Y(r,theta,phi) = r * sin(theta) * cos(phi)
Z(r,theta,phi) = r * cos(theta)

xs = [X(1, theta, phi) for theta in thetas, phi in phis] 
ys = [Y(1, theta, phi) for theta in thetas, phi in phis]
zs = [Z(1, theta, phi) for theta in thetas, phi in phis]

plot_surface(xs, ys, zs, alpha=1)

gcf()

##
using PyCall
plot = pyimport("matplotlib.pyplot")
mpl3 = pyimport("mpl_toolkits.mplot3d")

using PyPlot

x = -1.5:0.1:1.5
y = -1:0.1:1
z(x,y) = 3.434

plot_surface(x,y,z)

##

using PyPlot

x = -1.5:0.1:1.5
y = -1:0.1:1
f(x,y) = 3.434

z = f.(x', y)
fig = surf(x, y, z)


