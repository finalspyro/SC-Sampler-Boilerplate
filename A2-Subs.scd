/*subs - channel2*/

(
(
~subs = {(

////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////

//Pdef(\b1).play(t, quant:4);
//Pdef(\b1).stop(t, quant:4);
(
Pdef(\b1, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 2,
	\bank, ~a3,
    \amp, 1,
	\atk, 1,
	\rate, Pseq([
				Pseq([0.2], 16),
				Pseq([0.8], 8),
			    Pseq([1.2], 4),
			], inf)*2,
	\rel, 1.3147314182842195,
	\pos, 0,
)).quant_(4);
);

//Pdef(\b2).play(t, quant:4);
//Pdef(\b2).stop(t, quant:4);
(
Pdef(\b2, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b3).play(t, quant:4);
//Pdef(\b3).stop(t, quant:4);
(
Pdef(\b3, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
   	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b4).play(t, quant:4);
//Pdef(\b4).stop(t, quant:4);
(
Pdef(\b4, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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

//Pdef(\b5).play(t, quant:4);
//Pdef(\b5).stop(t, quant:4);
(
Pdef(\b5, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b6).play(t, quant:4);
//Pdef(\b6).stop(t, quant:4);
(
Pdef(\b6, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b7).play(t, quant:4);
//Pdef(\b7).stop(t, quant:4);
(
Pdef(\b7, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b8).play(t, quant:4);
//Pdef(\b8).stop(t, quant:4);
(
Pdef(\b8, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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

//Pdef(\b9).play(t, quant:4);
//Pdef(\b9).stop(t, quant:4);
(
Pdef(\b9, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b10).play(t, quant:4);
//Pdef(\b10).stop(t, quant:4);
(
Pdef(\b10, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b11).play(t, quant:4);
//Pdef(\b11).stop(t, quant:4);
(
Pdef(\b11, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b12).play(t, quant:4);
//Pdef(\b12).stop(t, quant:4);
(
Pdef(\b12, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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

//Pdef(\b13).play(t, quant:4);
//Pdef(\b13).stop(t, quant:4);
(
Pdef(\b13, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b14).play(t, quant:4);
//Pdef(\b14).stop(t, quant:4);
(
Pdef(\b14, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b15).play(t, quant:4);
//Pdef(\b15).stop(t, quant:4);
(
Pdef(\b15, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b16).play(t, quant:4);
//Pdef(\b16).stop(t, quant:4);
(
Pdef(\b16, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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

//Pdef(\b17).play(t, quant:4);
//Pdef(\b17).stop(t, quant:4);
(
Pdef(\b17, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b18).play(t, quant:4);
//Pdef(\b18).stop(t, quant:4);
(
Pdef(\b18, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b19).play(t, quant:4);
//Pdef(\b19).stop(t, quant:4);
(
Pdef(\b19, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b20).play(t, quant:4);
//Pdef(\b20).stop(t, quant:4);
(
Pdef(\a20, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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

//Pdef(\b21).play(t, quant:4);
//Pdef(\b21).stop(t, quant:4);
(
Pdef(\b21, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b22).play(t, quant:4);
//Pdef(\b22).stop(t, quant:4);
(
Pdef(\b22, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b23).play(t, quant:4);
//Pdef(\b23).stop(t, quant:4);
(
Pdef(\b23, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\b24).play(t, quant:4);
//Pdef(\b24).stop(t, quant:4);
(
Pdef(\b24, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch2d], inf),
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
~subs.value();
)