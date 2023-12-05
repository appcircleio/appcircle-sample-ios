import requests

def download_file(url, destination):
    response = requests.get(url, stream=True)
    if response.status_code == 200:
        with open(destination, 'wb') as file:
            for chunk in response.iter_content(1024):
                file.write(chunk)
        print(f"File dowloaded pyhton: {destination}")
    else:
        print(f"File can not download pyhton: {url}")

output_dir = "./AC_OUTPUT_DIR"
url = "https://raw.githubusercontent.com/opencv/opencv/master/README.md"
download_file(url, f"{output_dir}/exampleFile.md")
