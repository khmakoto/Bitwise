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

Publication.create({
  title: 'Microsoft Surface Book review',
  publication_type: 'review',
  intro: "The laptop, evolved",
  content: "I’ve always wanted Microsoft to build a laptop. Some days I’ll be seated on my couch, other days I’ll be seated on the floor of a convention center or press event, so I need a laptop that just works and won’t annoy me when I’m in the middle of writing an article. The Surface line (from the RT right through to the Surface Pro 3) has always been a compromised mixture of tablet and laptop. They’ve never really worked well in my lap, the trackpad and keyboards weren’t as good as a laptop, and battery life hasn’t been ideal for a portable machine. I could use them fine at home on my desk, but every time I took them on the road with me I just ended up irritated because they weren’t real laptops. Microsoft now thinks it has an answer, and it’s calling it the Surface Book. Microsoft claims it’s the “ultimate laptop” that’s designed to go head-to-head with Apple’s MacBook Pro and premium Windows laptops. While the Surface Book is primarily a laptop, it’s also a tablet thanks to a display that detaches into something like a digital clipboard. Starting at $1,499, the Surface Book is clearly priced at the high-end of the laptop market, and the 1TB of storage model tops out at $3,199. That’s a lot of money to spend on a computer. I want a Surface that works like a laptop, has a great trackpad and keyboard, and actually lasts me a working day. So, is the Surface Book a really great laptop or just another mix?",
  section: 'Gadgets',
  img_string: 'https://cdn2.vox-cdn.com/thumbor/kLs6_J8mozEcX7lypgXv5mVdeHQ=/1020x0/cdn0.vox-cdn.com/uploads/chorus_asset/file/4130882/microsoft-surface-book-3.0.jpg',
  summary: "Microsoft can clearly make a laptop that competes with the MacBook Pro with all the best ingredients, but it just needs to find a better recipe to combine all its innovative hardware. The Surface Book is seriously impressive, and as a hybrid it’s probably the best out there. If Microsoft had just made a laptop, I suspect I'd be calling it the best Windows laptop out there, but it didn't. While it's great Microsoft is pushing the idea of a tablet and a laptop hybrid constantly, I'm still hunting for the perfect mix of hardware that really shows this is the future.",
  grade: 8.3,
  user_id: 1
})

Publication.create({
  title: 'Rise of the Tomb Raider review',
  publication_type: 'review',
  intro: "Rise of the Tomb Raider is the most fun I’ve had with a Lara Croft game since 1996. Its story is full of the right kind of danger and intrigue, its tombs are dastardly, and I was as struck by its huge, romantic environments as I was as a kid playing the original. Although I could have done with a few more puzzles and fewer firefights overall, I enjoyed every rollicking, big-hearted second of it.",
  content: "Like its predecessor, Rise of the Tomb Raider revels in an ever-so-slightly-sci-fi and ultimately very fun high-concept involving a hunt for an artifact that grants eternal life. It’s broad, Indiana Jones stuff that gallops along at a great clip through gloriously over-the-top sequences grounded with a strong emotional throughline. Rise of the Tomb Raider is, at its core, about Lara and her late father, and actress Camilla Luddington’s thoughtful performance as Lara sells us on the complicated relationship she has with the ghosts he left behind. Minute-to-minute, Lara shines. She’s confident and smart, and reacts to danger with an action hero’s calmness and intuition. Yet she’s scarred by her last adventure, so she carries a sort of charismatic weariness that tinges her quips with self-deprecation. As a character, Lara Croft has never been so endearing. Her ambitions are more complex, too. This time round she’s driven by obsession, not survival, and for the first time we see her in shades of grey. Unlike 2013’s Tomb Raider, I wasn’t wincing at her constant broken bones - she’s now a formidable fighter who inflicts more than she takes - but I did see the cracks in her moral compass.",
  section: 'Gaming',
  img_string: 'http://blog.lesoir.be/moi-jeux/wp-content/uploads/sites/2/2015/11/Rise_of_the_tomb_raider.jpg',
  summary: "Rise of the Tomb Raider raises the bar set by Lara’s last outing with a rollicking adventure story, strong villains, gorgeous vistas, and smart puzzles – go off the main path to find the best stuff in dastardly optional tombs. Though the mandatory combat doesn’t distinguish itself with challenging enemies unless you crank up the difficulty, Lara’s newfound versatility on the battlefield makes fighting a lot more fun. Once again it’s Lara herself, however, who steals the show, her complex ambitions and hardened resolve showing new sides to a character who has well and truly grown from survivor to the most fascinating action hero in video games today.",
  grade: 9.3,
  user_id: 1
})

