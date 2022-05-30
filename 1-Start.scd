/*server settings*/

//s.options.sampleRate = 48000;
//s = Server.local;
s.options.hardwareBufferSize = 256; //bluetooth
s.recHeaderFormat = "wav";
p = ServerOptions.new;
p.memSize = 8192*2;
s.boot;

/*quick-boot*/

(
~patches.value();
~synthdefs.value();
~switches.value();
~gui.value();
~midi.value();
~buffers.value();
~presets.value();

~kicks.value();
~subs.value();
~hats.value();
~snares.value();
~bass.value();
~synths.value();
~samples.value();
~fx.value();
)

/*record*/

Server.default.record;
Server.default.stopRecording;