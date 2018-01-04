

// var Phaser = require('phaser');

var world_width = 640;
var world_height = 640;

var game = new Phaser.Game(
    world_width, 
    world_height, 
    Phaser.AUTO, 
    "placeholder", 
    {preload: preload, create: create, update: update}
);

var ball;

function preload() {

    game.scale.scaleMode = Phaser.ScaleManager.SHOW_ALL;
    game.scale.pageAlignHorizontally = true;
    game.scale.pageAlignVertically = true;
    game.stage.backgroundColor = '#eeeeee';

    game.load.image('ball', 'assets/img/ball.jpg');

    game.physics.startSystem(Phaser.Physics.ARCADE);
    game.physics.arcade.gravity.x = 1000;
    game.physics.arcade.gravity.y = 1000;
}

function create() {

    ball = game.add.sprite(0, 60, 'ball');
    ball.physicsBodyType = Phaser.Physics.ARCADE;
    
    game.physics.enable(ball); //必須要先設定才能有以下屬性
    
    ball.enableBody = true;
    ball.body.collideWorldBounds = true;
    ball.body.bounce.setTo(1);

}

function update() {

}

function handleRemoteImagesOnJSFiddle() {
    
}