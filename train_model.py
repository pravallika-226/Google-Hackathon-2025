import pandas as pd
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_absolute_error
import joblib

# Load dataset
data = pd.read_csv("merged_data.csv")

# Define input features and target
X = data[['Fan-in', 'Fan-out', 'Signal-Type', 'Logic-Gates', 'Clock-Frequency', 'Path-Length']]
y = data['Logic Depth']

# Train Decision Tree with max_depth=2
model = DecisionTreeRegressor(max_depth=None, max_features=None)
model.fit(X, y)

# Predict and evaluate
y_pred = model.predict(X)
mae = mean_absolute_error(y, y_pred)

print(f"Mean Absolute Error: {mae}")

# Save the trained model
joblib.dump(model, "timing_model.pkl")
print("Model saved as timing_model.pkl")
