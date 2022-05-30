/*presets and automation*/
//5.28.22 - Need to add more variability...

(
(
~presets = {(
/*tempo*/

t.tempo = 140/60/2;

/*playfx*/
(
Pdef(\pitchdelay1).play(t, quant:4); //PITCH1 (channel8a/channel8b)
Pdef(\pitchdelay2).play(t, quant:4); //PITCH2 (channel8a/channel8b)
//Pdef(\moogcut5).play(t, quant:4); //MOOG
//Pdef(\moogcut6).play(t, quant:4); //MOOG
//Pdef(\moogcut7).play(t, quant:4); //MOOG
);

(
~channel8a.set(
	\maxdelaytime, 0.1, //init
	\delaytime, 0.000791, //delaytime in seconds
	\decaytime, 0.9294234234523452345, //time for echos to decay
	\mul, 1,
	\pitchRatio, 1,
	\pitchDispersion, 0.00091
);
);

~master1.set(\mix, 0.1532342344442, \room, 0.5, \damp, 0.6);
~master2.set(\mix, 0.1532342344442, \room, 0.5, \damp, 0.6);

//Pdef(\pitchdelay1).play(t, quant:4); //PITCH
//Pdef(\pitchdelay).stop(t, quant:4);

(
Pdef(\pitchdelay1, Pbind(
	\type, \set,
	\id, [~channel8a.nodeID, ~channel8b.nodeID, ~channel8c.nodeID, ~channel8d.nodeID],
	\args, #[\pitchRatio],
	\dur, 1/64,
	\pitchRatio, Pstutter(16, Pseq([

		Pseq([1], 32/2),
		Pseries(1, 0.00141, 32/2),
		Pseq([1], 32/2),
	    Pseries(1, -0.0091, 32/2),
		Pseq([1], 32/2),
	], inf)),
)).quant_(4);
);

//Pdef(\pitchdelay2).play(t, quant:4); //DELAY
//Pdef(\pitchdelay2).stop(t, quant:4);
(
Pdef(\pitchdelay2, Pbind(
	\type, \set,
	\id, [~channel8a.nodeID, ~channel8b.nodeID, ~channel8c.nodeID, ~channel8d.nodeID],	\args, #[\delaytime],
	\dur, 1/64,
	\delaytime, Pstutter(16, Pseq([

		Pseries(0.001791, 0.000849, 32/2),
		Pseq([0.0018791], 32/2),
		Pseries(0.003791, 0.0003849, 32/2),
		Pseq([0.008791], 32/2),
	], inf)),
)).quant_(4);
);

//Pdef(\moogcut1).play(t, quant:4); //MOOG C5
//Pdef(\moogcut1).stop(t, quant:4);
(
Pdef(\moogcut5, Pbind(
	\type, \set,
	\id, [~channel5a.nodeID, ~channel5b.nodeID, ~channel5c.nodeID, ~channel5d.nodeID],	\args, #[\moogcut],
	\dur, 1/64/2,
	\moogcut, Pstutter(16, Pseq([
		Pn(Pseries(1000, 290.6875, 64), 1),
		Pseq([20000], 32),
		Pn(Pseries(20000, -290.6875, 64), 1),
		Pseq([1000], 32),
	], inf)),
)).quant_(4);
);

//Pdef(\moogcut1).play(t, quant:4); //MOOG C6
//Pdef(\moogcut1).stop(t, quant:4);
(
Pdef(\moogcut6, Pbind(
	\type, \set,
	\id, [~channel6a.nodeID, ~channel6b.nodeID, ~channel6c.nodeID, ~channel6d.nodeID],	\args, #[\moogcut],
	\dur, 1/64/2,
	\moogcut, Pstutter(16, Pseq([
		Pn(Pseries(1000, 290.6875, 64), 1),
		Pseq([20000], 32),
		Pn(Pseries(20000, -290.6875, 64), 1),
		Pseq([1000], 32),
	], inf)),
)).quant_(4);
);

//Pdef(\moogcut7).play(t, quant:4); //MOOG C7
//Pdef(\moogcut7).stop(t, quant:4);
(
Pdef(\moogcut7, Pbind(
	\type, \set,
	\id, [~channel7a.nodeID, ~channel7b.nodeID, ~channel7c.nodeID, ~channel7d.nodeID],	\args, #[\moogcut],
	\dur, 1/64/2,
	\moogcut, Pstutter(16, Pseq([
		Pn(Pseries(1000, 290.6875, 64), 1),
		Pseq([20000], 32),
		Pn(Pseries(20000, -290.6875, 64), 1),
		Pseq([1000], 32),
	], inf)),
)).quant_(4);
);

//Pdef(\moogcut1).play(t, quant:4); //MOOG C5
//Pdef(\moogcut1).stop(t, quant:4);
(
Pdef(\moogcut1, Pbind(
	\type, \set,
	\id, [~channel7a.nodeID, ~channel7b.nodeID, ~channel7c.nodeID, ~channel7d.nodeID],	\args, #[\moogcut],
	\dur, 1/64/2,
	\moogcut, Pstutter(16, Pseq([
		Pn(Pseries(1000, 290.6875, 64), 1),
		Pseq([20000], 32),
		Pn(Pseries(20000, -290.6875, 64), 1),
		Pseq([1000], 32),
	], inf)),
)).quant_(4);
);
);
};
);
~presets.value();
)