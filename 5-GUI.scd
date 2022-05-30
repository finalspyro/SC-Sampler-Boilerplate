/*gui*/
//5.28.22 - Need to add configs for key switches/ MIDI

(
(
~gui = {(
Window.closeAll;
w = Window("gui", Rect(800, 300, 390, 430));
w.view.background_(Color.clear);
w.front;
w.alwaysOnTop_(true);
f = FreqScopeView(w, Rect(0, 0, 390, 240));
f.dbRange_(140);
f.background_(Color.black).waveColors_([Color.white]);
f.active_(true); // turn it on the first time;
w.onClose_({ f.kill }); // must have this
ServerMeterView.new(s, w, 125@0, 2, 2);
x = ControlSpec(0.01, 2000, \exp, 0.1, 220, "Hz");

/*beat counter*/
t = TempoClock.new(137/60);

z = Array.fill(1, { StaticText(w, Rect(325, -40, 100, 100))
    .string_("Beat")
    .align_(\center)
    .stringColor_(Color.white)
    .font_(Font([
        "Helvetica-Bold",
    ].choose, 20))
});

r = {
    inf.do { |i|
        thisThread.randSeed_(1284);
        z.do { |item|
            // setting GUI values is asynchronous, so you must use .defer
            {
				item.string_((((t.beats.floor)%t.beatsPerBar+1)));
				//item.stringColor_(Color.rand);
            }.defer;
        };
        0.1.wait;
    }
}.fork;

/*channel1*/
~spec1 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob1 = EZKnob(w, Rect(00,240,30,30), "", controlSpec:~spec1, labelWidth:0, labelHeight:0, action:({
    ~knob1.value.postln;
	~channel1a.set(\moogcut, ~knob1.value);
	~channel1b.set(\moogcut, ~knob1.value);
	~channel1c.set(\moogcut, ~knob1.value);
	~channel1d.set(\moogcut, ~knob1.value);
	}););
MIDIdef.cc(\knob1, {
arg src, chan;
{~knob1.valueAction_(~spec1.map(src/127))}.defer;
},ccNum:32,
chan:0
);

~spec2 = ControlSpec(0.01, 1, \exp, 0, 1, "gain");
~knob2 = EZKnob(w, Rect(30,240,30,30), "", controlSpec:~spec2, labelWidth:0, labelHeight:0, action:({
    ~knob2.value.postln;
    ~channel1a.set(\gain, ~knob2.value);
	~channel1b.set(\gain, ~knob2.value);
	~channel1c.set(\gain, ~knob2.value);
	~channel1d.set(\gain, ~knob2.value);
   	}););
MIDIdef.cc(\knob2, {
arg src, chan;
{~knob2.valueAction_(~spec2.map(src/127))}.defer;
},ccNum:33,
chan:0
);

~spec3 = ControlSpec(0.01, 100, \exp, 0, 1, "highcut");
~knob3 = EZKnob(w, Rect(60,240,30,30), "", controlSpec:~spec3, labelWidth:0, labelHeight:0, action:({
    ~knob3.value.postln;
	~channel1a.set(\highcut, ~knob3.value);
	~channel1b.set(\highcut, ~knob3.value);
	~channel1c.set(\highcut, ~knob3.value);
	~channel1d.set(\highcut, ~knob3.value);
	}););
MIDIdef.cc(\knob3, {
arg src, chan;
{~knob3.valueAction_(~spec3.map(src/127))}.defer;
},ccNum:34,
chan:0
);

/*channel2*/
~spec4 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob4 = EZKnob(w, Rect(100,240,30,30), "", controlSpec:~spec4, labelWidth:0, labelHeight:0, action:({
    ~knob4.value.postln;
	~channel2a.set(\moogcut, ~knob4.value);
	~channel2b.set(\moogcut, ~knob4.value);
	~channel2c.set(\moogcut, ~knob4.value);
	~channel2d.set(\moogcut, ~knob4.value);
	}););
MIDIdef.cc(\knob4, {
arg src, chan;
{~knob4.valueAction_(~spec4.map(src/127))}.defer;
},ccNum:35,
chan:0
);

~spec5 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob5 = EZKnob(w, Rect(130,240,30,30), "", controlSpec:~spec5, labelWidth:0, labelHeight:0, action:({
    ~knob5.value.postln;
	~channel2a.set(\gain, ~knob5.value);
	~channel2b.set(\gain, ~knob5.value);
	~channel2c.set(\gain, ~knob5.value);
	~channel2d.set(\gain, ~knob5.value);
    }););
MIDIdef.cc(\knob5, {
arg src, chan;
{~knob5.valueAction_(~spec5.map(src/127))}.defer;
},ccNum:36,
chan:0
);

~spec6 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob6 = EZKnob(w, Rect(160,240,30,30), "", controlSpec:~spec6, labelWidth:0, labelHeight:0, action:({
    ~knob6.value.postln;
	~channel2a.set(\highcut, ~knob6.value);
	~channel2b.set(\highcut, ~knob6.value);
	~channel2c.set(\highcut, ~knob6.value);
	~channel2d.set(\highcut, ~knob6.value);
  }););
MIDIdef.cc(\knob6, {
arg src, chan;
{~knob6.valueAction_(~spec6.map(src/127))}.defer;
},ccNum:37,
chan:0
);

/*channel3*/

~spec7 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob7 = EZKnob(w, Rect(200,240,30,30), "", controlSpec:~spec7, labelWidth:0, labelHeight:0, action:({
    ~knob7.value.postln;
	~channel3a.set(\moogcut, ~knob7.value);
	~channel3b.set(\moogcut, ~knob7.value);
	~channel3c.set(\moogcut, ~knob7.value);
	~channel3d.set(\moogcut, ~knob7.value);
}););
MIDIdef.cc(\knob7, {
arg src, chan;
{~knob7.valueAction_(~spec7.map(src/127))}.defer;
},ccNum:38,
chan:0
);

~spec8 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob8 = EZKnob(w, Rect(230,240,30,30), "", controlSpec:~spec8, labelWidth:0, labelHeight:0, action:({
    ~knob8.value.postln;
    ~channel3a.set(\gain, ~knob8.value);
	~channel3b.set(\gain, ~knob8.value);
	~channel3c.set(\gain, ~knob8.value);
	~channel3d.set(\gain, ~knob8.value);
}););
MIDIdef.cc(\knob8, {
arg src, chan;
{~knob8.valueAction_(~spec8.map(src/127))}.defer;
},ccNum:39,
chan:0
);

~spec9 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob9 = EZKnob(w, Rect(260,240,30,30), "", controlSpec:~spec9, labelWidth:0, labelHeight:0, action:({
    ~knob9.value.postln;
	~channel3a.set(\highcut, ~knob9.value);
	~channel3b.set(\highcut, ~knob9.value);
	~channel3c.set(\highcut, ~knob9.value);
	~channel3d.set(\highcut, ~knob9.value);
}););
MIDIdef.cc(\knob9, {
arg src, chan;
{~knob9.valueAction_(~spec9.map(src/127))}.defer;
},ccNum:40,
chan:0
);

/*channel4*/

~spec10 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob10 = EZKnob(w, Rect(300,240,30,30), "", controlSpec:~spec10, labelWidth:0, labelHeight:0, action:({
    ~knob10.value.postln;
	~channel4a.set(\moogcut, ~knob10.value);
	~channel4b.set(\moogcut, ~knob10.value);
	~channel4c.set(\moogcut, ~knob10.value);
	~channel4d.set(\moogcut, ~knob10.value);
}););
MIDIdef.cc(\knob10, {
arg src, chan;
{~knob10.valueAction_(~spec10.map(src/127))}.defer;
},ccNum:41,
chan:0
);

~spec11 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob11 = EZKnob(w, Rect(330,240,30,30), "", controlSpec:~spec11, labelWidth:0, labelHeight:0, action:({
    ~knob11.value.postln;
	~channel4a.set(\gain, ~knob11.value);
	~channel4b.set(\gain, ~knob11.value);
	~channel4c.set(\gain, ~knob11.value);
	~channel4d.set(\gain, ~knob11.value);
}););
MIDIdef.cc(\knob11, {
arg src, chan;
{~knob11.valueAction_(~spec11.map(src/127))}.defer;
},ccNum:42,
chan:0
);

~spec12 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob12 = EZKnob(w, Rect(360,240,30,30), "", controlSpec:~spec12, labelWidth:0, labelHeight:0, action:({
    ~knob12.value.postln;
	~channel4a.set(\highcut, ~knob12.value);
	~channel4b.set(\highcut, ~knob12.value);
	~channel4c.set(\highcut, ~knob12.value);
	~channel4d.set(\highcut, ~knob12.value);
}););
MIDIdef.cc(\knob12, {
arg src, chan;
{~knob12.valueAction_(~spec12.map(src/127))}.defer;
},ccNum:43,
chan:0
);

/*channel5*/

~spec13 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob13 = EZKnob(w, Rect(0,270,30,30), "", controlSpec:~spec13, labelWidth:0, labelHeight:0, action:({
    ~knob13.value.postln;
	~channel5a.set(\moogcut, ~knob13.value);
	~channel5b.set(\moogcut, ~knob13.value);
	~channel5c.set(\moogcut, ~knob13.value);
	~channel5d.set(\moogcut, ~knob13.value);
}););
MIDIdef.cc(\knob13, {
arg src, chan;
{~knob13.valueAction_(~spec13.map(src/127))}.defer;
},ccNum:44,
chan:0
);

~spec14 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob14 = EZKnob(w, Rect(30,270,30,30), "", controlSpec:~spec14, labelWidth:0, labelHeight:0, action:({
    ~knob14.value.postln;
	~channel5a.set(\gain, ~knob14.value);
	~channel5b.set(\gain, ~knob14.value);
	~channel5c.set(\gain, ~knob14.value);
	~channel5d.set(\gain, ~knob14.value);
}););
MIDIdef.cc(\knob14, {
arg src, chan;
{~knob14.valueAction_(~spec14.map(src/127))}.defer;
},ccNum:45,
chan:0
);

~spec15 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob15 = EZKnob(w, Rect(60,270,30,30), "", controlSpec:~spec15, labelWidth:0, labelHeight:0, action:({
    ~knob15.value.postln;
	~channel5a.set(\highcut, ~knob15.value);
	~channel5b.set(\highcut, ~knob15.value);
	~channel5c.set(\highcut, ~knob15.value);
	~channel5d.set(\highcut, ~knob15.value);
}););
MIDIdef.cc(\knob15, {
arg src, chan;
{~knob15.valueAction_(~spec15.map(src/127))}.defer;
},ccNum:46,
chan:0
);

/*channel6*/

~spec16 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob16 = EZKnob(w, Rect(100,270,30,30), "", controlSpec:~spec16, labelWidth:0, labelHeight:0, action:({
    ~knob16.value.postln;
	~channel6a.set(\moogcut, ~knob16.value);
	~channel6b.set(\moogcut, ~knob16.value);
	~channel6c.set(\moogcut, ~knob16.value);
	~channel6d.set(\moogcut, ~knob16.value);
}););
MIDIdef.cc(\knob16, {
arg src, chan;
{~knob16.valueAction_(~spec16.map(src/127))}.defer;
},ccNum:48,
chan:0
);

~spec17 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob17 = EZKnob(w, Rect(130,270,30,30), "", controlSpec:~spec17, labelWidth:0, labelHeight:0, action:({
    ~knob17.value.postln;
	~channel6a.set(\gain, ~knob17.value);
	~channel6b.set(\gain, ~knob17.value);
	~channel6c.set(\gain, ~knob17.value);
	~channel6d.set(\gain, ~knob17.value);
}););
MIDIdef.cc(\knob17, {
arg src, chan;
{~knob17.valueAction_(~spec17.map(src/127))}.defer;
},ccNum:49,
chan:0
);

~spec18 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob18 = EZKnob(w, Rect(160,270,30,30), "", controlSpec:~spec17, labelWidth:0, labelHeight:0, action:({
    ~knob18.value.postln;
	~channel6a.set(\highcut, ~knob18.value);
	~channel6b.set(\highcut, ~knob18.value);
	~channel6c.set(\highcut, ~knob18.value);
	~channel6d.set(\highcut, ~knob18.value);
}););
MIDIdef.cc(\knob18, {
arg src, chan;
{~knob18.valueAction_(~spec18.map(src/127))}.defer;
},ccNum:50,
chan:0
);

/*channel7*/

~spec19 = ControlSpec(20, 22000, \exp, 0, 20000, "moogcut");
~knob19 = EZKnob(w, Rect(200,270,30,30), "", controlSpec:~spec19, labelWidth:0, labelHeight:0, action:({
    ~knob19.value.postln;
	~channel7a.set(\moogcut, ~knob19.value);
	~channel7b.set(\moogcut, ~knob19.value);
	~channel7c.set(\moogcut, ~knob19.value);
	~channel7d.set(\moogcut, ~knob19.value);
}););
MIDIdef.cc(\knob19, {
arg src, chan;
{~knob19.valueAction_(~spec19.map(src/127))}.defer;
},ccNum:51,
chan:0
);

~spec20 = ControlSpec(0.01, 1, \exp, 0, 0.5, "gain");
~knob20 = EZKnob(w, Rect(230,270,30,30), "", controlSpec:~spec20, labelWidth:0, labelHeight:0, action:({
    ~knob20.value.postln;
	~channel7a.set(\gain, ~knob20.value);
	~channel7b.set(\gain, ~knob20.value);
	~channel7c.set(\gain, ~knob20.value);
	~channel7d.set(\gain, ~knob20.value);
}););
MIDIdef.cc(\knob20, {
arg src, chan;
{~knob20.valueAction_(~spec20.map(src/127))}.defer;
},ccNum:52,
chan:0
);

~spec21 = ControlSpec(0.01, 100, \exp, 0, 0.5, "highcut");
~knob21 = EZKnob(w, Rect(260,270,30,30), "", controlSpec:~spec21, labelWidth:0, labelHeight:0, action:({
    ~knob21.value.postln;
	~channel7a.set(\highcut, ~knob21.value);
	~channel7b.set(\highcut, ~knob21.value);
	~channel7c.set(\highcut, ~knob21.value);
	~channel7d.set(\highcut, ~knob21.value);
}););
MIDIdef.cc(\knob21, {
arg src, chan;
{~knob21.valueAction_(~spec21.map(src/127))}.defer;
},ccNum:53,
chan:0
);

/*channel8*/

~spec22 = ControlSpec(0.01, 1, \exp, 0, 0.5, "pitchshift");
~knob22 = EZKnob(w, Rect(300,270,30,30), "", controlSpec:~spec22, labelWidth:0, labelHeight:0, action:({
    ~knob22.value.postln;
	~channel8a.set(\maxdelaytime, ~knob22.value);
	~channel8b.set(\maxdelaytime, ~knob22.value);
	~channel8c.set(\maxdelaytime, ~knob22.value);
	~channel8d.set(\maxdelaytime, ~knob22.value);
}););
MIDIdef.cc(\knob22, {
arg src, chan;
{~knob22.valueAction_(~spec22.map(src/127))}.defer;
},ccNum:54,
chan:0
);

~spec23 = ControlSpec(0.01, 5, \exp, 0, 0.5, "pitchshift");
~knob23 = EZKnob(w, Rect(330,270,30,30), "", controlSpec:~spec23, labelWidth:0, labelHeight:0, action:({
    ~knob23.value.postln;
	~channel8a.set(\delaytime, ~knob23.value);
	~channel8b.set(\delaytime, ~knob23.value);
	~channel8c.set(\delaytime, ~knob23.value);
	~channel8d.set(\delaytime, ~knob23.value);
}););
MIDIdef.cc(\knob23, {
arg src, chan;
{~knob23.valueAction_(~spec23.map(src/127))}.defer;
},ccNum:55,
chan:0
);

~spec24 = ControlSpec(0.01, 1, \exp, 0, 0.5, "pitchshift");
~knob24 = EZKnob(w, Rect(360,270,30,30), "", controlSpec:~spec24, labelWidth:0, labelHeight:0, action:({
    ~knob24.value.postln;
	~channel8a.set(\pitchDispersion, ~knob24.value);
	~channel8b.set(\pitchDispersion, ~knob24.value);
	~channel8c.set(\pitchDispersion, ~knob24.value);
	~channel8d.set(\pitchDispersion, ~knob24.value);
}););
MIDIdef.cc(\knob24, {
arg src, chan;
{~knob24.valueAction_(~spec24.map(src/127))}.defer;
},ccNum:56,
chan:0
);

//GUI ONLY
~knob25 = Knob(w,Rect(0,300,30,30))
.background_(Color(1, 1, 1))
.action_({
	arg obj;
	var cf;
    cf = obj.value.linlin(0, 1, 0, 4).postln;
	~channel8a.set(\pitchRatio, cf.value);
	~channel8b.set(\pitchRatio, cf.value);
	~channel8c.set(\pitchRatio, cf.value);
	~channel8d.set(\pitchRatio, cf.value);
	});

/*master*/

~spec26 = ControlSpec(0.00001, 1, \exp, 0, 1, "master-vol");
~knob26 = EZKnob(w, Rect(30,300,30,30), "", controlSpec:~spec26, labelWidth:0, labelHeight:0, action:({
    ~knob26.value.postln;
	~master1.set(\masterfader, ~knob26.value);
	~master2.set(\masterfader, ~knob26.value);
}););
MIDIdef.cc(\knob26, {
arg src, chan;
{~knob26.valueAction_(~spec26.map(src/127))}.defer;
},ccNum:57,
chan:0
);

~spec27 = ControlSpec(0.00001, 1, \exp, 0, 0.1532342344442, "mix");
~knob27 = EZKnob(w, Rect(60,300,30,30), "", controlSpec:~spec27, labelWidth:0, labelHeight:0, action:({
    ~knob27.value.postln;
	~master1.set(\mix, ~knob27.value);
	~master2.set(\mix, ~knob27.value);
}););
MIDIdef.cc(\knob27, {
arg src, chan;
{~knob27.valueAction_(~spec27.map(src/127))}.defer;
},ccNum:58,
chan:0
);

	~spec28 = ControlSpec(0.00001, 1, 'lin', 0, 0.5, "room");
~knob28 = EZKnob(w, Rect(100,300,30,30), "", controlSpec:~spec28, labelWidth:0, labelHeight:0, action:({
    ~knob28.value.postln;
	~master1.set(\room, ~knob28.value);
	~master2.set(\room, ~knob28.value);
}););
MIDIdef.cc(\knob28, {
arg src, chan;
{~knob28.valueAction_(~spec28.map(src/127))}.defer;
},ccNum:59,
chan:0
);

~knob29 = Knob(w,Rect(130,300,30,30))
.background_(Color(1, 1, 1))
.action_({
	arg obj;
	var cf;
    cf = obj.value.linlin(0, 1, 0.1, 5).postln;
	~master1.set(\damp, cf.value);
	~master2.set(\damp, cf.value);
	});
~knob30 = Knob(w,Rect(160,300,30,30))
.background_(Color(1, 1, 1))
.action_({
	arg obj;
	var cf;
    cf = obj.value.linlin(0, 1, 0.1, 20000).postln;
	~master1.set(\moogcut, cf.value);
	~master2.set(\moogcut, cf.value);

	});
q.value;

/*tracks1-6*/

~button1 = Button(w, Rect(202, 302, 26, 26))
        .states_([
	["1", Color.black, Color.red(0.8, 0.2)],
    ["1", Color.black, Color.red(0.8, 0.5)],
        ])
        .action_({
	               arg butt1;
     if (~button1.value == 1) {~button2.value = 0}{};
	 if (~button1.value == 1) {~button3.value = 0}{};
     if (~button1.value == 1) {~button4.value = 0}{};
     if (~button1.value == 1) {~button5.value = 0}{};
     if (~button1.value == 1) {~button6.value = 0}{};
     ~a.value(); //track1
});
~button2 = Button(w, Rect(232, 302, 26, 26))
        .states_([
	["2", Color.black, Color.yellow(0.8, 0.2)],
	["2", Color.black, Color.yellow(0.8, 0.5)],
        ])
        .action_({ arg butt2;
	if (~button2.value == 1, {~button1.value = 0});
	if (~button2.value == 1, {~button3.value = 0});
	if (~button2.value == 1, {~button4.value = 0});
	if (~button2.value == 1, {~button5.value = 0});
	if (~button2.value == 1, {~button6.value = 0});
	~b.value(); //track2
});
~button3 = Button(w, Rect(262, 302, 26, 26))
        .states_([
            ["3", Color.black, Color.new255(200, 140, 0, 100),],
	   ["3", Color.black, Color.new255(200, 140, 0, 160),],
        ])
        .action_({ arg butt3;
	if (~button3.value == 1, {~button1.value = 0});
	if (~button3.value == 1, {~button2.value = 0});
	if (~button3.value == 1, {~button4.value = 0});
	if (~button3.value == 1, {~button5.value = 0});
	if (~button3.value == 1, {~button6.value = 0});
	~c.value(); //track3
});
~button4 = Button(w, Rect(302, 302, 26, 26))
        .states_([
            ["4", Color.black, Color.new255(0, 120, 0, 100),],
	["4", Color.black, Color.new255(0, 120, 0, 160),],
        ])
        .action_({ arg butt4;
    if (~button4.value == 1, {~button1.value = 0});
	if (~button4.value == 1, {~button2.value = 0});
	if (~button4.value == 1, {~button3.value = 0});
	if (~button4.value == 1, {~button5.value = 0});
	if (~button4.value == 1, {~button6.value = 0});
	~d.value(); //track4

});
~button5 = Button(w, Rect(332, 302, 26, 26))
        .states_([
	["5", Color.black, Color.blue(0.8, 0.2),
],
	["5", Color.black, Color.blue(0.8, 0.5),
],
        ])
        .action_({ arg butt5;
    if (~button5.value == 1, {~button1.value = 0});
	if (~button5.value == 1, {~button2.value = 0});
	if (~button5.value == 1, {~button3.value = 0});
	if (~button5.value == 1, {~button4.value = 0});
	if (~button5.value == 1, {~button6.value = 0});
	~e.value(); //track5

});
~button6 = Button(w, Rect(362, 302, 26, 26))
        .states_([
	["6", Color.black, Color.magenta(0.8, 0.2)],
		["6", Color.black, Color.magenta(0.8, 0.5)],
        ])
        .action_({ arg butt6;
    if (~button6.value == 1, {~button1.value = 0});
	if (~button6.value == 1, {~button2.value = 0});
	if (~button6.value == 1, {~button3.value = 0});
	if (~button6.value == 1, {~button4.value = 0});
	if (~button6.value == 1, {~button5.value = 0});
	~f.value(); //track6
});

/*amplitude multislider*/

n=9;
~multislider1 = MultiSliderView(w,Rect(0,330,190,100));
~multislider1.value=Array.fill(n,  {|v| v*0});
~multislider1.isFilled_(true); // width in pixels of each stick
~multislider1.indexThumbSize_(20);
~multislider1.action = {

	arg q;
	var cf;
	cf = q.value.linlin(0, 1, 0, 1);

	~channel1a.set(\fader, cf.value[0]);
    ~channel1b.set(\fader, cf.value[0]);
	~channel1c.set(\fader, cf.value[0]);
    ~channel1d.set(\fader, cf.value[0]);

	~channel2a.set(\fader, cf.value[1]);
	~channel2b.set(\fader, cf.value[1]);
	~channel2c.set(\fader, cf.value[1]);
	~channel2d.set(\fader, cf.value[1]);

	~channel3a.set(\fader, cf.value[2]);
	~channel3b.set(\fader, cf.value[2]);
	~channel3c.set(\fader, cf.value[2]);
	~channel3d.set(\fader, cf.value[2]);

	~channel4a.set(\fader, cf.value[3]);
	~channel4b.set(\fader, cf.value[3]);
	~channel4c.set(\fader, cf.value[3]);
	~channel4d.set(\fader, cf.value[3]);

	~channel5a.set(\fader, cf.value[4]);
	~channel5b.set(\fader, cf.value[4]);
	~channel5c.set(\fader, cf.value[4]);
	~channel5d.set(\fader, cf.value[4]);

	~channel6a.set(\fader, cf.value[5]);
	~channel6b.set(\fader, cf.value[5]);
	~channel6c.set(\fader, cf.value[5]);
	~channel6d.set(\fader, cf.value[5]);

	~channel7a.set(\fader, cf.value[6]);
	~channel7b.set(\fader, cf.value[6]);
	~channel7c.set(\fader, cf.value[6]);
	~channel7d.set(\fader, cf.value[6]);

	~channel8a.set(\fader, cf.value[7]);
	~channel8b.set(\fader, cf.value[7]);
	~channel8c.set(\fader, cf.value[7]);
	~channel8d.set(\fader, cf.value[7]);

	~master1.set(\fader, cf.value[8]);
	~master2.set(\fader, cf.value[8]);

};

n=9;
~multislider2 = MultiSliderView(w,Rect(200,330,190,100));
~multislider2.value=Array.fill(n,  {|v| v*0});
~multislider2.isFilled_(false); // width in pixels of each stick
~multislider2.indexThumbSize_(20);
//~m2.value_(Array.fill(~size, {0.3}));
~multislider2.action = {
	arg q;
	var cf;
	var cf2;
	cf = q.value.linlin(0, 1, 0, 1);
	cf2 = 1 - q.value.linlin(0,1,0,1);

	~channel1a.set(\crossfader, cf.value[0]);
	~channel1b.set(\crossfader, cf2.value[0]);
	~channel1c.set(\crossfader, cf.value[0]);
	~channel1d.set(\crossfader, cf2.value[0]);

	~channel2a.set(\crossfader, cf.value[1]);
	~channel2b.set(\crossfader, cf2.value[1]);
	~channel2c.set(\crossfader, cf.value[1]);
	~channel2d.set(\crossfader, cf2.value[1]);

	~channel3a.set(\crossfader, cf.value[2]);
	~channel3b.set(\crossfader, cf2.value[2]);
	~channel3c.set(\crossfader, cf.value[2]);
	~channel3d.set(\crossfader, cf2.value[2]);

	~channel4a.set(\crossfader, cf.value[3]);
	~channel4b.set(\crossfader, cf2.value[3]);
	~channel4c.set(\crossfader, cf.value[3]);
	~channel4d.set(\crossfader, cf2.value[3]);

	~channel5a.set(\crossfader, cf.value[4]);
	~channel5b.set(\crossfader, cf2.value[4]);
	~channel5c.set(\crossfader, cf.value[4]);
	~channel5d.set(\crossfader, cf2.value[4]);

	~channel6a.set(\crossfader, cf.value[5]);
	~channel6b.set(\crossfader, cf2.value[5]);
	~channel6c.set(\crossfader, cf.value[5]);
	~channel6d.set(\crossfader, cf2.value[5]);

	~channel7a.set(\crossfader, cf.value[6]);
	~channel7b.set(\crossfader, cf2.value[6]);
	~channel7c.set(\crossfader, cf.value[6]);
	~channel7d.set(\crossfader, cf2.value[6]);

	~channel8a.set(\crossfader, cf.value[7]);
	~channel8b.set(\crossfader, cf2.value[7]);
	~channel8c.set(\crossfader, cf.value[7]);
	~channel8d.set(\crossfader, cf2.value[7]);

	~master1.set(\masterfader, cf.value[8]);
	~master2.set(\masterfader, cf2.value[8]);

};
);
};
);
~gui.value();
)