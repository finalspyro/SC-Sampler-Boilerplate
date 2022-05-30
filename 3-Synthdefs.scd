/*synthdefs*/
//5.28.22 - Need to add more ugens

(
(
~synthdefs = {(
//t = TempoClock.new(137/60);

~s = Scale.minor.degrees.midiratio;
~d = Scale.major.degrees.midiratio;

SynthDef.new(\mainbuf, {
	arg amp=1, pan=0, rate=1, pos=0, bank, atk=0.01, rel=1, loop=1, gate=1, fader=1, patch=22;
	var sig,env, z;
	env = EnvGen.kr(Env.perc(atk,rel),gate,doneAction:2);
	sig = PlayBuf.ar(1,bank,BufRateScale.kr(bank)*rate,1,pos,loop)*env;
	sig = Pan2.ar(sig,pan);
	sig = Out.ar(patch, sig * amp * fader);
}).add;

~channel1a = (
	SynthDef(\ch1amix, {
		arg moogcut=21000, gain=1, highcut=22, freesend=0, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch1a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel1a);
);
~channel1b = (
	SynthDef(\ch1bmix, {
		arg moogcut=21000, gain=1, highcut=22, freesend=0, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch1b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel1b);
);
~channel1c = (
	SynthDef(\ch1cmix, {
		arg moogcut=21000, gain=1, highcut=22, freesend=0, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch1c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel1c);
);
~channel1d = (
	SynthDef(\ch1dmix, {
		arg moogcut=21000, gain=1, highcut=22, freesend=0, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch1d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel1d);
);

~channel2a = (
	SynthDef(\ch2amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch2a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel2a);
);
~channel2b = (
	SynthDef(\ch2bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch2b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel2b);
);
~channel2c = (
	SynthDef(\ch2cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch2c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel2c);
);
~channel2d = (
	SynthDef(\ch2dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch2d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel2d);
);

~channel3a = (
	SynthDef(\ch3amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch3a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel3a);
);
~channel3b = (
	SynthDef(\ch3bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch3b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel3b);
);
~channel3c = (
	SynthDef(\ch3cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch3c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel3c);
);
~channel3d = (
	SynthDef(\ch3dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch3d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel3d);
);

~channel4a = (
	SynthDef(\ch4amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch4a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel4a);
);
~channel4b = (
	SynthDef(\ch4bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch4b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel4b);
);
~channel4c = (
	SynthDef(\ch4cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch4c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel4c);
);
~channel4d = (
	SynthDef(\ch4dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch4d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel4d);
);

~channel5a = (
	SynthDef(\ch5amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch5a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel5a);
);
~channel5b = (
	SynthDef(\ch5bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch5b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel5b);
);
~channel5c = (
	SynthDef(\ch5cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch5c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel5c);
);
~channel5d = (
	SynthDef(\ch5dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch5d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel5d);
);

~channel6a = (
	SynthDef(\ch6amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch6a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel6a);
);
~channel6b = (
	SynthDef(\ch6bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch6b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel6b);
);
~channel6c = (
	SynthDef(\ch6cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch6c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel6c);
);
~channel6d = (
	SynthDef(\ch6dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch6d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel6d);
);

~channel7a = (
	SynthDef(\ch7amix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch7a, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel7a);
);
~channel7b = (
	SynthDef(\ch7bmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch7b, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel7b);
);
~channel7c = (
	SynthDef(\ch7cmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch7c, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel7c);
);
~channel7d = (
	SynthDef(\ch7dmix, {
		arg moogcut=21000, gain=0, highcut=22, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch7d, 2);
		sig = MoogFF.ar(sig, moogcut, gain);
		sig = HPF.ar(sig,highcut);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel7d);
);

~channel8a = (
	SynthDef(\ch8amix, {
		arg maxdelaytime=0.1, delaytime=0.5, decaytime=0.2, mul=1, pitchRatio=1, pitchDispersion=1, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch8a, 2);
		sig = AllpassC.ar(sig, maxdelaytime, delaytime, decaytime, mul);
		sig = PitchShift.ar(sig, 0.2, pitchRatio, pitchDispersion);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel8a);
);
~channel8b = (
	SynthDef(\ch8bmix, {
		arg maxdelaytime=0.1, delaytime=0.5, decaytime=0.2, mul=1, pitchRatio=1, pitchDispersion=1, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch8b, 2);
		sig = AllpassC.ar(sig, maxdelaytime, delaytime, decaytime, mul);
		sig = PitchShift.ar(sig, 0.2, pitchRatio, pitchDispersion);
		sig = Out.ar(~patch9a, sig * fader * crossfader);
	}).play(~channel8b);
);
~channel8c = (
	SynthDef(\ch8cmix, {
		arg maxdelaytime=0.1, delaytime=0.5, decaytime=0.2, mul=1, pitchRatio=1, pitchDispersion=1, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch8c, 2);
		sig = AllpassC.ar(sig, maxdelaytime, delaytime, decaytime, mul);
		sig = PitchShift.ar(sig, 0.2, pitchRatio, pitchDispersion);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel8c);
);
~channel8d = (
	SynthDef(\ch8dmix, {
		arg maxdelaytime=0.1, delaytime=0.5, decaytime=0.2, mul=1, pitchRatio=1, pitchDispersion=1, fader=1, crossfader=1;
		var sig;
		sig = In.ar(~patch8d, 2);
		sig = AllpassC.ar(sig, maxdelaytime, delaytime, decaytime, mul);
		sig = PitchShift.ar(sig, 0.2, pitchRatio, pitchDispersion);
		sig = Out.ar(~patch9b, sig * fader * crossfader);
	}).play(~channel8d);
);

~master1 = (
	SynthDef(\ch9amix, {
		arg moogcut=29000, gain=0, highcut=22, masterfader=1, mix=0.33, room=0.5, damp=0.5, fader=1;
		var sig;
		sig = In.ar(~patch9a, 2);
		sig = FreeVerb.ar(sig,mix,room,damp);
		sig = Compander.ar(sig);
		sig = Limiter.ar(sig);
		sig = Out.ar(0, sig * masterfader * fader);
	}).play(~master1);
);
~master2 = (
	SynthDef(\ch9bamix, {
		arg moogcut=29000, gain=0, highcut=22, masterfader=1, mix=0.33, room=0.5, damp=0.5, fader=1;
		var sig;
		sig = In.ar(~patch9b, 2);
		sig = FreeVerb.ar(sig,mix,room,damp);
		sig = Compander.ar(sig);
		sig = Limiter.ar(sig);
		sig = Out.ar(0, sig * masterfader * fader);
	}).play(~master2);
);
)};
);
~synthdefs.value();
)