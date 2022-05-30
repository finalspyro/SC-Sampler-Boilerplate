///////////////Ugen library 1/////////////////
///////////////Ugen library 1/////////////////
///////////////Ugen library 1/////////////////
///////////////Ugen library 1/////////////////

//LIQUID
(
SynthDef(\liquid, {
	var trig = Impulse.ar(1, 0.5);
	var sig, freq, ffreq, rq, gainEnv, modEnv;
	trig = Trig.ar(trig, SampleDur.ir);
	gainEnv = EnvGen.ar(Env([0, 0, 1, 0], [0.001, \atk.kr(0.001), \rel.kr(0.4)], [0, 4.0, -4.0]).delay(0.003), trig);
	modEnv = EnvGen.ar(Env([0, 0, 1, 0.3, 1, 0], [0.001, TRand.ar(0.04, 0.09, trig).poll, 0.001, 0.03, 0.001], [0.0, 4.0, -4.0, 4.0, -4.0]), trig);
	modEnv = modEnv * PinkNoise.ar(1!2).range(0.1, 1.0).lag(0.1);
	freq = \freq.kr(415.305) + modEnv.linlin(0, 1, 0, \freqEnvAmount.kr(-207.652));
	ffreq = \ffreq.kr(207.652) + modEnv.linlin(0, 1, 0, \ffreqEnvAmount.kr(8000));
	rq = \rq.kr(0.05);
	sig = Formlet.ar(trig, freq, 0.001, TRand.ar(0.1, 0.5, trig));
	sig = BLowPass.ar(sig, ffreq, rq, 1 / rq.sqrt);
	sig = sig * gainEnv * \amp.kr(0.25);
	sig = Splay.ar(sig);
	//sig = CombN.ar(sig, 0.2, 0.2, 4);
	sig = LeakDC.ar(sig);
	//sig = SafetyLimiter.ar(sig);
	Out.ar(\out.kr(0), sig);
}).play;
)

//PHASE
(
SynthDef(\phase, {
	arg out=0, pan=0, amp=0.25, freq=110,
	mRatio=1.5, cRatio=1, widthMod=0.5;
	var sig, saw, sine;
	var width = SinOsc.ar(widthMod!2).range(\widthMin.kr(0.15), \widthMax.kr(0.50).clip(0.001,0.999));
	saw = LFSaw.ar(mRatio * freq, 1).linlin(-1,1, width.neg, 1-width);
	saw = saw.bilin(0, width.neg, 1-width, 0, -0.5, 1);
	sine = (Select.ar(saw>0, [0.5+saw, saw]) * 2pi).sin;
	sig = SinOsc.ar(
		cRatio * freq * [1.001, 1],
		phase: sine * MouseY.kr(0, 7)
	);
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)

(instrument: \phase, midinote: [57,60,64,65,70]).play;

//GABOR
(
SynthDef(\gabor, {
	var trig = \trig.tr;
	var freqEnv = EnvGen.kr(Env([1,2,1], [0.5, 0.01], \lin), trig, doneAction: Done.none);
	var fltEnv = EnvGen.kr(Env([0.0125,1,0.0125], [\fAtk.kr(0.3), \fRel.kr(0.01)], \exp), trig, doneAction: Done.none);
	var gainEnv = EnvGen.kr(Env([0,1,0], [\atk.kr(0.01), \rel.kr(0.3)], \lin), trig, doneAction: Done.none);
	var numPartials = 50;
	var n = (1..numPartials);
	var freqs = \freq.kr(150) * (n + (n * n * 0.05));
	var cutoff, amps, sig;
	cutoff = fltEnv * \fltRange.kr(8000);
	amps = (
		(freqs.log2 - cutoff.log2).squared
		* \slope.kr(-5)
	).dbamp;
	sig = SinOsc.ar(freqs * freqEnv.midiratio, 0, amps).sum * -25.dbamp;
	sig = sig * gainEnv;
	sig = Pan2.ar(sig, \pan.kr(0), \amp.kr(0.25));
	Out.ar(\out.kr(0), sig);
}).add;
)

(
Pdef(\gabor,
	Pbind(
		\instrument, \gabor,
		\atk, 0.1,
		\rel, 0.5,
		// Bandpass Filter sweep
		\slope, -5,
		\fltRange, 8000,
		\fAtk, 0.43,
		\fRel, 0.01,
		\freq, 68,
		\amp, 0.30,
		\pan, 0,
		\out, 0,
	)
).play;
)
Pdef(\gabor).stop;

//METAL
(
{
	var snd, size, dampingFreq, feedback, dry;
	// Input signal: saw sweep from 100 to 1000 Hz
	snd = Saw.ar(XLine.kr(100, 1000, 0.1)) * Env.perc(0.001, 0.2).ar;
	dry = snd;
	snd = Mix(snd); // if input signal is stereo then make it mono

	size = 0.05;
	feedback = 0.9;
	dampingFreq = 16e3;

	snd = snd + LocalIn.ar(4);
	snd = DelayC.ar(snd, 0.5, [0.2, 0.34, 0.36, 0.38] * size - ControlDur.ir);
	snd = snd * feedback;
	snd = LPF.ar(snd, dampingFreq);
	snd = snd * [
		[1, 1, 1, 1],
		[1, -1, 1, -1],
		[1, 1, -1, -1],
		[1, -1, -1, 1],
	].flop / 2;
	snd = snd.sum;
	LocalOut.ar(snd);
	dry + Splay.ar(snd);
}.play(fadeTime: 0);
)

//BASS
(
SynthDef(\bass, {
	var snd, auto, freq, trig;
	freq = \freq.kr(40);
	trig = ToggleFF.ar(Dust.ar(8));
	auto = trig.lagud(0.1, 0.3);
	snd = Saw.ar(freq);
	snd = Splay.ar(snd);
	snd = (snd * 3).fold2;
	snd = RLPF.ar(snd, freq * 10, 0.1);
	snd = (snd * 5).fold2;
	snd = RLPF.ar(snd, freq * 8 * TRand.ar(1, 4, trig), 0.5);
	snd = (snd * 5).fold2;
	snd = MoogFF.ar(snd, auto.linexp(0, 1, 100, 8000), 0);
	snd = snd + DelayC.ar(snd, 0.01, SinOsc.ar(0.5, [0, pi]).range(0, 0.001));
	snd = (snd * 3.dbamp).tanh;
	Out.ar(\out.kr(0), snd);
}).play;
)