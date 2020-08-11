Issue: Game does not refresh when entering a new starting number
Description: Entering number and selecting play when a board is already generated adds addition intractable play space
Steps: Enter integer. Click play. Click Play a second time
Expected/Observed Outcome: Unknown expectation, Observe that playspace has extra grid(s) that are unintenteractable
Dev Notes: Validation on play button? Prevent interaction once the game starts, or force the play button to reset the game. Need Product input

Issue: Number entry is not validated
Description: The Enter a Number field accepts, letters, negatives, floating decimal type, ect
Steps: Enter .5. Click Play Twice.
Expected/Observed Outcome: Expect validation of only integers of the text field. Expect error messages or instructions to the player. Instead, playspace gets partial grids added as long as player clicks play
Dev Notes: Need validation and feedback on entry. Filter text field to only allow integer, or give player feedback on invalid entry.

Issue: Incorrect player displayed as victor
Description: The message at game end indicating winner displays the incorrect player
Steps: Enter 3, click play. Play game so as the ‘O’ player wins
Expected/Observed Outcome: Expect that the winner message indicates that ‘O’ player won. Instead, message indicates that the ‘X’ player has won
Dev Notes:

Issue: Allows continued player actions after game ends
Description: After the victory message is displayed, interaction with the game space is allowed to continue. Victory message ban be changed if losing player achieves win condition
Steps: Enter 3, click play. Play the game so as the ‘O’ player wins, leaving space so that x could win after. Once victory message displays, click play so as to give X a win condition
Expected/Observed Outcome: Expect that the winner message would block input, conditions once game ends should not change victory message.
Dev Notes: Lock interface once victory condition reached.
