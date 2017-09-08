intent "LaunchRequest" do
  ask("Hi, this is Zoe, can you please give me your passcode so we can authenticate you")
end

intent "Passcode" do
  passcode = request.slot_value("passcode_pin")

  p "this is my passcode #{passcode}"
  if passcode == "1844"
    respond("thank you, you have now been logged in")
  else
    tell("sorry that is not correct")
  end
end


intent "CheckBalance" do
  ask("For which account would you want this, either ISA or Standard")
end

intent "SelectAccountType" do
  account = request.slot_value("account")

  case account.downcase
  when "isa"
    respond("OK your zopa balance for your ISA account is £1300")
  when "standard"
    respond("OK your zopa balance for your Standard account is £900")
  end

end

intent "AmountOwed" do
  respond("This month you currently owe £149.99")
end

intent "AmountSpent" do
  ask("This week you reached all your spending goals. Your outgoings for this week were £228.34. This is just over £50 less than your typical weekly spend. A payment of this amount towards your Zopa credit card would save you £12.50 in interest if made within the next 30 days. Would you like to hear your credit card balance")
end

intent "CreditCardBalance" do
  hear_credit_card = request.slot_value("CreditCardYesNo")

  puts "hear credit card #{hear_credit_card}"

  case hear_credit_card
  when 'yes'
    tell("Your credit card balance is £1895")
  when 'no'
    tell("ok")
  end
end

intent "ImproveFinances" do
  tell("Your current Zopa score is 38. To improve your score you could limit your credit card spending to maximum of £50 per week. Your current average weekly credit card spending is approximately £75.")
end

intent "MoreMoney" do
  tell("Yes Bob, with Zopa you can borrow up to a maximum of £25,000. This can be done
  either by consolidating your current loan whilst applying for additional funds. Or by applying
  for separate loan, as at Zopa you can have more than one loan running at the same time.")
end

intent "SessionEndedRequest" do
  tell("ok, thank you for chatting, any queries please let me know")
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

intent "AprRequest" do
  tell("APR stands for annual percentage rate and is the interest rate charged for the whole year, rather than month. For example, a loan of £1000 with an APR of 5% would result in a required annual payment of £50. The current APR on your loan is 4.9%, would you like to know more?")
end
