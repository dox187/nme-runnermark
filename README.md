nme5-RunnerMark
==============

Performance demonstration
-------------------------

First goal was to do an NME(5 - ReRelease) port of [esDotDev's RunnerMark][1] for fair comparison of a realistic game scene. 

Minor twists: 
- shows 3 enemies even if it can't reach 58fps,
- runner is rotating, enemies are randomly scaled & flipped,
- for older Android devices you should not target 60fps; my HTC Desire (Nexus One) does a good job with lower targets.

Here are the scores (FPSx10 + ennemies count, **in bold after engine update**):
 - SGS 4 - 3800~4000
 - ZTE Blade 3 - 782
 - Samsung Galaxy Tab 2 7.0 - 1184

Other point of comparison:
 - APK is 1.9Mb

Introducing the TileLayer
-------------------------

Second goal was to create a simple wrapper on NME's Tilesheet which is rather low-level and native-targets orientated. 

 - provides a basic display-list, spritesheet animations, mirroring,
 - includes a Sparrow spritesheet parser, supporting trimming,
 - uses Bitmaps for Flash & HTML5 target rendering (almost complete) instead of the limited, and a bit slow, drawTriangles fallback.

**TileLayer is now in haxelib**: 
- [source (and some doc) on github][2]
- install the library: `haxelib git nme-tilelayer https://github.com/dox187/nme-tilelayer.git master haxelib` in your terminal
- add `<haxelib name="nme-tilelayer" />` in your nmml

HTML5 version
-------------

Try old NME's HTML5 output: http://philippe.elsass.me/lab/RunnerMark/

[1]:https://github.com/esDotDev/RunnerMark
[2]:https://github.com/dox187/nme-tilelayer
