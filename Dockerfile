# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements_2.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements_2.txt

# Copy all uploaded files into the container
COPY . .

# Expose the port that the Streamlit app will run on
EXPOSE 8501

# Set the entry point to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