Publication.create({
  title: 'Fallout 4 review',
  publication_type: 'review',
  intro: "We’re giving this post-nuclear RPG a glowing endorsement. ",
  content: "Most of the way this huge roleplaying-shooter game works is carried over from its excellent predecessors, Fallout 3 and Fallout: New Vegas. It is the Skyrim to Fallout 3’s Oblivion, if you will – it iterates on the previous game’s already amazing systems, and it’s similarly dense with locations to explore, genuinely creepy monsters to fight, and superbly engrossing post-nuclear atmosphere that blends unsettling gore and death with dark comedy. After more than 55 hours played I may have seen an ending, yet I feel like I’ve only begun to explore its extraordinary world; from the look of it, I’ll easily be able to spend another 100 happy hours here and still see new and exciting things. A story that begins as a basic search for your lost family evolves into something much more complex and morally nuanced. Like in Fallout: New Vegas, we’re drawn into a struggle between several groups competing for control of the region, and deciding which of their imperfect post-apocalyptic philosophies to align with made me pause to consider how I wanted events to play out. Even the highly questionable Institute has a tempting reason to side with them, and turning away from them in my playthrough wasn’t as clear-cut a choice as I’d expected. I was impressed by the sympathy shown toward the villains, too - even the most irredeemable murderer is explored and given a trace of humanity.",
  section: 'Gaming',
  img_string: 'https://i.ytimg.com/vi/7y3hckT7OVk/maxresdefault.jpg',
  summary: "The world, exploration, crafting, atmosphere, and story of Fallout 4 are all key parts of this hugely successful sandbox role-playing game. Great new reasons to obsessively gather and hoard relics of happier times, strong companions, and sympathetic villains driving tough decisions make it an adventure I’ll definitely replay and revisit. Even the technical shakiness that crops up here and there can’t even begin to slow down its momentum.",
  grade: 9.5,
  user_id: 1
})

Publication.create({
  title: 'Nexus 6 review',
  publication_type: 'review',
  intro: "Go bigger or go home.",
  content: "Phablet. It's the worst word, a word only spoken with an apology — or maybe with a proviso. I hate saying this word, but it's the only way to describe this thing. But it's just a word. And like all good words, it accurately connotes the thing you want to reference. It's more economical than gigantic phone and, honestly, more accurate. A phablet is not a phone; it's something else. In fact, there's a certain satisfaction in using it. When a word not only refers to a thing but also itself feels just as unwieldy as that thing, that is a good word. A powerful word, a word that gets things done and isn't worried about how silly it looks doing it. The Nexus 6 is a phablet. It's also the showcase for the newest version of Android, 5.0 Lollipop. As with other Nexus devices, it will likely be one of the only phones to run Android without extra, unwanted software you get from carriers and manufacturers. That's a big deal for some people. Assuming you aren't put off by the size or the $649 off-contract pricing. Assuming that you don't really want just a phone. Because the Nexus 6 isn't a phone. It's a phablet.",
  section: 'Gadgets',
  img_string: 'http://blogs-images.forbes.com/gordonkelly/files/2014/12/2014-12-04-15.39.46-1940x1493.jpg',
  summary: "Android Lollipop couldn’t ask for a better showcase than the Nexus 6. I do wish that the software did a better job helping me manage a device this large, but the fundamental improvements to the already excellent notification system have made me more productive already. Assuming Google can work out these first-release bugs, Lollipop itself could be fast enough and pretty enough to spur Android developers to finally pay more attention to design in their apps. Whether the Nexus 6 will be more than a showcase is an open question. Nexus phones always seem to have some sort of weird sales strategy that limits their adoption. The last couple of phones have been incredibly inexpensive, but lacked carrier support. The Nexus 6 flips that script: it has the support of the big carriers in the US, but it’s no longer a cheap phone at $649 off contract. So the story of the Nexus may remain unchanged: popular with enthusiasts, but a curiosity for everybody else. If nothing else, that carrier support means that you can check out the size for yourself in a store. If you do, don’t be shy about really hanging out with the Nexus 6 for as long as possible. Using the Nexus 6 is absolutely awkward until, strangely, it's not. When I show this phablet to people, I get the same glassy-eyed I don’t need this look that I used to get when I showed them my big, honking pre-iPhone smartphone all those years ago. They all converted. You just might do the same.",
  grade: 8.6,
  user_id: 1
})

puts "Seeding complete"

