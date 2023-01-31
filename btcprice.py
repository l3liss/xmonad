import requests

def get_bitcoin_price():
    url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=BTC&convert=USD"
    headers = {
        "Accepts": "application/json",
        "X-CMC_Pro_API_Key": "383226cb-54b4-4257-bd4a-5907b6ae8276"
    }
    response = requests.get(url, headers=headers).json()
    return response["data"]["BTC"]["quote"]["USD"]

def format_price_change(price):
    change = price["percent_change_24h"]
    if change >= 0:
        return "\033[32m+{:.2f}%\033[0m".format(change)
    else:
        return "\033[31m{:.2f}%\033[0m".format(change)

if __name__ == "__main__":
    price = get_bitcoin_price()
    price_str = "${:.2f}".format(price["price"])
    change_str = format_price_change(price)
    print("The current price of Bitcoin is {} ({})".format(price_str, change_str))
