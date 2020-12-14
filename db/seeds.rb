# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Fund.destroy_all
# Donation.destroy_all #if all Donations have fund_id's and Fund dependents are destroyed, is this necessary?

jm_trust = Fund.create(name: "JM Trust")
em_trust = Fund.create(name: "EM Trust")
tm_roth = Fund.create(name: "TM Roth IRA")
tm_im = Fund.create(name: "TM IM")

mms = Donation.create(
  recipient: "Norristown Medical Center",
	contact: "Susan Johns",
	amount: 25000,
	date: "2020-11-22",
	notes: "Cardiac wing",
  fund_id: em_trust.id
)
  
tc = Donation.create(
  recipient: "Real Colors Inc",
	contact: "Patrick Dunnings",
	amount: 10000,
	date: "2020-11-19",
	notes: "For operations",
  fund_id: tm_roth.id
)

ev = Donation.create(
  recipient: "Eva's Town",
	contact: "Reverend Sandy",
	amount: 10000,
	date: "2020-11-19",
	notes: "For operations",
  fund_id: em_trust.id
)

mms = Donation.create(
  recipient: "Hilton Mannah",
	contact: "Hilton Mannah",
	amount: 15000,
	date: "2020-07-01",
	notes: "Deduct from lifetime",
  fund_id: tm_im.id
)

soca = Donation.create(
  recipient: "SOCA",
	contact: "Treasurer",
	amount: 150000,
	date: "2020-09-23",
	notes: "Policy WA0001243",
  fund_id: em_trust.id
)