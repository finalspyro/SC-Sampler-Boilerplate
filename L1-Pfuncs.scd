///////////////Pfunc library 1/////////////////
///////////////Pfunc library 1/////////////////
///////////////Pfunc library 1/////////////////
///////////////Pfunc library 1/////////////////

//1 sine/cosine pfunc (atk, rate, rel)
((
Pfunc(
a = 0;
y = 0;
{
case
{y > -10} {y = 0.2*co\s((a=a+1)*0.5*pi/12)+0};
}
) + 1).asStream.nextN(100).plot;
)

//2 distance pfunc (atk, rate, rel)
(
(
Pfunc(
a = 10000;
{
var x, y, distance, velocity, pitchRatio, amplitude, noiseNum;
x = a=a+1;
y = 1*sin((a=a+1)*0.05*pi/4)+0;
distance = hypot(x,y);
velocity = 300*(distance);
pitchRatio = (344 - velocity);
amplitude = 100 / distance.squared;
noiseNum = (1*sin((a=a-1)*0.05*pi/4)+0 * pitchRatio * amplitude);
}
) * Pseq([0.1], inf) + 0).min(1).max(-1).asStream.nextN(100000).plot;
)

//2.2 linear geo w/ signal randomization +2 transposition

(
((
Pfunc(
a = 1000;
{
var x, y, distance, velocity, pitchRatio, amplitude, noiseNum;
x = a=a+1;
y = 1*sin((a=a+1)*0.05*pi/4)+0;
distance = hypot(x,y);
velocity = 300*(distance);
pitchRatio = (344 - velocity);
amplitude = 100 / distance.squared;
noiseNum = (1*sin((a=a-1)*0.05*pi/4)+0 * pitchRatio * amplitude);
}
) * Pseq([1, Pshuf([0.990, 0.991, 0.992, 0.993, 0.994, 0.995, 0.996, 0.997, 0.998, 0.999, 1.00, 1.001, 1.002, 1.003,1.004, 1.005, 1.006, 1.007, 1.008, 1.009, 1.01], 16) ].stutter(7), inf)).differentiate + 2
).asStream.nextN(1000).plot
)

//3 bolt pfunc (rate) (change ~a2a alternating vertice)
(
(
Pfunc(
~a2a = 1;
~y2a;
~a1ascending = true;
{
case
{~a2a <= 0}{~a1ascending = true; tan(~a2a=~a2a+0.01) + tan(~a2a=~a2a+0.00001) + (~y2a = (~a2a=~a2a)*sin((~a2a=~a2a+1.5)*(~a2a=~a2a+0.000101)*pi/(~a2a=~a2a+24)))}

{~a2a <= 80}{~a1ascending = false;
tan(~a2a=~a2a-0.01) + tan(~a2a=~a2a-0.00001) + (~y2a = (~a2a=~a2a)*sin((~a2a=~a2a-1.5)*(~a2a=~a2a-0.000101)*pi/(~a2a=~a2a-24)))}

{~a1ascending!=true} {tan(~a2a=~a2a-0.01) + tan(~a2a=~a2a-0.00001) + (~y2a = (~a2a=~a2a)*sin((~a2a=~a2a-1.5)*(~a2a=~a2a-0.000101)*pi/(~a2a=~a2a-24)))}

{~a1ascending!=true} {tan(~a2a=~a2a-0.01) + tan(~a2a=~a2a-0.00001) + (~y2a = (~a2a=~a2a)*sin((~a2a=~a2a-1.5)*(~a2a=~a2a-0.000101)*pi/(~a2a=~a2a-24)))}
})/2/2 * Pseq([1, 2].stutter(32), inf)).asStream.nextN(10000).plot
)

//4 worm pfunc (rate) (add 0.01.. to ~c2a)

((
Pfunc(
~c2a = 1;
~c2y;
~a1ascending = true;
{
case
{~c2a <= 0}{~a1ascending = true; sin(~c2a=~c2a+0.01) + tan(~c2a=~c2a+0.00001) + (~c2y = (~c2a=~c2a) * sin((~c2a=~c2a+1.5) *(~c2a=~c2a+0.000101)*pi/(~c2a=~c2a+24)))}

{~c2a <= 40}{~a1ascending = false; tan(~c2a=~c2a-0.01) + sin(~c2y=~c2a-0.00001) + (~c2y = (~c2a=~c2a) * sin((~c2a=~c2a-1.5) * (~c2a=~c2a-0.000101) * pi/ (~c2a=~c2a-24)))}

{~a1ascending!=true} {sin(~c2a=~c2a-0.01) + tan(~c2a=~c2a-0.00001) + (~c2y = (~c2a=~c2a)*sin((~c2a=~c2a-1.5)*(~c2a=~c2a-0.000101)*pi/(~c2a=~c2a-24)))}

{~a1ascending=true} {sin(~c2a=~c2a-0.01) + tan(~c2a=~c2a-0.00001) + (~c2y = (~c2a=~c2a)*sin((~c2a=~c2a-1.5)*(~c2a=~c2a-0.000101)*pi/(~c2a=~c2a-24)))}

}) * Pseq([2].scramble.stutter(1), inf)).asStream.nextN(1000).plot
)

