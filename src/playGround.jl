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
using Plots
gr()
f(x,y) = (3x + y^2) * abs(sin(x) + cos(y))

x = 0:0.1:20
y = 0:0.1:10
z = [f(i, j) for i in x, j in y]' # この転置を忘れるとデータが矛盾し、グラフが変になるので要注意．

plot(x,y,z, st=:surface, camera=(30, 50), ratio=:equal, proj=:"3d")



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

##
using WhiskerTypes
a = HydroWhisker(1, 2, 3, 4, 5, 6, 7)


