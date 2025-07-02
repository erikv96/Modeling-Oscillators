xs=[]
as=[]
alphas=linspace(0,2,200)
for n=1:200
    
    a=alphas(n)
    f=@(x) 1-a*x^2
    x0=0.5
    x_current=x0
    orbit=[x0]
   for i= 1:200
       x_current = f(x_current)
       orbit=[orbit,x_current]
   end
   xs=[xs,orbit(182:201)]
   as=[as,a*ones(1,20)]
end

plot(as,xs,".")
xlabel('parameter a')
ylabel('x_n')
%% next we will look at a system of p oscillators 
p=32
a=0.6
b=.2
alpha=1.9
A=[a,b,zeros(1,p-3),b]
for i=2:p-1
    for j=1:p
        if i==j 
        A(i,j)=a
        elseif abs(i-j)==1
            A(i,j)=b
        else
            A(i,j)=0
        end
    end
end
A=[A;b,zeros(1,p-3),b,a] 
x0=rand(p,1)
x=x0
x1=[x(1)]
for n=1:1000
    gOFx= ones(p,1)- alpha*x.^2
    x=A*gOFx
    x1=[x1;x(1)]
end
x
plot(1:1001,transpose(x1))
xlabel('n')
ylabel('x_2 (n)')

       