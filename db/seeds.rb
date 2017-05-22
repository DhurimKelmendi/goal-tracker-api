# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Company.create(name: 'First Company', invitation_code: 'firstCompany2016')
c2 = Company.create(name: 'Second Company', invitation_code: 'secondCompany2016')

u1 = User.create(name: 'First User', email: 'user@example.com', password: 'password', role: 'role', company: c1)
u2 = User.create(name: 'Second User', email: 'user@example.com', password: 'password', role: 'role', company: c1)

t1 = Team.create(name: 'First Team', user: u1, company: c1)
t2 = Team.create(name: 'Second Team', user: u2, company: c2)

g1 = Goal.create(title: 'First Goal', goal: 100, goal_date: DateTime.now, goal_progress: 0, description: "First Goal's description", slug: 'first-goal')
g2 = Goal.create(title: 'Second Goal', goal: 100, goal_date: DateTime.now, goal_progress: 0, description: "Second Goal's description", slug: 'second-goal')
g3 = Goal.create(title: 'Third Goal', goal: 100, goal_date: DateTime.now, goal_progress: 0, description: "Third Goal's description", slug: 'third-goal')

a1 = Activity.create(body: "First Activity's body", progress: 10, goal: g1, user: u1)
a2 = Activity.create(body: "Second Activity's body", progress: 10, goal: g2, user: u2)

cg1 = CompanyGoal.create(company: c1, goal: g1)

ug1 = UserGoal.create(user: u1, goal: g2)

tg1 = TeamGoal.create(team: t1, goal: g3)

tu1 = TeamUser.create(team: t1, user: u1)
tu2 = TeamUser.create(team: t2, user: u2)
