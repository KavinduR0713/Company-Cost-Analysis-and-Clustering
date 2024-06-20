# Company-Cost-Analysis-and-Clustering
This project utilizes various data science techniques to perform cluster analysis on a dataset of company costs and sales. The objective is to group companies based on similarities in their cost structures and sales figures using k-means clustering.

- The following steps and techniques are employed in this project:

### 1. Data Import and Exploration:

- The dataset costpercompany.csv is read into R.
- Basic exploratory data analysis (EDA) is performed to understand the structure, summary statistics, and distribution of the data.

### 2. Data Normalization:

- A normalization function is defined and applied to scale the data features between 0 and 1. This step ensures that each feature contributes equally to the distance calculations.

### 3. Distance Calculation:

- Euclidean distance is used to measure the dissimilarity between companies. The dist function in R computes the pairwise distances, and the factoextra package is used to visualize the distance matrix.

### 4. Clustering:

- K-means clustering is applied to partition the companies into three clusters (k=3). The kmeans function in R is utilized for this purpose.
- The results of the clustering are visualized using the clusplot function, which provides a two-dimensional representation of the clusters.

### 5. Visualization:

- Various plots, including pair plots and scatter plots with company labels, are created to visualize the relationships between features and the clustering results.

## Key Techniques:

- **Data Normalization:** Ensuring all features contribute equally by scaling them to a common range.
- **Euclidean Distance Calculation:** Measuring the straight-line distance between points in multi-dimensional space.- **
- **K-Means Clustering:** Partitioning the dataset into clusters where each company belongs to the cluster with the nearest mean.
- **Data Visualization:** Using plots to understand data distributions and clustering outcomes.

This project demonstrates the application of fundamental data science techniques in clustering analysis, providing insights into the cost structures of different companies. The R script includes comprehensive steps from data import to visualization, ensuring a clear understanding of the clustering process. ​​






