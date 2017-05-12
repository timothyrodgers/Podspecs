The CocoaPod Podspec
=====

If one doesn't exist, create a private podspecs repo on github, e.g. `timothyrodgers/podspecs.git`.

Populate the podspecs repo just like BCOVSpecs on github - rename *.podspec as *-tim.podspec. For example:

	podspecs/Brightcove-Player-SDK-IMA-tim/2.3.4/Brightcove-Player-SDK-tim.podspec

Correct the `s.name` file in the `*-tim.podspec`. The `s.name` must match the podspec file basename.

Correct the `s.source` to reference the private repo, e.g. change `github.com/brightcove` to `github.com/timothyrodgers`

Correct any `s.dependency` which might also use a private pod (a *-tim pod).


The Test App Podfile
=====
Add this at the top of the test project Podfile:

```
source 'https://github.com/timothyrodgers/podspecs.git'
```

Change the pod names from `Brightcove-Player-Whatever` to `Brightcove-Player-Whatever-tim`, e.g.

```
target 'BCOVIMAVMAPVideoPlayer' do
	pod 'Brightcove-Player-SDK-tim/dynamic'
	pod 'Brightcove-Player-SDK-IMA-tim'
end
```

The CocoaPod
=====

Create a CocoaPod repo, e.g. `brightcove-player-sdk-ios-ima.git`. Follow the instructions on github for populating the repo, quoted here:

**…or create a new repository on the command line**
```
echo "# brightcove-player-sdk-ios" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:timothyrodgers/brightcove-player-sdk-ios.git
git push -u origin master
```

Build the CocoaPod, e.g. `$ src/ima/Tools/build.sh`.

Copy the artifacts over the earlier clone.

Commit, tag and push the CocoaPod just like in the release checklist:

```
git status
git add --all
git commit -a -m "Add files for v2.3.4"
git tag -a v2.3.4 -m "Release v2.3.4"
git push origin master --tags
```

