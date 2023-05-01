# CodeHarvest

```Text

CodeHarvest is a command-line tool that allows you to extract and visualize the repository structure, including file content, of any GitHub project.

With this tool, you can conveniently explore and analyze the files and directories within a repository, facilitating the organization of your own codebase.

The structure is saved in a file, preserving indentation and formatting.

```

🚀 **Features**

- Fetches the available branches of a GitHub repository
- Allows you to choose a specific branch for analysis
- Provides options to display files before or after folders
- Downloads the repository structure and saves it locally
- Generates a clean and structured output for easy readability

## Getting Started

To get started with CodeHarvest, follow these steps:

1. Clone the repository to your local machine.
2. Install the required dependencies by running:

    ```powershell
    bundle install
    ```

3. Run the `main.rb` file from the command line using the Ruby interpreter:

    ```powershell
    ruby main.rb
    ```

4. Enter the URL of the GitHub repository you want to analyze.
5. Select the desired branch and file display preference.
6. The repository structure will be fetched and displayed in a tree-like format.
7. The structure will be saved in a folder named `projectResults/<repository_name>`.

📦 **Requirements**

To use this project on Linux, make sure you have installed the following dependencies:

- Ruby (version 2.5 or higher)

To install Ruby on Ubuntu/Debian, run the following command:

```powershell
sudo apt-get install ruby
```

On Fedora/CentOS/RHEL:

```powershell
sudo dnf install ruby
```

On Arch Linux/Manjaro:

```powershell
sudo pacman -S ruby
```

On Windows:

```Text
You can download Ruby from https://rubyinstaller.org
```

📚 **Usage Examples**

Here are a few examples of how you can use CodeHarvest:

Basic Usage:

```shell
$ ruby main.rb
Welcome to the CodeHarvest!
Please enter the GitHub repository URL:
https://github.com/example/example

Fetching the available branches...

Available branches:
1. main
2. develop
Enter the number of the branch you want to use: 1

Choose file display preference:
1. Files before folders (default)
2. Files after folders
Enter your choice (1 or 2): 1

Fetching the repository structure for branch 'main'...

Repository structure:
File: .gitignore

File: GemFile

File: GemFile.lock

File: LICENSE

File: main.rb

File: readme.md

Folder: lib/
  File: get_local_ip.rb

  File: get_subnet_mask.rb

  File: ip_and_mask_to_cidr.rb

  File: loading_animation.rb

  File: output_formatter.rb


The repository structure has been saved in the folder 'projectResults/RubyNetScan' as 'repo_structure.txt'.

Do you want to scrape another repository or exit?
1. Scrape another GitHub repository
2. Exit
Enter your choice (1 or 2): 2
Goodbye!

```

🤝 **Contributing**

Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.

📄 **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

💖 **Credits**

Made with ❤️ by [gui25](https://github.com/gui25). Special thanks to all contributors and users of this project!
