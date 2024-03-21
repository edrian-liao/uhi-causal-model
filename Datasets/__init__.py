from .dataset import Dataset
from .spatial_dataset import SpatialDataset


def load(name, data_dir, window_size):
    if name == "boston":
        return Dataset(data_dir, window_size, name)
    else:
        raise ValueError("Dataset {} not supported".format(name))
