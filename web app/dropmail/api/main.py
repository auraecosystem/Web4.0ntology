# DropMail API Example
import requests

url = "https://dropmail.me/api"
headers = {
    "Content-Type": "application/json"
}

response = requests.get(url)
data = response.json()
print(data)
