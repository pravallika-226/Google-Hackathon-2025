# AI Algorithm for Predicting Combinational Logic Depth

## Introduction
In complex VLSI designs, timing analysis is a crucial step to ensure circuit reliability at target clock frequencies. Traditional methods depend on post-synthesis reports, which are time-consuming and may     delay design cycles. This project proposes an AI-powered solution that predicts the combinational logic depth of signals directly from RTL code before synthesis, accelerating early-stage timing analysis and  enabling faster design iterations.

## Problem Statement
The primary challenge is to detect potential timing violations early in the design cycle without waiting for complete synthesis runs. The objective is to develop an AI algorithm that:
•	Predicts the combinational logic depth of signals in behavioural RTL.
•	Identifies timing-critical signals that might lead to violations.
•	Reduces synthesis run-time and speeds up timing analysis in VLSI design workflows.
## Approach
The approach used to generate the algorithm.
1. Dataset Creation
   - Manually created a dataset containing RTL signal properties like fan-in, fan-out, path length, and logic depth.
   - Used a CSV file (data.csv) for training.

2. Feature Engineering
   - Key features: Fan-in, Fan-out, Path Length.
   - Target: Logic Depth.

3. Model Selection & Training
   - Used a Random Forest Regressor for prediction.
   - Split dataset into training (80%) and testing (20%).
   - Evaluated using Mean Absolute Error (MAE).

4. Prediction & Testing
   - New signals can be tested using the trained ML model (train_model.py).
   - A separate script (predict.py) loads the model and makes predictions.

## Installation & Running the Code
### Prerequisites
- Python 3.11
- Required libraries: pandas, scikit-learn, joblib

### Setup
1. Clone the repository:
   bash
   git clone <repo-link>
   cd <repo-folder>
   
2. Install dependencies:
   bash
   pip install -r requirements.txt
   
3. Train the model:
   bash
   python train_model.py
   
4. Predict logic depth for a new signal:
   bash
   python predict.py
   

## Files in the Repository
| File | Description |
|------|-------------|
| merged_data.csv | Sample dataset with logic depth values |
| train_model.py | Trains the ML model and saves it as timing_model.pkl |
| predict.py | Loads timing_model.pkl and predicts logic depth for a new signal |
| README.md | Documentation for the project |
| Circuit,Results.pdf | Displays the circuit taken and shows the outputs|
| Vivado.XDC | Displays the XDC File|
| timing_report | Shows the timing report|

## Future Improvements
- Automate feature extraction using *Yosys synthesis reports*.
- Explore *Graph Neural Networks (GNNs)* for better accuracy.
- Expand dataset with real RTL designs.

## Contributors
- *Pravallika*

## License
This project is released under the MIT License.
