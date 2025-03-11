Feature: Smoke tests for the API Endpoints
# Scenario: Smoke test for GET /posts endpoint
# When I send "GET" request to "http://localhost:3000/posts" and save response as "postsResponse"
# And I parse "$postsResponse" body as json
#  Then Response '$postsResponse' Status Code to be equal "200"
#  And Response "$postsResponse" to be equal "array"
#  And Response "$postsResponse" size to be above "0"

# Scenario: Smoke test for GET /profile endpoint
#  When I send "GET" request to "http://localhost:3000/profile" and save response as "profileResponse"
#  And I parse "$postsResponse" body as json
#  Then Response "profileResponse" Status Code to be equal "200"
#  And Response "profileResponse" contains:
#    | name      |
#    | username  |
#    | email     |