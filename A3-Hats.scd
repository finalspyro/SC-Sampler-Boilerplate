/*hats - channel3*/

(
(
~hats = {(

////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////

//Pdef(\c1).play(t, quant:4);
//Pdef(\c1).stop(t, quant:4);
(
Pdef(\c1, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, Pseq([~a2, ~a1, ~a3].stutter(3), inf),
    \amp, 1,
	\atk, 0.1,
	\rate, Pseq([
				Pseq([0.2], 16),
				Pseq([0.8], 8),
			    Pseq([1.2], 4),
			], inf)*2,
	\rel, 2.43147314182842195,
	\pos, 100,
)).quant_(4);
);

//Pdef(\c2).play(t, quant:4);
//Pdef(\c2).stop(t, quant:4);
(
Pdef(\c2, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c3).play(t, quant:4);
//Pdef(\c3).stop(t, quant:4);
(
Pdef(\c3, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
   	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c4).play(t, quant:4);
//Pdef(\c4).stop(t, quant:4);
(
Pdef(\c4, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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

//Pdef(\c5).play(t, quant:4);
//Pdef(\c5).stop(t, quant:4);
(
Pdef(\c5, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c6).play(t, quant:4);
//Pdef(\c6).stop(t, quant:4);
(
Pdef(\c6, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c7).play(t, quant:4);
//Pdef(\c7).stop(t, quant:4);
(
Pdef(\c7, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c8).play(t, quant:4);
//Pdef(\c8).stop(t, quant:4);
(
Pdef(\c8, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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

//Pdef(\c9).play(t, quant:4);
//Pdef(\c9).stop(t, quant:4);
(
Pdef(\c9, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c10).play(t, quant:4);
//Pdef(\c10).stop(t, quant:4);
(
Pdef(\c10, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c11).play(t, quant:4);
//Pdef(\c11).stop(t, quant:4);
(
Pdef(\c11, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c12).play(t, quant:4);
//Pdef(\c12).stop(t, quant:4);
(
Pdef(\c12, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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

//Pdef(\c13).play(t, quant:4);
//Pdef(\c13).stop(t, quant:4);
(
Pdef(\c13, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c14).play(t, quant:4);
//Pdef(\c14).stop(t, quant:4);
(
Pdef(\c14, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c15).play(t, quant:4);
//Pdef(\c15).stop(t, quant:4);
(
Pdef(\c15, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c16).play(t, quant:4);
//Pdef(\c16).stop(t, quant:4);
(
Pdef(\c16, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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

//Pdef(\c17).play(t, quant:4);
//Pdef(\c17).stop(t, quant:4);
(
Pdef(\c17, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c18).play(t, quant:4);
//Pdef(\c18).stop(t, quant:4);
(
Pdef(\c18, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c19).play(t, quant:4);
//Pdef(\c19).stop(t, quant:4);
(
Pdef(\c19, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c20).play(t, quant:4);
//Pdef(\c20).stop(t, quant:4);
(
Pdef(\c20, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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

//Pdef(\c21).play(t, quant:4);
//Pdef(\c21).stop(t, quant:4);
(
Pdef(\c21, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c22).play(t, quant:4);
//Pdef(\c22).stop(t, quant:4);
(
Pdef(\c22, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c23).play(t, quant:4);
//Pdef(\c23).stop(t, quant:4);
(
Pdef(\c23, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\c24).play(t, quant:4);
//Pdef(\c24).stop(t, quant:4);
(
Pdef(\c24, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch3d], inf),
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
~hats.value();
)