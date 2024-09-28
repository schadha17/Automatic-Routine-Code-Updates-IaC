# Automatic Routine Code Updates IaC (infrastructure as code)

PROBLEM: Team at work managed their AWS development pipeline using a file that contains the configuration related to the deployment. This file was used by a dev ops tool which is responsible for deployment. As a result, this file had to be present in repositories of all applications developed by the team. 

SOLUTION: At work, we started experiencing errors in our development pipelines. The fix was adding some 'parameter:value' in the file discussed above for 23 different repositories owned by my team. I was given this task. It felt redundant and was prone to human error so I created this script for our routine code updates.

FEATURES: 
- This script searches for a pattern and replaces it with the new changes
- It is also capable of inserting an entire newline after search string is found
- Source code parser can be used to analyse important information such as (number of TODO's, number of single line comments, number of block comments and much more) before merging the source code into build pipeline.
- One important use case is not merging the code until all TODO's are removed. Sometimes, engineers write TODO's to take care of trivial tasks later but forget to solve them. This source code parser can come handy in that situation.