//5 sine moving c and b w/ min/max pfunc (pos)
(
(
Pfunc(
~s5a = 29;
~s5b = 0;
~s5c = 0;
~s5y = 0;
~s5ascending = true;
{
case
{~s5y > -2000 && ~s5b < 0} {~s5ascending = true; ~s5y = (~s5c=~s5c+1)*sin((~s5a=~s5a+1)*1*pi/12)+(~s5b=~s5b+1) }
{~s5y > -2000 && ~s5b >= 300} {~s5ascending = false; ~s5y = (~s5c=~s5c-1)*sin((~s5a=~s5a+1)*1*pi/12)+(~s5b=~s5b-1) }
{~s5ascending!=true} {~s5y = (~s5c=~s5c-1)*sin((~s5a=~s5a-1)*1*pi/12)+(~s5b=~s5b-1)}
{~s5ascending=true} {~s5y = (~s5c=~s5c+1)*sin((~s5a=~s5a+1)*1*pi/12
)+(~s5b=~s5b+1)};
}
)*200 + Pseq([20000],inf)).asStream.nextN(1200).plot
);

//6 LCM pfunc (rate, atk, pos)
(
(Pfunc(
a=0;
~ascending = true;
{
case
{y > -2; a < 0} {~ascending = true; y = 1*sin((lcm(20, a=a+1))*pi*2)/24+(1)}
{y > -2; a >=800} {~ascending = false; y = 1*sin((lcm(20, a=a-1))*pi)/24+(1)}
{~ascending!=true} {y = 1*sin((lcm(20, a=a-1))*pi)/24-(1)}
{~ascending=true} {y = 1*sin((lcm(20, a=a+1))*pi)/24+(1)}
}
) * Pseq([20, 10, 15], inf)).asStream.nextN(10000).plot;
)

//6 tan pfunc (rate...glitchy)
(
(
Pfunc(
a = 1;
{
case
{a >= 1}{ tan(a=a+0.001) + tan(a=a+0.001) +  (y = (a=a+4)*sin((a=a+1)*(a=a+0.000101)*pi/(a=a+24)))}
{a >= 1}{ tan(a=a+0.001) + tan(a=a+0.001) +  (y = (a=a+4)*sin((a=a-1)*(a=a+0.000101)*pi/(a=a+24)))}
}
) * Pseq([0.02].stutter(128).rotate(2), inf)).max(-2).min(2).asStream.nextN(10000).plot;
)

//7 diamond pfunc (rate, atk, pos... if factored down)
(
(
Pfunc(
a = 1;
{
case
	{a >= 1}{ tan(a=a+0.01) + tan(a=a+0.001) +  (y = (a=a+4)*sin((a=a+1.5)*(a=a+0.000101)*pi/(a=a+24)))}
}
) * Pseq([0.02].stutter(128).rotate(2), inf)).max(-2).min(2).asStream.nextN(10000).plot;
)

//8 abstract glitchy pfunc (rate)
(
(
Pfunc(
a = 1;
{
case
{a >= 1}{ tan(a=a-0.000001) + tan(a=a-0.00001) +  (y = (a=a+20000.2001)*tan((a=a+0.1)*(a=a+59.210002)*pi/(a=a+48)))}
}
) * Pseq([0.02, 0.04, 0.06].stutter(4).rotate(2), inf)).max(0).min(2).asStream.nextN(1000).plot;
)

//9 toothpick pfunc (rate) (rework)
((
Pfunc(
y = 0;
x = 0;
~ascending = true;

{

case

{x<=0} {~ascending = true; (sin((x=x+0.001)**(x=x+0.001))/2**(((x=x+0.001)**(x=x+0.001))-pi/2)/pi).abs}

{x>=1.125} {~ascending = false; (sin((x=x-0.001)**(x=x-0.001))/2**(((x=x-0.001)**(x=x-0.001))-pi/2)/pi).abs}

{~ascending!=true}{(sin((x=x-0.001)**(x=x-0.001))/2**(((x=x-0.001)**(x=x-0.001))-pi/2)/pi).abs}

{~ascending=true}{(sin((x=x+0.001)**(x=x+0.001))/2**(((x=x+0.001)**(x=x+0.001))+pi/2)/pi).abs}

}

)).asStream.nextN(10000).plot;
)

//10 small slope pfunc (rate)
(
((
Pfunc(

	{(sin((1..20)**sin(23*sin(1**sin((1..20)))))).normalize(-8pi, 8pi).collect{|num| num }};

)
)
).asStream.nextN(1).plot;
)

///////////////Pfunc library 2/////////////////
///////////////Pfunc library 2/////////////////
///////////////Pfunc library 2/////////////////
///////////////Pfunc library 2/////////////////

Pfunc(
{
case
{arg x; sin(2*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(3*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(4*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(5*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(6*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(7*sin(2*sin(2*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
{arg x; sin(8*sin(1*sin(1*sin(x))))}.plotGraph(1000, -pi*4, pi*4);
}
)

Quark.gui;