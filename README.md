# USGS Water Use Inventory Processing

This repository contains [Python notebooks](notebooks/) (and their [output](output/)) combining and analyzing the [FOIA records provided](https://www.data-liberation-project.org/datasets/usgs-water-use-inventory/) by the US Geological Survey to the [Data Liberation Project](https://www.data-liberation-project.org/).

For more information about these records, [see the introductory documentation](https://docs.google.com/document/d/1fzj-0DEpM2o5s37R7ixI2khjAbYDbT655EvnKWyvVkg/edit).

## Notebooks

- [notebooks/00-combine.ipynb](notebooks/00-combine.ipynb) combines the USGS-provided individual spreadsheets provided into a single CSV file. (Note: That file is too large to store in GitHub; the Data Liberation Project is [sharing it via Google Drive](https://drive.google.com/drive/folders/1E3CNez0uyzMD362LMLJWRYaJPKjoLL5o).)
- [notebooks/01-descriptive-stats.ipynb](notebooks/01-descriptive-stats.ipynb) generates descriptive statistics and identifies some outliers in the data.

## Reproducibility

To run the code yourself, take these steps:

- Download the [raw data files](https://drive.google.com/drive/folders/1pUKjcHcTBfpZULAY05EbOqL5Ih8g9LW6?usp=drive_link) and copy them to `data/raw/sites/`
- Ensure that you have Python 3 installed
- Run `make venv` to create a Python virtual environment for this repository
- Run `source venv/bin/activate` to activate the virtual environment
- Run `jupyter lab` to launch Jupyter, and then navigate within it to the `notebooks/` directory
- Run the notebooks

## Licensing

This repository's code is available under the [MIT License terms](https://opensource.org/license/mit/). The raw data files (those in `data/raw`) are public domain. All other data files are available under the Creative Commons [CC BY-SA 4.0 license terms](https://creativecommons.org/licenses/by-sa/4.0/).

## Questions?

File an issue in this repository or email Jeremy Singer-Vine at `jsvine@gmail.com`.
