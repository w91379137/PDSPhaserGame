echo 'PhaserGameSample install'

if [ ! -d "$PWD/node_modules" ]; then
    echo '執行 npm install'
    exit
fi

sourceDir=$PWD
cd ../..

if [ ! -d "$PWD/www/assets" ]; then
    echo '執行 ionic serve >> 建立 project/www/assets'
    exit
fi
cd www/assets

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