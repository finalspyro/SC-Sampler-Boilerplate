/*patches*/

(
(
~patches = {(
~sources = Group.head;
~mixer = Group.tail;

~patch1a = Bus.audio(s, 2);
~patch1b = Bus.audio(s, 2);
~patch1c = Bus.audio(s, 2);
~patch1d = Bus.audio(s, 2);

~patch2a = Bus.audio(s, 2);
~patch2b = Bus.audio(s, 2);
~patch2c = Bus.audio(s, 2);
~patch2d = Bus.audio(s, 2);

~patch3a = Bus.audio(s, 2);
~patch3b = Bus.audio(s, 2);
~patch3c = Bus.audio(s, 2);
~patch3d = Bus.audio(s, 2);

~patch4a = Bus.audio(s, 2);
~patch4b = Bus.audio(s, 2);
~patch4c = Bus.audio(s, 2);
~patch4d = Bus.audio(s, 2);

~patch5a = Bus.audio(s, 2);
~patch5b = Bus.audio(s, 2);
~patch5c = Bus.audio(s, 2);
~patch5d = Bus.audio(s, 2);

~patch6a = Bus.audio(s, 2);
~patch6b = Bus.audio(s, 2);
~patch6c = Bus.audio(s, 2);
~patch6d = Bus.audio(s, 2);

~patch7a = Bus.audio(s, 2);
~patch7b = Bus.audio(s, 2);
~patch7c = Bus.audio(s, 2);
~patch7d = Bus.audio(s, 2);

~patch8a = Bus.audio(s, 2);
~patch8b = Bus.audio(s, 2);
~patch8c = Bus.audio(s, 2);
~patch8d = Bus.audio(s, 2);

~patch9a = Bus.audio(s, 2);
~patch9b = Bus.audio(s, 2);

~channel1a = Group.tail(~mixer);
~channel1b = Group.tail(~mixer);
~channel1c = Group.tail(~mixer);
~channel1d = Group.tail(~mixer);

~channel2a = Group.tail(~mixer);
~channel2b = Group.tail(~mixer);
~channel2c = Group.tail(~mixer);
~channel2d = Group.tail(~mixer);

~channel3a = Group.tail(~mixer);
~channel3b = Group.tail(~mixer);
~channel3c = Group.tail(~mixer);
~channel3d = Group.tail(~mixer);

~channel4a = Group.tail(~mixer);
~channel4b = Group.tail(~mixer);
~channel4c = Group.tail(~mixer);
~channel4d = Group.tail(~mixer);

~channel5a = Group.tail(~mixer);
~channel5b = Group.tail(~mixer);
~channel5c = Group.tail(~mixer);
~channel5d = Group.tail(~mixer);

~channel6a = Group.tail(~mixer);
~channel6b = Group.tail(~mixer);
~channel6c = Group.tail(~mixer);
~channel6d = Group.tail(~mixer);

~channel7a = Group.tail(~mixer);
~channel7b = Group.tail(~mixer);
~channel7c = Group.tail(~mixer);
~channel7d = Group.tail(~mixer);

~channel8a = Group.tail(~mixer);
~channel8b = Group.tail(~mixer);
~channel8c = Group.tail(~mixer);
~channel8d = Group.tail(~mixer);

~master1 = Group.tail(~mixer);
~master2 = Group.tail(~mixer);
)};
);
~patches.value();
)