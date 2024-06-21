# src/main.py

import pandas as pd
import statsmodels.api as sm

# replace this with your data analysis / import relevant functions
def do_simple_analysis():
    # Read a CSV file with data 
    # (in practice, import more complex data generation / regression / artifact genetion procedures)
    data_df = pd.read_csv('data/weather_processed.csv')

    # Prepare the data for OLS regression - picked these arbitrarily :)
    arbitrary_regressors = [
        'Humidity',
        'Wind Speed (km/h)',
        'Wind Bearing (degrees)',
        'Visibility (km)',
        'Pressure (millibars)'
    ]

    X = data_df[arbitrary_regressors]
    y = data_df['Apparent Temperature (C)']
    X = sm.add_constant(X)  # Adds a constant term to the predictor

    # Fit the model
    model = sm.OLS(y, X).fit()

    # Get the summary
    summary = model.summary()

    return summary

# For example, save a regression output summary to a .tex file
results_path = '/app/results/results.tex'
if __name__ == '__main__':
    with open(results_path, 'w') as f:
        summary = do_simple_analysis()
        f.write(summary.as_latex())
        
    
