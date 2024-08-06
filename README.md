# EXEConverter

## Description
EXEConverter is a simple tool that allows you to convert any `.exe` file into various encoded formats (Base64, Hex, and Binary) and back. This project includes two main scripts: `EXEConverter.bat` for encoding and `EXEDecoder.bat` for decoding.

## How to Use
1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/zZan54/EXEConverter.git
    ```

2. To convert an `.exe` file to an encoded format:
    - Run the `EXEConverter.bat` script.
    - Select the desired encoding type:
        1. Base64
        2. Hex
        3. Binary
    - Enter the path to your `.exe` file.
    - The encoded output will be saved in the `output` folder.

3. To decode an encoded file back to an `.exe`:
    - Run the `EXEDecoder.bat` script.
    - Select the desired decoding type:
        1. Base64
        2. Hex
        3. Binary
    - Enter the path to your encoded file.
    - The decoded `.exe` file will be saved in the `output` folder with the original name and `.exe` extension.

## Files
- **EXEConverter.bat**: Main script to convert `.exe` files to various encoded formats.
- **EXEDecoder.bat**: Script to decode encoded files back to `.exe`.
- **scripts/**: Folder containing PowerShell scripts for encoding and decoding:
    - `ConvertToBase64.ps1`
    - `ConvertToHex.ps1`
    - `ConvertToBinary.ps1`
    - `DecodeFromBase64.ps1`
    - `DecodeFromHex.ps1`
    - `DecodeFromBinary.ps1`
- **examples/**: Folder containing example encoded files and a sample `.exe` file:
    - `output_base64.txt`
    - `output_hex.txt`
    - `output_binary.txt`
    - `sample.exe`
- **output/**: Folder where the encoded and decoded files are saved. This folder will be created automatically if it does not exist.
- **src/**: Source code folder:
    - `sample.c`: A simple C program that prints "Hello, World!" to demonstrate the conversion process.

## Sample Files
- **sample.c**: This is a simple C program that prints "Hello, World!". It's provided as an example to demonstrate the conversion process.
- **sample.exe**: This is the compiled version of `sample.c`. You can use this file to test the encoding and decoding scripts.

## Contributions
We welcome all contributions! If you'd like to contribute, please fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the [GNU General Public License v3.0](https://opensource.org/license/GPL-3.0).