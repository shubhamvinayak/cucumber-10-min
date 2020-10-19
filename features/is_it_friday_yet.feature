Feature:  Is it a friday yet?
 Every boday wants to know when it is a friday?

#  Scenario: Sunday is't a friday
#  Given today is a sunday
#  When I ask whether it is Friday yet
#  Then I should be told "Nope"

#  Scenario: Friday is Friday
#  Given today is Friday
#  When I ask whether it is friday yet
#  Then I should tell "Yes"


Scenario Outline: Today is or is not a Friday
Given today is "<day>"
When I ask whether it's Friday yet
Then I should be told "<answer>"

        Examples:
            | day            | answer |
            | Friday         | TGIF   |
            | Sunday         | Nope   |
            | anything else! | Nope   |

