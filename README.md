# Pong-Game
Simple Pong Game (Made with lua and love2d)


https://github.com/user-attachments/assets/8b7ff584-b8e1-475a-8b1c-e8bdd0964d16

A classic Pong game built with Lua and the LÖVE2D framework.
Table of Contents

    Features
    Controls
    How to Play
    Installation
    Controller Support
    Game Mechanics
    Contributing
    License

Features

    Classic Pong gameplay.
    Two-player local multiplayer.
    Simple and intuitive controls.
    Controller support (planned).
    Accurate AABB collision detection.

Controls
Keyboard

    Start Game: Enter
    Player 1:
        Move Up: W
        Move Down: S
    Player 2:
        Move Up: Up Arrow
        Move Down: Down Arrow

Controller (Planned)

Details for controller button mappings will be provided once implemented.
How to Play

    Launch the game.
    Press Enter to start a new game.
    Player 1 uses W and S to control their paddle.
    Player 2 uses Up Arrow and Down Arrow to control their paddle.
    The first player to reach a set score (e.g., 7 points) wins the round.

Installation

To run this game, you'll need the LÖVE2D framework installed on your system.

    Download LÖVE2D:
    Visit the official LÖVE2D website: https://love2d.org/ and download the appropriate version for your operating system. Follow their installation instructions.

    Clone the Repository (or Download):
    If you have Git, clone this repository:
    Bash

git clone [your_repository_url_here]
cd [your_repository_name]

Alternatively, you can download the project as a ZIP file and extract it.

Run the Game:
Navigate to the project directory in your terminal or command prompt and run:
Bash

    love .

    This will launch the game.

Controller Support

Controller support is a planned feature and will be added in a future update. Once implemented, details on how to connect and configure your controller will be provided here.
Game Mechanics

The game utilizes Axis-Aligned Bounding Box (AABB) detection for all collision calculations. This method provides efficient and accurate collision responses between the paddles, ball, and the game boundaries, ensuring smooth and predictable gameplay.
Contributing

Contributions are welcome! If you have suggestions for improvements, 1  bug fixes, or new features, feel free to:  
1. github.com

Source icon
github.com

    Fork the repository.
    Create a new branch (git checkout -b feature/your-feature-name).
    Make your changes.
    Commit your changes (git commit -m 'Add some feature').
    Push to the branch (git push origin feature/your-feature-name).
    Open a Pull Request.

License

This project is open-source and available under the MIT License.
