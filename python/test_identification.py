import os

def get_value_from_files(directory_path):
    # Define the filenames to check
    filenames_to_check = ["1.txt", "2.txt", "3.txt"]

    # Check if any of the files exist in the directory
    for filename in filenames_to_check:
        file_path = os.path.join(directory_path, filename)
        if os.path.exists(file_path):
            # Extract the value from the filename (e.g., "1.txt" -> "1")
            value = os.path.splitext(filename)[0]
            return value
    return None  # Return None if no matching file is found

# Specify the directory path you want to check
repo_directory = '\\\\192.168.x.x\\mtibackup'
valeur = get_value_from_files(repo_directory)

print(valeur)
