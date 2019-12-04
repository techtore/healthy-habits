
    victoria = User.create(name: "Victoria", email: "vic111@yahoo.com", password: "rainbow")
    stacy = User.create(name: "Stacy", email: "stacy999@yahoo.com", password: "password")
    
    Habit.create(name: "Meditation", notes: "I meditated for 15 minutes. I connected to my breath, and feel refreshed.", date: Date.current, user_id: victoria.id)
    Habit.create(name: "Journal", notes: "Daily check-in entry", date: Date.current, user_id: stacy.id)
