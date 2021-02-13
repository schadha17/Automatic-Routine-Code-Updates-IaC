# Automatic-Routine-Code-Updates-IaC

PROBLEM: The Secured Mastercard team at Capital One managed their AWS development pipeline using a file that contains the configuration related to the deployment. This file was used by an internal tool which is responsible for deployment. As a result, this file had to be present in repositories of all applications developed by the team. 

SOLUTION: During my internship at Capital One, we started experiencing errors in our development pipelines. The fix was adding some 'parameter:value' in the file discussed above for 23 different repositories owned by my team. I was given this task. It felt redundant and was prone to human error so I created this script for our routine code updates.

FEATURES: 
- This script searches for a pattern and replaces it with the new changes
- It is also capable of inserting an entire newline after search string is found

Any feedback will be highly appreciated at sid.chadha17@gmail.com :) 
