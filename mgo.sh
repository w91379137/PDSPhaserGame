echo 'PhaserGameSample install'

sourceDir=$(PWD)
cd ../../www/assets

echo 'mkdir PhaserGameSample'
mkdir -p 'PhaserGameSample'

cd PhaserGameSample
targetDir=$(PWD)

echo 'copy index.html'
cp -R $sourceDir/index.html  $targetDir/index.html

echo 'copy main.js'
cp -R $sourceDir/main.js  $targetDir/main.js

echo 'copy phaser.min.js'
mkdir -p 'node_modules/phaser-ce/build'
cp -R $sourceDir/node_modules/phaser-ce/build/phaser.min.js  $targetDir/node_modules/phaser-ce/build/phaser.min.js

echo 'copy assets'
cp -R $sourceDir/assets  $targetDir/assets