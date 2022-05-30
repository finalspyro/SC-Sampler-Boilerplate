/*midi twister-fighter integration*/

(
(
~midi = {(
MIDIClient.sources;
MIDIClient.init;
MIDIIn.connectAll;
);
};
);
~midi.value();
)

MIDIIn.connectAll;
MIDIdef.freeAll;
//Test
(
MIDIdef.cc(\knobs, {
	arg src, chan, num, val;
	src.value;
	~src = src.value.postln; },
ccNum:(0..64),
	chan:0
);
)