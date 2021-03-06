# Current fields
curl -u username -o filename.xls -X GET  https://<<servername>>/sr/jira.issueviews:searchrequest-excel-current-fields/<<filterid>>/SearchRequest-<<filterid>>.xls?tempMax=5000

# All fields
curl -u username -o filename.xls -X GET  https://<<servername>>/sr/jira.issueviews:searchrequest-excel-all-fields/<<filterid>>/SearchRequest-<<filterid>>.xls?tempMax=5000

# reference
# https://community.atlassian.com/t5/Jira-questions/How-can-I-periodically-email-the-Excel-version-of-a-report/qaq-p/43247
# https://developer.atlassian.com/server/jira/platform/jira-rest-api-examples/#searching-for-issues-examples
# https://stackoverflow.com/questions/44173930/wget-to-download-excel-from-jira-automatically
# https://confluence.atlassian.com/jiracoreserver089/advanced-searching-1005347631.html
# https://confluence.atlassian.com/jiracoreserver089/saving-your-search-as-a-filter-1005347649.html
