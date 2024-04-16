# README.md

Data Engineering GCP data connectors for a number of cloud services

# Setting up a Conda Environment with TensorFlow

This guide will walk you through the process of setting up a new Conda environment named `tensorflow_env` with TensorFlow.

## Prerequisites

Before you begin, ensure that you have Conda installed. If you haven't installed Conda yet, you can follow the instructions [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html).

## Step-by-Step Instructions

1. **Create a new Conda environment**:
   ```bash
   conda create --name tensorflow_env
   ```

2. **Activate the Conda environment**:
   ```bash
   conda activate tensorflow_env
   ```

3. **Install TensorFlow**:
   ```bash
   conda install tensorflow
   ```

   Depending on your requirements, you might need to specify the version of TensorFlow. For example, to install TensorFlow version 2.5:
   ```bash
   conda install tensorflow=2.5
   ```

4. **(Optional) Install additional libraries**:
   You can install additional libraries using `conda` or `pip` within the activated environment. For example, to install Jupyter Notebook:
   ```bash
   conda install jupyter
   ```

5. **Deactivate the Conda environment**:
   ```bash
   conda deactivate
   ```

## Running the Script

You can also automate these steps by using the provided Bash script:
```bash
bash setup_tensorflow_env.sh
```

This script will execute the commands listed above and set up the Conda environment with TensorFlow.

## Conclusion

You've now set up a Conda environment with TensorFlow! You can start using TensorFlow for your projects within this environment.

