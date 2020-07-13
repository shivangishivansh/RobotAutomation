import json
import jsonpath

def read_locators(locator):
    file = open("C:/PycharmProjects/RobotAutomation1/JsonFiles/Elements.json")
    response = json.loads(file.read())     #It will be a list.
    value = jsonpath.jsonpath(response, locator)
    return value[0]     #List will always contain 1 value, so we would be returning 1st component
