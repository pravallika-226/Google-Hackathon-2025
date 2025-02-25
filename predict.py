import joblib
import pandas as pd

# Load trained model
model = joblib.load("timing_model.pkl")

# Define correct test data format
test_data = pd.DataFrame({
    'Fan-in': [3],
    'Fan-out': [1],
    'Signal-Type': [1],  # Assuming critical signal
    'Logic-Gates': [3],  # Estimated gate count
    'Clock-Frequency': [100],  # MHz
    'Path-Length': [3]
})

# Predict Logic Depth
predicted_depth = model.predict(test_data)
print(f"Predicted Logic Depth: {predicted_depth[0]}")
