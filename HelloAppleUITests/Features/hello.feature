Feature: Button test

    @iosAuto
    Scenario: Click the button to see the change
        Given The label text is "Hello"
        When I press the "Change" button
        Then I should see the label text "Changed"
