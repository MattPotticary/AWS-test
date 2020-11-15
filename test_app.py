'''
Test for app.py
'''
import app

def test_hello_world():
    '''Test for hello world function'''
    assert app.hello_world(), 'Hello, World!'
