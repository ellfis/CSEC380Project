import requests


def test_page():
	r =  requests.get("http://127.0.0.1")
	assert "Hello World" in r.text
	

def main():
	test_page()


if __name__ == "__main__":
	main()