# HotelBookingFramework -- Guidelines
Framework is based on Rest assured and cucumber

# Prerequisites
Cucumber 4.0 and above Java 8.0 and above

# Usage
clone the repo and do mvn clean install

Test Runner file --> To execute an idividual or multiple test scenario, give the specific tag given in the feature files in the tags property

features package --> BDD Test cases are stored under feature files

StepDefinitions package --> BDD test step implementation are stored under corresponding step definition files

# Execution on Local
Scenario can be executed from gitbash or IntelliJ terminal. Give the test tag in the test runner file and then execute--> mvn clean test verify

# Reporting
HTML and JSON reports are automatically generated and stored in the default ./target folder.

# Reporting is done by two plugins in pom.xml file

maven-cucucmber-reporting
cucumber-html
