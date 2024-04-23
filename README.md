# Using Spatial Causal Inference to Model the Urban Heat Island Effect
Most of the code found here is adapted from the repo my PhD student mentor, [@zcalhoun](https://github.com/zcalhoun/causal-uhi), had previously written. The novel portion of this code and this research (in general) is the location--same methods were applied but I implemented mine in the Boston/Cambridge area in Massachusetts. This repo contains the following:

- `.tiff` files within the folder `data` pulled and downloaded from the Google Earth Engine
- Scripts that were used in generating the final results of the study such as joint training, bootstrapping, and cross-validation
- `notebooks` where I (1) obtained data visualization, (2) analyzed results, and (3) implemented test runs of portions of the scripts
- Bash scripts used to execute experiments from bootstrapping to cross-validation in the Duke Compute Cluster (DCC)
- Dataloaders within the `Datasets` folder that contain functions used in generating the data from the `.tiff` files

## Environment setup
There are a few packages needed to process and train the data and to create the data visualizations. All of them can be found in the YAML file, `environment.yml`. To install the packages using this, run the following code:
```
conda env create -f environment.yaml
conda activate research
```
## References
Most data came from the sources mentioned below. If you plan to use the methods in another city, start with the references below. It is worth noting that some cities do not have heat campaigns by NOAA.
1. CAPA/NIHHIS. “Heat Watch Campaigns (2019).” OSF, 8 Sept. 2023. Web.
2. Dewitz, J., and U.S. Geological Survey, 2021, National Land Cover Database (NLCD) 2019 Products (ver. 2.0, June 2021): U.S. Geological Survey data release, https://doi.org/10.5066/P9KZCM54
3. Gorelick, N., Hancher, M., Dixon, M., Ilyushchenko, S., Thau, D., & Moore, R. (2017). Google Earth Engine: Planetary-scale geospatial analysis for everyone.


