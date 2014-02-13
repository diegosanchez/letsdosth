Feature: Users can browse complaints list
  Users, even those who are neither logged in nor enrolled, can browse complaints

        Scenario: User access complaints list
          Given 'chad complaint' was written by the author
          And   'john complaint' was written by the author
          When  User visit 'complaints index'
          Then  User sees 'chad complaints' and it's advocators
          And   User sees 'john complaints' and it's advocators
          
