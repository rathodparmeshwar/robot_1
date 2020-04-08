from selenium import webdriver
from bs4 import BeautifulSoup
from robot.api.deco import keyword

def maximize_browser():
    driver = webdriver.Firefox()
    driver.maximize_window()
    pass

def some_func(browser):
    browser.maximize_window()
    print(browser)

def parse_html_source(source):
    if isinstance(source, str):
        soup = BeautifulSoup(source)
        for tag in soup.find_all('title'):
            return tag.text
        return "Yes its a string"
    else:
        return "No its not a string"

class MyClass:

    def __init__(self, arg1):
        self.arg1 = arg1
    
    def return_value(self):
        return self.arg1