/*fx1 - channel8*/

(
(
~fx = {(

////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////

//Pdef(\fx1).play(t, quant:4);
//Pdef(\fx1).stop(t, quant:4);
(
Pdef(\fx1, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1/2,
	\bank, ~a2,
    \amp, 1,
	\atk, 0.001,
	\rate, 1/2,
	\rel, 1.147314182842195,
	\pos, 10000,
)).quant_(4);
);

//Pdef(\fx2).play(t, quant:4);
//Pdef(\fx2).stop(t, quant:4);
(
Pdef(\fx2, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx3).play(t, quant:4);
//Pdef(\fx3).stop(t, quant:4);
(
Pdef(\fx3, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
   	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx4).play(t, quant:4);
//Pdef(\fx4).stop(t, quant:4);
(
Pdef(\fx4, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

////////////////////////////////////////*track2*/////////////////////////////////////////////////
////////////////////////////////////////*track2*/////////////////////////////////////////////////
////////////////////////////////////////*track2*/////////////////////////////////////////////////
////////////////////////////////////////*track2*/////////////////////////////////////////////////

//Pdef(\fx5).play(t, quant:4);
//Pdef(\fx5).stop(t, quant:4);
(
Pdef(\fx5, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx6).play(t, quant:4);
//Pdef(\fx6).stop(t, quant:4);
(
Pdef(\fx6, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx7).play(t, quant:4);
//Pdef(\fx7).stop(t, quant:4);
(
Pdef(\fx7, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx8).play(t, quant:4);
//Pdef(\fx8).stop(t, quant:4);
(
Pdef(\fx8, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

////////////////////////////////////////*track3*/////////////////////////////////////////////////
////////////////////////////////////////*track3*/////////////////////////////////////////////////
////////////////////////////////////////*track3*/////////////////////////////////////////////////
////////////////////////////////////////*track3*/////////////////////////////////////////////////

//Pdef(\fx9).play(t, quant:4);
//Pdef(\fx9).stop(t, quant:4);
(
Pdef(\fx9, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx10).play(t, quant:4);
//Pdef(\fx10).stop(t, quant:4);
(
Pdef(\fx10, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx11).play(t, quant:4);
//Pdef(\fx11).stop(t, quant:4);
(
Pdef(\fx11, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx12).play(t, quant:4);
//Pdef(\fx12).stop(t, quant:4);
(
Pdef(\fx12, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

////////////////////////////////////////*track4*/////////////////////////////////////////////////
////////////////////////////////////////*track4*/////////////////////////////////////////////////
////////////////////////////////////////*track4*/////////////////////////////////////////////////
////////////////////////////////////////*track4*/////////////////////////////////////////////////

//Pdef(\fx13).play(t, quant:4);
//Pdef(\fx13).stop(t, quant:4);
(
Pdef(\fx13, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx14).play(t, quant:4);
//Pdef(\fx14).stop(t, quant:4);
(
Pdef(\fx14, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx15).play(t, quant:4);
//Pdef(\fx15).stop(t, quant:4);
(
Pdef(\s15, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx16).play(t, quant:4);
//Pdef(\fx16).stop(t, quant:4);
(
Pdef(\fx16, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

////////////////////////////////////////*track5*/////////////////////////////////////////////////
////////////////////////////////////////*track5*/////////////////////////////////////////////////
////////////////////////////////////////*track5*/////////////////////////////////////////////////
////////////////////////////////////////*track5*/////////////////////////////////////////////////

//Pdef(\fx17).play(t, quant:4);
//Pdef(\fx17).stop(t, quant:4);
(
Pdef(\fx17, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx18).play(t, quant:4);
//Pdef(\fx18).stop(t, quant:4);
(
Pdef(\s18, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx19).play(t, quant:4);
//Pdef(\fx19).stop(t, quant:4);
(
Pdef(\fx19, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx20).play(t, quant:4);
//Pdef(\fx20).stop(t, quant:4);
(
Pdef(\fx20, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

////////////////////////////////////////*track6*/////////////////////////////////////////////////
////////////////////////////////////////*track6*/////////////////////////////////////////////////
////////////////////////////////////////*track6*/////////////////////////////////////////////////
////////////////////////////////////////*track6*/////////////////////////////////////////////////

//Pdef(\fx21).play(t, quant:4);
//Pdef(\fx21).stop(t, quant:4);
(
Pdef(\fx21, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx22).play(t, quant:4);
//Pdef(\fx22).stop(t, quant:4);
(
Pdef(\fx22, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx23).play(t, quant:4);
//Pdef(\fx23).stop(t, quant:4);
(
Pdef(\fx23, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\fx24).play(t, quant:4);
//Pdef(\fx24).stop(t, quant:4);
(
Pdef(\fx24, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch8d], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);
)};
);
~fx.value();
)