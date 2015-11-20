# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({
  username: 'Ricky',
  email: 'rik@rik.com',
  editor: true,
  password: 'password',
  password_confirmation: 'password'
})

User.create({
  username: 'User',
  email: 'use@use.com',
  password: 'password',
  password_confirmation: 'password'
})

Publication.create({
  title: 'Star Wars Battlefront: Technical Issues and Fixes',
  publication_type: 'article',
  intro: 'Problems and suggested solutions for Battlefront errors.',
  content: 'According to EA and PlayStation, several users attempting to load Star Wars Battlefront have been experiencing several issues. Today, EA and PlayStation have come up with a variety of fixes for this known issue in which they can be found below: RESTORE YOUR LICENSE. Should this continue to be a problem, PlayStation has advised users to restart the PlayStation 4 consoles, and to NOT enter rest mode as you must shut down the console completely.',
  section: 'Gaming',
  img_string: 'http://static2.gamespot.com/uploads/original/536/5360430/2848826-star+wars+battlefront+key+art.jpg',
  user_id: 1
})

Publication.create({
  title: 'Nasa Refines Thermal Protection System of Orion Spacecraft',
  publication_type: 'article',
  intro: "Nasa engineers have refined the key thermal protection system of Orion - new exploration spacecraft designed to ferry astronauts to asteroid and Mars.",
  content: "The team has been improving the spacecrafts heat shield design and manufacturing process since the vehicle successfully travelled to space for the first time last year. On future missions, a silver, metallic-based thermal control coating will be bonded to the Orion crew modules back shell tiles, the space agency said in a statement. When it comes to a spacecraft enduring the extremely hot and fast journey from deep space back to Earth, Nasas Orion can withstand the heat. The engineers are now enhancing the overall system in advance of the spacecrafts next mission - a flight that will put Orion through the harshest set of conditions yet. During Orion's next mission atop the agency's mega Space Launch System (SLS) rocket called Exploration Mission-1 (EM-1), the spacecraft will be in space for more than three weeks and return to Earth under even faster and hotter conditions than during its last flight.",
  section: 'Tech News',
  img_string: 'http://cdn.ndtv.com/tech/images/gadgets/silver_orion_nasa.jpg',
  user_id: 1
})

Publication.create({
  title: 'Tinder Owner Match Group Debuts On Nasdaq At $13.50/Share, Up 12.5%',
  publication_type: 'article',
  intro: "The company yesterday raised $400 million with its IPO priced at $12 per share, and today it opened for trading as $MTCH at $13.50/share, a pop of 12.5%.",
  content: "The company’s $12 share price valued Match Group at around $2.9 billion, with IAC valued post IPO at around $4.9 billion, as it will continue to retain a stake in Match Group. After this public listing, IAC still owns 85% of Match Group. Tinder, the dating app that lets you swipe right and left on potential matches based on whether you like or reject them, is possibly the most well known of the Match Group properties. Others include include OkCupid. Collectively, Match Group has 59 million monthly active users, with about 4.7 million paid members as of Q3 of this year. Match Group’s products are in 38 languages across more than 190 countries, the company said in its S-1 filing. The company had 1,600 full-time employees and 3,300 part-time employees around the world as of the end of the second quarter this year. It’s unclear what kind of affect the interview by Sean Rad — the CEO and co-founder of Tinder, but not an executive officer of Match Group — had on Match Group’s IPO, but his shower of comments about his personal dating habits and life in general did cause many tongues to wag and even led to Match Group issuing a last-minute update to its S-1 filing disavowing themselves of the words of their 29 year-old savant. The stock has crept as high as $14 in trading today, and we’ll be sure to update the price as we",
  section: 'Tech News',
  img_string: 'https://tctechcrunch2011.files.wordpress.com/2015/11/tindermatch.jpeg?w=738',
  user_id: 1
})

Publication.create({
  title: 'LG Urbane 2 pulled from stores',
  publication_type: 'article',
  intro: "Last week we brought you news that the first Android Wear smartwatch with access to cellular data — read: doesn’t need to be paired with a smartphone — was on its way to the U.S. market, but now we are dialing down that enthusiasm after the device was pulled due to apparent issues.",
  content: "The watch in question is the LG Urbane 2nd Edition LTE, which went on sale in the U.S. via AT&T last week and was due to come to Verizon on November 20. It’s all change, however, after LG yanked it from stores due to a hardware issue. The company did contact media reviewing the watch — including Android Police — with a note which, among other things, noted that the device might be available in the future. For now, neither the carriers nor LG have given a new date when the watch will go back on sale. In fact, AT&T is already offering refunds to customers while Verizon will reportedly not ship the watch to those who have made pre-orders. That doesn’t look too good.",
  section: 'Gadgets',
  img_string: 'http://www.droid-life.com/wp-content/uploads/2015/05/lg-watch-urbane-2.jpg',
  user_id: 1
})

