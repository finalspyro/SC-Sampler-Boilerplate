# SC-Sampler-Boilerplate
This is boilerplate code for a sampler I built using SuperCollider. It is inspired by the Roland SP404.

Steps to initialize:

1. Boot the server. This can be done using the Start.scd file. Just click 'Cmd + Enter' on lines 5-9. If you are not using BlueTooth audio output, you can skip modifying the hardwareBufferSize.
2. Start loading up the functions. I've ordered them 2-8. You'll have to go into each file and just press 'Cmd + Enter' on each function.
3. Load up the pdef functions. These are titled A1-A8. Same thing, just press 'Cmd + Enter' on each function.
4. Now you can load your own samples to the Buffer file. It's pretty easy- just drag files and drop them after the 's,'. You can have 10000+ samples. 
5. To trigger audio to start, use the GUI and click on a button #1-6. The pdefs route to the gui so you can go back and modify the sequencing in files A1-A8 to update the sound in real time.
