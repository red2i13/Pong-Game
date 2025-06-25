# Pong-Game

A classic Pong game built with Lua and the LÖVE2D framework.
https://github.com/user-attachments/assets/ebc38ce5-74da-4b62-9c71-0cde2b270839

## Table of Contents

- [Features](#features)
- [Controls](#controls)
- [How to Play](#how-to-play)
- [Installation](#installation)
- [Controller Support](#controller-support)
- [Game Mechanics](#game-mechanics)
- [Contributing](#contributing)
- [License](#license)

## Features

- Classic Pong gameplay
- Two-player local multiplayer
- Simple and intuitive controls
- Controller support (planned)
- Accurate AABB collision detection

## Controls

### Keyboard

- **Start Game**: Enter
- **Player 1**:
  - Move Up: W
  - Move Down: S
- **Player 2**:
  - Move Up: Up Arrow
  - Move Down: Down Arrow

### Controller (Planned)

Details for controller button mappings will be provided once implemented.

## How to Play

1. Launch the game
2. Press Enter to start a new game
3. Player 1 uses W and S to control their paddle
4. Player 2 uses Up Arrow and Down Arrow to control their paddle
5. The first player to reach a set score (e.g., 7 points) wins the round

## Installation

To run this game, you'll need the LÖVE2D framework installed on your system.

1. **Download LÖVE2D**:
   Visit the official LÖVE2D website: https://love2d.org/ and download the appropriate version for your operating system. Follow their installation instructions.

2. **Clone the Repository (or Download)**:
   If you have Git, clone this repository:
   ```bash
   git clone [your_repository_url_here]
   cd [your_repository_name]
   ```
   Alternatively, you can download the project as a ZIP file and extract it.

3. **Run the Game**:
   Navigate to the project directory in your terminal or command prompt and run:
   ```bash
   love .
   ```
   This will launch the game.

## Controller Support

Controller support is a planned feature and will be added in a future update. Once implemented, details on how to connect and configure your controller will be provided here.

## Game Mechanics

The game utilizes Axis-Aligned Bounding Box (AABB) detection for all collision calculations. This method provides efficient and accurate collision responses between the paddles, ball, and the game boundaries, ensuring smooth and predictable gameplay.
![aabb_test](https://github.com/user-attachments/assets/a5739fcc-af8b-44be-910b-4fbd158d928e)

## Contributing

Contributions are welcome! If you have suggestions for improvements, bug fixes, or new features, feel free to:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature/your-feature-name`)
6. Open a Pull Request

## License

This project is open-source and available under the MIT License.
