# intro-to-MSE
This is a course project for CPSC-544. A Roblox game that introduces the CSUF MSE program. 
## Dependencies
This project uses:
- Rojo 7.4.4
- Selene 0.27.1
- Stylua 0.20.0

## Rojo
Read the Rojo documentation at [Rojo](https://github.com/rojo-rbx/rojo) 7.4.4.

### Prerequisites
Install Rojo server
There are pre-built binaries available for Windows, macOS, and Linux from Rojo's [GitHub Releases page](https://github.com/rojo-rbx/rojo/releases).

Install Rojo plugin
```bash
rojo plugin install
```

### Getting Started
To build the place from scratch, use:

```bash
rojo build -o "PROJECT_NAME.rbxlx"
```

Next, open `PROJECT_NAME.rbxlx` in Roblox Studio and start the Rojo server:

```bash
rojo serve
```

For more help, check out [the Rojo documentation](https://rojo.space/docs).

## Push to GitHub
### Sync your game to rojo project
Since rojo doesn't provide two-way sync machenism, users will need to save their model file in `.rbxmx` file in the coordinate path inside their rojo project. The file path inside game and their rojo project **should be the same**.

#### Example:
If users want to save a new model(file location in game: `workspace/YOUR_STALL/stall_model_1`):

1. Right click the model, choose save to file
2. save the file in: `ROJO_PROJECT/src/workspace/YOUR_STALL`
3. file name: `stall_model_1.rbxmx`

### Double check before push <span style="color:RED">(**IMPORTANT !!!**)</span>

Once saved all the changes made in the game, please **local build** the project one more time to make sure the new-build project is **functioning exactly the same** as expected.

### Push to GitHub
- Push the project to branch: `feature/YOUR_STALL`
- If you need PR, **assign it to Timothy(bartsuper)**
