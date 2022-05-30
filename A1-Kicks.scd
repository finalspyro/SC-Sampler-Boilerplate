/*kicks - channel1*/

(
(
~kicks = {(

////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////
////////////////////////////////////////*track1*/////////////////////////////////////////////////

//Pdef(\a1).play(t, quant:4);
//Pdef(\a1).stop(t, quant:4);
(
Pdef(\a1, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1/4,
	\bank, Pseq([~a2].stutter(4), inf),
    \amp, 1,
	\atk, 0.001,
	\rate, Pseq([

			    Pseq([1], 4),
			], inf),
	\rel, 1.13147314182842195,
	\pos, 0,
)).quant_(4);
);

//Pdef(\a2).play(t, quant:4);
//Pdef(\a2).stop(t, quant:4);
(
Pdef(\a2, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a3).play(t, quant:4);
//Pdef(\a3).stop(t, quant:4);
(
Pdef(\a3, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
   	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a4).play(t, quant:4);
//Pdef(\a4).stop(t, quant:4);
(
Pdef(\a4, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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

//Pdef(\a5).play(t, quant:4);
//Pdef(\a5).stop(t, quant:4);
(
Pdef(\a5, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a6).play(t, quant:4);
//Pdef(\a6).stop(t, quant:4);
(
Pdef(\a6, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a7).play(t, quant:4);
//Pdef(\a7).stop(t, quant:4);
(
Pdef(\a7, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a8).play(t, quant:4);
//Pdef(\a8).stop(t, quant:4);
(
Pdef(\a8, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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

//Pdef(\a9).play(t, quant:4);
//Pdef(\a9).stop(t, quant:4);
(
Pdef(\a9, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a10).play(t, quant:4);
//Pdef(\a10).stop(t, quant:4);
(
Pdef(\a10, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a11).play(t, quant:4);
//Pdef(\a11).stop(t, quant:4);
(
Pdef(\a11, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a12).play(t, quant:4);
//Pdef(\a12).stop(t, quant:4);
(
Pdef(\a12, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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

//Pdef(\a13).play(t, quant:4);
//Pdef(\a13).stop(t, quant:4);
(
Pdef(\a13, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a14).play(t, quant:4);
//Pdef(\a14).stop(t, quant:4);
(
Pdef(\a14, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a15).play(t, quant:4);
//Pdef(\a15).stop(t, quant:4);
(
Pdef(\a15, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a16).play(t, quant:4);
//Pdef(\a16).stop(t, quant:4);
(
Pdef(\a16, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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

//Pdef(\a17).play(t, quant:4);
//Pdef(\a17).stop(t, quant:4);
(
Pdef(\a17, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a18).play(t, quant:4);
//Pdef(\a18).stop(t, quant:4);
(
Pdef(\a18, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a19).play(t, quant:4);
//Pdef(\a19).stop(t, quant:4);
(
Pdef(\a19, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(a20).play(t, quant:4);
//Pdef(\a20).stop(t, quant:4);
(
Pdef(\a20, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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

//Pdef(\a21).play(t, quant:4);
//Pdef(\a21).stop(t, quant:4);
(
Pdef(\a21, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1a], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a22).play(t, quant:4);
//Pdef(\a22).stop(t, quant:4);
(
Pdef(\a22, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1b], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a23).play(t, quant:4);
//Pdef(\a23).stop(t, quant:4);
(
Pdef(\a23, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1c], inf),
	\dur, 1,
	\bank, ~a1,
    \amp, 1,
	\atk, 1,
	\rate, 1,
	\rel, 0.47314182842195,
	\pos, 30,
)).quant_(4);
);

//Pdef(\a24).play(t, quant:4);
//Pdef(\a24).stop(t, quant:4);
(
Pdef(\a24, Pbind(
	\instrument, \mainbuf, \group, ~sources,
	\patch, Pseq([~patch1d], inf),
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
~kicks.value();
)