Publication.create({
  title: 'Mining (And Learning) With The 21 Bitcoin Computer',
  publication_type: 'article',
  intro: "A few days ago a $400 charge hit my credit card and Amazon notified me that my 21.co bitcoin computer was on its way.",
  content: "Essentially a Raspberry Pi connected with a custom bitcoin-mining ASIC and a heatsink, the computer is one of the most interesting MVPs in modern memory. While you could easily recreate it yourself, the fact that 21 is building and selling these for a few hundred dollars is a testament to the future widespread adoption of BTC systems. Is it worth it? First, I doubt this 50 Gigahash per second machine will ever earn back the cost associated with buying and running it. Second, it’s very cool but I suspect that this isn’t quite the bitcoin droid we’re all looking for. That said, I would argue that it’s a fascinating proof of concept. The 21 computer is essentially a version of previously-built Raspberry Pi miners. I’ve run something similar to it under my desk for about two years now and it’s been a fun if impoverishing experience. Heck, you can buy this monstrosity for $60 and heat your bedroom while you mine pennies a week. But you don’t mine bitcoins to for the riches, people say. You mine it to support the network. Ultimately the 21’s goal is to put something like this bitcoin system into every phone and computer. This move would change the way the blockchain is processed in a very real way and could result in some interesting changes in the entire ecosystem. As it stands, however, this computer is akin to Baby’s First Bitcoin miner, a plug and play device that is accessible and understandable and a great way to get into mining without going crazy. What this device is really designed to do is offer a test bed for bitcoin-based activity like sale of signed digital goods, the ability to rent out system time for bitcoin, and accept bitcoin on a commerce site. The core app is called 21 and it runs from the command line. Typing ’21 mine’ activates the bitcoin miner while other commands activate various features. You can also launch a server to perform basic bitcoin functions. For example, 21 offers a bitcoin via SMS system that uses Twilio to send payments. You can also sell digital files via bitcoin using this server.",
  section: 'Gadgets',
  img_string: 'https://tctechcrunch2011.files.wordpress.com/2015/11/21inc4b-_sr700525_2.jpg?w=533&h=394&crop=1',
  user_id: 1
})

Publication.create({
  title: 'Why Fallout and Elder Scrolls are my perfect game format',
  publication_type: 'article',
  intro: "The Fallout and Elder Scrolls series’ are a pretty big deal in the gaming landscape and there is no surprise that there is so much hype surrounding Fallout 4’s impending release.",
  content: "There are a few main reasons why Fallout will be a huge release and why it will (probably) dwarf most of the other November games when it releases. It is a new instalment of a long-running popular series, its developer is known for quality games and for looking after its customers and it is a game with near infinite amount of choice. All of the above points are very important for gamers but choice is what really drags me towards both Fallout and ES. Now I know that choice has become a bit of a buzzword from game creators in the past few years as more linear experiences become isolated and shunned. I actually really liked Final Fantasy 13 once it opened up but most people put it away after realising it had 8-10 hours of completely linear corridor clearing tutorials. Assassin’s Creed 3 was universally panned for its severe lack of choice, especially in the early stages. I could rattle off many other games who take the authority away from the player and are worse off for it but you get the picture. Developers constantly attempt to straddle the very fine line these days between accessibility and challenge and often fail. They unnecessarily dumb down and hand hold until you are left with a watered down experience in the fear that players will hate a game that challenges them in any small way. “This part is a bit hard let’s put a checkpoint every few steps”. “This player has been searching for 30 seconds let’s put up a screen prompt with what to do”. “Let’s tell the player how they should play our game”. It is a perception of the player as a mindless idiot who needs to be told how to suck eggs. These games may not have the gameplay prowess of your best shooters or action games but they don’t need to. The stories you can create and be a part of are why Fallout 3 and Skyrim will forever hold strong memories in the minds of everyone who has played them. This is why I am sure I will not be alone tonight when I rush home from work to chuck in Fallout 4, stay up way too late and avoid social responsibilities for a few weeks (and then some). That is what Fallout and ES are all about. Side with everyone, side with no one, be a masochistic cannibal murderer, become a legend…it’s up to you.",
  section: 'Gaming',
  img_string: 'http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/e32015/bethesda/fallout4/charactercreationwoman-610.jpg',
  user_id: 1
})

puts "Seeding complete"

