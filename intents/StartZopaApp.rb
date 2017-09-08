intent "LaunchRequest" do
  respond("You are now in your Zopa application")
end


intent "CheckBalance" do
  ask("For which account would you want this, either ISA or Standard")
end

intent "SelectAccountType" do
  p "Select Account Type"
  account = request.slot_value("account")
  p "account #{account.inspect}"

  case account.downcase
  when "isa"
    tell("OK your zopa balance for your ISA account is £1300")
  when "standard"
    tell("OK your zopa balance for your Standard account is £900")
  end

end

intent "AmountOwed" do
  tell("This month you currently owe £149.99")
end

intent "AmountSpent" do
  tell("You have spent £129.69 since the beginning of this week")
end

intent "ImproveFinances" do
  tell("Your current Zopa score is 38. To improve your score you could limit your credit card
  spending to maximum of £50 per week. Your current average weekly credit card spending is
  approximately £75.")
end

intent "MoreMoney" do
  tell("Yes Bob, with Zopa you can borrow up to a maximum of £25,000. This can be done
  either by consolidating your current loan whilst applying for additional funds. Or by applying
  for separate loan as at Zopa you can have more than one loan running at the same time.")
end

intent "CurrentLoan" do
  tell("To settle your current loan within the next 7 days you would have to pay £2,398.52.")
end

intent "SpeakToZoe" do
  tell("Hi, what is your passcode?")
end

intent "PasscodeVerified" do
  tell("Welcome Bob! How can I help you today?")
end

intent "SpendingTrends" do
  tell("This week you reached all your spending goals. Your outgoings for this week were £228.34. This is just over £50 less than your typical
  weekly spend. A payment of this amount towards your Zopa credit card would save you
  £12.50 in interest if made within the next 30 days. Would you like to hear your credit card
  balance?")
end

