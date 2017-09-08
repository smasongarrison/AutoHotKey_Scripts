;------------------------------------------------------------------------------
; INTRODUCTION
; 
; This is an AutoHotKey script that implements AutoCorrect against several
; "Lists of common misspellings":
; 
; 
; SOURCES
; https://www.autohotkey.com/download/AutoCorrect.ahk
; https://github.com/adampash/texter/blob/master/includes/functions/autocorrect.ahk
; 
; CONTENTS
; 
;   Settings
;   Fix for -ign instead of -ing
;   Word endings
;   Word beginnings
;   Accented English words
;	Capitalized Dates
;	Short Hand
;   Common Misspellings - the main list
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Settings
;------------------------------------------------------------------------------
#NoEnv ; For security
#SingleInstance force
;------------------------------------------------------------------------------
; Exclusion Software
;------------------------------------------------------------------------------
GroupAdd, GroupExclude, ahk_exe rstudio.exe MSACCESS.EXE
GroupAdd, GroupExclude_capital, ahk_exe rstudio.exe MSACCESS.EXE EXCEL.EXE chrome.exe


;------------------------------------------------------------------------------
; Fix for -ign instead of -ing.
; Words to exclude: (could probably do this by return without rewrite)
; From: http://www.morewords.com/e nds-with/gn/
;------------------------------------------------------------------------------
#Hotstring B0  ; Turns off automatic backspacing for the following hotstrings.
::align::
::antiforeign::
::arraign::
::assign::
::benign::
::campaign::
::champaign::
::codesign::
::coign::
::condign::
::consign::
::coreign::
::cosign::
::countercampaign::
::countersign::
::deign::
::deraign::
::design::
::eloign::
::ensign::
::feign::
::foreign::
::indign::
::malign::
::misalign::
::outdesign::
::overdesign::
::preassign::
::realign::
::reassign::
::reconsign::
::redesign::
::reign::
::resign::
::sign::
::sovereign::
::unbenign::
::undersign::
::verisign::

return  ; This makes the above hotstrings do nothing so that they override the ign->ing rule below.

#Hotstring B  ; Turn back on automatic backspacing for all subsequent hotstrings.
:?:ign::ing


;------------------------------------------------------------------------------
; Word endings
;------------------------------------------------------------------------------
:?:bilites::bilities
:?:bilties::bilities
:?:blities::bilities
:?:bilty::bility
:?:blity::bility
:?:, btu::, but 
:?:; btu::; but
::sice::since  ; Must precede the following line!
:?:sice::sive
:?:t eh:: the
:?:t hem:: them
:?:;ty:: lty

:?:;d::'d
:?:I;m::I'm
:?:in;::in'
:?:;ll::'ll
:?:n;t::n't
:?:o;cl::o'cl
:?:;re::'re
:?:;s::'s
:?:;ve::'ve

:?:``d::'d
:?:I``m::I'm
:?:in``::in'
:?:``ll::'ll
:?:n``t::n't
:?:o``cl::o'cl
:?:``re::'re
:?:``s::'s
:?:s``::s'
:?:``ve::'ve

:?:I"m::I'm
:?:o"cl::o'cl
:?:n"t::n't

;------------------------------------------------------------------------------
; Grammar
;------------------------------------------------------------------------------
#IfWinNotActive ahk_group GroupExclude

:*:after-glow::afterglow
::space-walk::spacewalk
::water-front::waterfront
::above-board::aboveboard
:*:after-image::afterimage
::after-life::afterlife
::air-craft::aircraft
::air-lift::airlift
::air-line::airline
::air-men::airmen
:*:air-time::airtime
;::all-over::allover
::all-spice::allspice
::back-slide::backslide
::back-stroke::backstroke
::bed-clothes::bedclothes
::bed-rock::bedrock
::bed-roll::bedroll
::bell-boy::bellboy
::bell-hop::bellhop
::blue-bell::bluebell
:*:blue-berr::blueberr
::blue-bird::bluebird
::blue-grass::bluegrass
::blue-print::blueprint
::body-guard::bodyguard
::book-seller::bookseller
::bow-legs::bowlegs
::bow-tie::bowtie
::brain-wash::brainwash
::bug-spray::bugspray
::butter-ball::butterball
::butter-cup::buttercup
::butter-fingers::butterfingers
::butter-milk::buttermilk
::butter-nut::butternut
::butter-scotch::butterscotch
::cab-driver::cabdriver
::can-can::cancan
::candle-light::candlelight
::candle-stick::candlestick
::card-sharp::cardsharp
::card-stock::cardstock
::care-taker::caretaker
::care-worn::careworn
::carry-all::carryall
::cat-tail::cattail
::cat-walk::catwalk
::center-cut::centercut
::cheese-burger::cheeseburger
::cheese-cake::cheesecake
::clock-wise::clockwise
::coffee-maker::coffeemaker
::come-back::comeback
::come-down::comedown
::common-wealth::commonwealth
::court-house::courthouse
::crew-cut::crewcut
::cross-bow::crossbow
::cross-breed::crossbreed
::cross-cut::crosscut
::dairy-maid::dairymaid
::daisy-wheel::daisywheel
::day-bed::daybed
::dead-end::deadend
::drive-way::driveway
::duck-bill::duckbill
::duck-pin::duckpin
::duck-weed::duckweed
::ear-ache::earache
::ear-drop::eardrop
::ear-drum::eardrum
::ear-ring::earring
::earth-bound::earthbound
::earth-ward::earthward
::earth-worm::earthworm
::egg-head::egghead
::eye-glasses::eyeglasses
::eye-lash::eyelash
::eye-lid::eyelid
::eye-witness::eyewitness
::father-land::fatherland
::fire-arm::firearm
::fire-boat::fireboat
::fire-bomb::firebomb
::fire-break::firebreak
::fish-bowl::fishbowl
::fish-hook::fishhook
::fish-monger::fishmonger
::foot-hill::foothill
::foot-lights::footlights
::foot-locker::footlocker
::foot-rest::footrest
::fore-bear::forebear
::fore-brain::forebrain
::fore-cast::forecast
::fore-castle::forecastle
::fore-close::foreclose
::fore-closure::foreclosure
::fore-doom::foredoom
::fore-feet::forefeet
::fore-foot::forefoot
::fore-go::forego
::fore-gone::foregone
::fore-most::foremost
::fore-paws::forepaws
::fore-shadow::foreshadow
::fore-sight::foresight
::fore-told::foretold
::for-ever::forever
::fore-warn::forewarn
::fore-word::foreword
::fruit-cup::fruitcup
::good-bye::goodbye
::good-night::goodnight
::grass-land::grassland
::grave-yard::graveyard
::hair-cut::haircut
::hammer-head::hammerhead
::hand-book::handbook
::hand-gun::handgun
::hand-made::handmade
::hand-out::handout
::head-ache::headache
::head-dress::headdress
::head-light::headlight
::head-line::headline
::here-after::hereafter
::here-by::hereby
::high-ball::highball
::high-chair::highchair
::hook-worm::hookworm
::horse-fly::horsefly
::horse-hair::horsehair
::horse-man::horseman
::horse-play::horseplay
::horse-power::horsepower
::horse-radish::horseradish
::house-boat::houseboat
::house-work::housework
::in-take::intake
::iron-work::ironwork
::jelly-bean::jellybean
::jet-liner::jetliner
::jump-shot::jumpshot
::lime-light::limelight
::long-hand::longhand
::main-land::mainland
::main-line::mainline
::match-box::matchbox
::moon-scape::moonscape
::moon-shine::moonshine
::moon-struck::moonstruck
::moon-walk::moonwalk
::moth-ball::mothball
::mother-hood::motherhood
::motor-cycle::motorcycle
::never-more::nevermore
::new-born::newborn
::news-boy::newsboy
::news-break::newsbreak
::news-caster::newscaster
::news-dealer::newsdealer
::news-person::newsperson
::news-print::newsprint
::note-worthy::noteworthy
::nurse-maid::nursemaid
::over-board::overboard
::over-shoes::overshoes
::pass-key::passkey
::Pass-over::Passover
::pay-check::paycheck
::pin-hole::pinhole
::pin-up::pinup
::pin-wheel::pinwheel
::play-back::playback
::play-boy::playboy
::play-house::playhouse
::pony-tail::ponytail
::post-card::postcard
::rail-way::railway
::rain-coat::raincoat
::rain-drop::raindrop
::rain-storm::rainstorm
::rain-water::rainwater
::rattle-trap::rattletrap
::rubber-band::rubberband
::sail-boat::sailboat
::sales-clerk::salesclerk
::sand-lot::sandlot
::school-book::schoolbook
::school-boy::schoolboy
::share-cropper::sharecropper
::sheep-skin::sheepskin
::shoe-lace::shoelace
::shoe-maker::shoemaker
::show-off::showoff
::side-burns::sideburns
::side-show::sideshow
::sister-hood::sisterhood
::six-fold::sixfold
::skin-tight::skintight
::sky-light::skylight
::sky-scraper::skyscraper
::slap-stick::slapstick
::slow-down::slowdown
::slum-lord::slumlord
::snake-skin::snakeskin
::snow-ball::snowball
::snow-bank::snowbank
::snow-bird::snowbird
::snow-shovel::snowshovel
::soft-ware::software
::sound-proof::soundproof
::south-east::southeast
::soy-bean::soybean
::spill-way::spillway
::stage-hand::stagehand
::stand-off::standoff
::stand-out::standout
::stand-pipe::standpipe
::stand-point::standpoint
::star-fish::starfish
::steam-boat::steamboat
::steam-ship::steamship
::step-son::stepson
::stock-room::stockroom
::stone-wall::stonewall
::stop-light::stoplight
::stop-watch::stopwatch
::strong-hold::stronghold
::sun-baked::sunbaked
::Sun-day::Sunday
::sun-dial::sundial
::sun-down::sundown
::sun-fish::sunfish
::sun-glasses::sunglasses
::sun-lit::sunlit
::sun-ray::sunray
::sun-up::sunup
::super-human::superhuman
::sweet-heart::sweetheart
::table-spoon::tablespoon
::table-top::tabletop
::table-ware::tableware
::tad-pole::tadpole
::tag-along::tagalong
::tail-gate::tailgate
::tail-light::taillight
::tail-like::taillike
::tail-piece::tailpiece
::tail-spin::tailspin
::take-off::takeoff
::take-out::takeout
::take-over::takeover
::tap-room::taproom
::tap-root::taproot
::tar-get::target
::task-master::taskmaster
::team-mate::teammate
::tea-spoon::teaspoon
::tell-tale::telltale
::tender-foot::tenderfoot
::ten-fold::tenfold
::thunder-bird::thunderbird
::thunder-bolt::thunderbolt
::time-pieces::timepieces
::time-saving::timesaving
::time-share::timeshare
::turn-about::turnabout
::turn-around::turnaround
::turn-buckle::turnbuckle
::turn-coat::turncoat
::turn-down::turndown
::turn-key::turnkey
::turn-off::turnoff
::turn-table::turntable
::type-writer::typewriter
::under-clothes::underclothes
::up-market::upmarket
::up-set::upset
::up-standing::upstanding
::up-stroke::upstroke
::up-take::uptake
::up-town::uptown
::up-sell::upsell
::waist-line::waistline
::walk-ways::walkways
::wall-eyed::walleyed
::ward-room::wardroom
::war-fare::warfare
::wash-cloth::washcloth
::wash-house::washhouse
::wash-rag::washrag
::waste-basket::wastebasket
::waste-water::wastewater
::watch-word::watchword
::water-color::watercolor
::water-cooler::watercooler
::water-mark::watermark
::water-power::waterpower
::water-tight::watertight
::water-wheel::waterwheel
::water-works::waterworks
::wave-length::wavelength
::wave-like::wavelike
::wax-work::waxwork
::way-bill::waybill
::way-farer::wayfarer
::way-laid::waylaid
::way-side::wayside
::way-ward::wayward
::weather-cock::weathercock
::weather-proof::weatherproof
::week-day::weekday
::week-night::weeknight
::week-end::weekend
::what-so-ever::whatsoever
::wheel-chair::wheelchair
::wheel-house::wheelhouse
::wipe-out::wipeout
::after-noon::afternoon
::air-field::airfield
:*:air-plane::airplane
:*:air-port::airport
::along-side::alongside
::al-so::also
::an-other::another
::any-body::anybody
::any-how::anyhow
::any-more::anymore
::any-one::anyone
::any-place::anyplace
::any-time::anytime
::any-way::anyway
::any-where::anywhere
::a-round::around
::ash-tray::ashtray
::atch-case::atchcase
::baby-sitter::babysitter
::back-ache::backache
::back-bite::backbite
::back-bone::backbone
::back-breaker::backbreaker
::back-drop::backdrop
::back-fire::backfire
::back-ground::background
::back-hand::backhand
::back-lash::backlash
::back-log::backlog
::back-pack::backpack
::back-side::backside
::back-slap::backslap
::back-space::backspace
::back-spin::backspin
::back-stage::backstage
::back-track::backtrack
::back-ward::backward
::ball-park::ballpark
::ball-room::ballroom
::bank-book::bankbook
::bank-roll::bankroll
::base-ball::baseball
::basket-ball::basketball
::beach-comb::beachcomb
::be-came::became
::be-cause::because
::be-come::become
::bed-room::bedroom
::bell-bottom::bellbottom
::be-low::below
:*:black-ball::blackball
:*:black-berr::blackberr
::black-bird::blackbird
::black-board::blackboard
::black-jack::blackjack
:*:black-list::blacklist
:*:black-mail::blackmail
:*:black-out::blackout
:*:black-smith::blacksmith
:*:black-top::blacktop
::blow-gun::blowgun
::blue-fish::bluefish
::board-walk::boardwalk
::body-work::bodywork
::bold-face::boldface
::book-case::bookcase
::book-end::bookend
::book-keeper::bookkeeper
::book-mark::bookmark
::book-mobile::bookmobile
::book-shelf::bookshelf
::book-store::bookstore
::book-worm::bookworm
::boot-strap::bootstrap
::brain-child::brainchild
::butter-flies::butterflies
::by-pass::bypass
::can-not::cannot
::card-board::cardboard
::care-free::carefree
::car-fare::carfare
::car-go::cargo
::car-hop::carhop
::car-load::carload
::carpet-bagger::carpetbagger
::car-pool::carpool
::car-port::carport
::car-rack::carrack
::car-sick::carsick
::cart-wheel::cartwheel
::cave-man::caveman
::common-place::commonplace
::corn-meal::cornmeal
::court-yard::courtyard
::cross-over::crossover
::cross-walk::crosswalk
::day-book::daybook
::day-break::daybreak
::day-dream::daydream
::day-light::daylight
::day-time::daytime
::dead-line::deadline
::dish-cloth::dishcloth
::dish-pan::dishpan
::dish-washer::dishwasher
::dish-water::dishwater
::disk-drive::diskdrive
::dog-wood::dogwood
::door-stop::doorstop
::down-beat::downbeat
::draw-bridge::drawbridge
::earth-quake::earthquake
::egg-shell::eggshell
::else-where::elsewhere
::every-thing::everything
::eye-balls::eyeballs
::eye-catching::eyecatching
::eye-sight::eyesight
::fire-ball::fireball
::fire-cracker::firecracker
::fire-fighter::firefighter
::fire-flies::fireflies
::fire-house::firehouse
::fire-proof::fireproof
::fire-water::firewater
::fire-works::fireworks
::flesh-light::fleshlight
::flesh light::fleshlight
::fisher-man::fisherman
::fish-eye::fisheye
::fish-like::fishlike
::fish-net::fishnet
::fish-pond::fishpond
::fish-tail::fishtail
::foot-ball::football
::foot-note::footnote
::foot-prints::footprints
::for-bearer::forbearer
::for-bid::forbid
::fore-arm::forearm
::fore-father::forefather
::fore-finger::forefinger
::fore-ground::foreground
::fore-hand::forehand
::fore-head::forehead
::fore-knowledge::foreknowledge
::fore-leg::foreleg
::fore-man::foreman
::fore-see::foresee
::fore-stall::forestall
::fore-thought::forethought
::for-get::forget
::for-give::forgive
::fork-lift::forklift
::for-mat::format
::fort-night::fortnight
::friend-ship::friendship
::gear-shift::gearshift
::glass-making::glassmaking
::grand-aunt::grandaunt
::grand-child::grandchild
::grand-children::grandchildren
::grand-daughter::granddaughter
::grand-father::grandfather
::grand-master::grandmaster
::grand-mother::grandmother
::grand-nephew::grandnephew
::grand-nieces::grandnieces
::grand-parent::grandparent
::grand-son::grandson
::grand-stand::grandstand
::grand-uncle::granduncle
::grass-hopper::grasshopper
::gum-ball::gumball
::ham-burger::hamburger
::hand-cuff::handcuff
::head-quarters::headquarters
::here-in::herein
::here-upon::hereupon
::her-self::herself
::high-land::highland
::high-way::highway
::him-self::himself
::home-made::homemade
::home-town::hometown
::honey-bee::honeybee
::honey-comb::honeycomb
::honey-dew::honeydew
::honey-moon::honeymoon
::honey-suckle::honeysuckle
::hook-up::hookup
::horse-back::horseback
::house-hold::household
::house-keeper::housekeeper
::house-top::housetop
::how-ever::however
::in-side::inside
::it-self::itself
::jack-pot::jackpot
::jail-bait::jailbait
::jelly-fish::jellyfish
::jet-port::jetport
::key-board::keyboard
::key-hole::keyhole
::key-note::keynote
::key-pad::keypad
::key-punch::keypunch
::key-stone::keystone
::key-stroke::keystroke
::key-way::keyway
::key-word::keyword
::life-blood::lifeblood
::life-boat::lifeboat
::life-guard::lifeguard
::life-like::lifelike
::life-line::lifeline
::life-long::lifelong
::life-saver::lifesaver
::life-time::lifetime
::life-work::lifework
::lime-stone::limestone
::long-house::longhouse
::luke-warm::lukewarm
::mean-time::meantime
::mean-while::meanwhile
::moon-beam::moonbeam
::moon-light::moonlight
::moon-lit::moonlit
::more-over::moreover
::near-by::nearby
::new-found::newfound
::news-letter::newsletter
::news-man::newsman
::news-paper::newspaper
::news-reel::newsreel
::news-room::newsroom
::news-stand::newsstand
::news-worthy::newsworthy
::night-fall::nightfall
::no-body::nobody
::noise-maker::noisemaker
::north-east::northeast
::note-book::notebook
::no-where::nowhere
::nut-cracker::nutcracker
::one-self::oneself
::one-time::onetime
::over-abundance::overabundance
::over-coat::overcoat
::over-flow::overflow
::over-land::overland
::pace-maker::pacemaker
::pan-cake::pancake
::pass-book::passbook
::pass-port::passport
::pepper-mint::peppermint
::pick-up::pickup
::pin-stripe::pinstripe
::play-things::playthings
::pop-corn::popcorn
::racquet-ball::racquetball
::rail-road::railroad
::rain-bow::rainbow
::rain-check::raincheck
::rattle-snake::rattlesnake
::repair-man::repairman
:*:river-bank::riverbank
::sand-stone::sandstone
::sauce-pan::saucepan
::scape-goat::scapegoat
::scare-crow::scarecrow
::school-bus::schoolbus
::school-house::schoolhouse
::school-work::schoolwork
::sea-shore::seashore
::set-back::setback
::shady-side::shadyside
::sharp-shooter::sharpshooter
::ship-bottom::shipbottom
::short-bread::shortbread
::show-place::showplace
::side-kick::sidekick
::side-walk::sidewalk
::silver-smith::silversmith
::skate-board::skateboard
::sky-lark::skylark
::snow-drift::snowdrift
::soft-ball::softball
::some-body::somebody
::some-day::someday
::some-how::somehow
::some-one::someone
::some-place::someplace
::some-thing::something
::some-times::sometimes
::some-what::somewhat
::some-where::somewhere
::south-west::southwest
::spear-mint::spearmint
::spokes-person::spokesperson
::stand-by::standby
::store-rooms::storerooms
::sub-way::subway
::sun-bathe::sunbathe
::sun-flower::sunflower
::sun-roof::sunroof
::super-cargo::supercargo
::super-charge::supercharge
::super-cool::supercool
::super-ego::superego
::super-fine::superfine
::super-giant::supergiant
::super-hero::superhero
::super-highways::superhighways
::super-impose::superimpose
::super-man::superman
::super-market::supermarket
::super-men::supermen
::super-natural::supernatural
::super-power::superpower
::super-script::superscript
::super-sensitive::supersensitive
::super-sonic::supersonic
::super-star::superstar
::super-strong::superstrong
::super-structure::superstructure
::super-tanker::supertanker
::super-weapon::superweapon
::super-woman::superwoman
::sweet-meat::sweetmeat
::table-cloth::tablecloth
::tail-bone::tailbone
::tail-coat::tailcoat
::tale-bearer::talebearer
::tale-teller::taleteller
::tape-worm::tapeworm
::taxi-cab::taxicab
::tax-payer::taxpayer
::tea-cup::teacup
::team-work::teamwork
::tea-pot::teapot
::teen-ager::teenager
::text-book::textbook
::them-selves::themselves
::there-fore::therefore
::throw-away::throwaway
::throw-back::throwback
::thunder-storm::thunderstorm
::time-keeper::timekeeper
::time-table::timetable
::to-day::today
::to-gether::together
::tool-box::toolbox
::tooth-paste::toothpaste
::tooth-pick::toothpick
::touch-down::touchdown
::town-ship::township
::under-achieve::underachieve
::under-act::underact
::under-age::underage
::under-arm::underarm
::under-belly::underbelly
::under-bid::underbid
::under-charge::undercharge
::under-cover::undercover
::under-current::undercurrent
::under-cut::undercut
::under-develop::underdevelop
::under-dog::underdog
::under-estimate::underestimate
::under-expose::underexpose
::under-foot::underfoot
::under-ground::underground
::up-beat::upbeat
::up-bringing::upbringing
::up-coming::upcoming
::up-date::update
::up-end::upend
::up-grade::upgrade
::up-heaval::upheaval
::up-held::upheld
::up-hill::uphill
::up-hold::uphold
::up-keep::upkeep
::up-land::upland
::up-lift::uplift
::up-link::uplink
::up-load::upload
::up-on::upon
::upper-case::uppercase
::upper-class-man::upperclassman
::upper-cut::uppercut
::upper-most::uppermost
::up-right::upright
::up-rising::uprising
::up-roar::uproar
::up-root::uproot
::up-scale::upscale
::up-shot::upshot
::up-side::upside
::up-stage::upstage
::up-stairs::upstairs
::up-start::upstart
::up-state::upstate
::up-stream::upstream
::up-thrust::upthrust
::up-tight::uptight
::up-time::uptime
::up-turn::upturn
::up-ward::upward
::up-wind::upwind
::wall-paper::wallpaper
::ware-house::warehouse
::war-like::warlike
::warm-blooded::warmblooded
::war-path::warpath
::wash-board::washboard
::wash-bowl::washbowl
::wash-out::washout
::wash-room::washroom
::wash-stand::washstand
::wash-tub::washtub
::waste-land::wasteland
::waste-paper::wastepaper
::watch-band::watchband
::watch-dog::watchdog
::watch-maker::watchmaker
::watch-man::watchman
::watch-tower::watchtower
::water-craft::watercraft
::water-fall::waterfall
::water-fowl::waterfowl
::water-line::waterline
::water-log::waterlog
::water-melon::watermelon
::water-proof::waterproof
::water-scape::waterscape
::water-shed::watershed
::water-side::waterside
::water-spout::waterspout
::water-way::waterway
::weather-man::weatherman
::what-ever::whatever
::wheel-barrow::wheelbarrow
::wheel-base::wheelbase
::white-cap::whitecap
::white-fish::whitefish
::white-wall::whitewall
::white-wash::whitewash
::wide-spread::widespread
::with-out::without
::wood-shop::woodshop
::any-thing::anything
::arm-chair::armchair
::bath-robe::bathrobe
::bath-tub::bathtub
::battle-ship::battleship
::bee-line::beeline
::birth-day::birthday
::book-let::booklet
::brief-case::briefcase
::butter-fly::butterfly
::camp-fire::campfire
::camp-ground::campground
::car-pet::carpet
::chop-stick::chopstick
::class-mate::classmate
::cow-boy::cowboy
::cup-board::cupboard
::cut-let::cutlet
::dare-devil::daredevil
::door-bell::doorbell
::door-mat::doormat
::door-step::doorstep
::door-way::doorway
::dragon-fly::dragonfly
::drop-let::droplet
::ear-rings::earrings
::ever-green::evergreen
::every-body::everybody
::every-day::everyday
::eye-ball::eyeball
::finger-print::fingerprint
::fire-place::fireplace
::foot-print::footprint
::four-fold::fourfold
::gentle-man::gentleman
::gold-fish::goldfish
::green-house::greenhouse
::ground-nut::groundnut
::hail-storm::hailstorm
::hall-way::hallway
::head-master::headmaster
::head-mistress::headmistress
::heart-beat::heartbeat
::heart-broken::heartbroken
::home-work::homework
::jaw-bone::jawbone
::lady-bug::ladybug
::land-lady::landlady
::land-lord::landlord
::leader-ship::leadership
::leaf-let::leaflet
::length-wise::lengthwise
::light-house::lighthouse
::loud-speaker::loudspeaker
::master-piece::masterpiece
::match-stick::matchstick
::meat-ball::meatball
::my-self::myself
::neck-tie::necktie
::off-hand::offhand
::on-line::online
::other-wise::otherwise
::out-door::outdoor
::out-field::outfield
::out-fit::outfit
::out-grow::outgrow
::out-law::outlaw
::out-let::outlet
::out-number::outnumber
::out-patient::outpatient
::out-side::outside
::over-dose::overdose
::over-due::overdue
::partner-ship::partnership
::pen-knife::penknife
::photo-copy::photocopy
::play-ground::playground
::play-room::playroom
::post-man::postman
::rain-drops::raindrops
::ring-worm::ringworm
::sand-bags::sandbags
::sand-castle::sandcastle
::sand-paper::sandpaper
::sea-food::seafood
::sea-weed::seaweed
::ship-wreck::shipwreck
::shoe-string::shoestring
::snow-board::snowboard
::snow-storm::snowstorm
::space-ship::spaceship
::stair-case::staircase
::star-light::starlight
::stomach-ache::stomachache
:*:straw-berr::strawberr
::sun-light::sunlight
::sun-shine::sunshine
::surf-board::surfboard
::tight-rope::tightrope
::tomb-stone::tombstone
::tooth-brush::toothbrush
::under-stand::understand
::ward-robe::wardrobe
::war-ship::warship
::wood-cutter::woodcutter
::wood-land::woodland
::wood-pile::woodpile
::wood-shed::woodshed
::wood-work::woodwork
::wood-worm::woodworm
::your-self::yourself
::bumble-bee::bumblebee
::chick-pea::chickpea
::cry-baby::crybaby
::leap-frog::leapfrog
::log-jam::logjam
::low-life::lowlife
::pigeon-hole::pigeonhole
::touch-line::touchline
::water-borne::waterborne
::after-thought::afterthought
::awe-struck::awestruck
::back-up::backup
::back-yard::backyard
::before-hand::beforehand
::break-down::breakdown
::breath-taking::breathtaking
::build-up::buildup
::burn-out::burnout
::by-product::byproduct
::care-giver::caregiver
::carry-over::carryover
::check-out::checkout
::church-goer::churchgoer
::city-wide::citywide
::clean-up::cleanup
::color-blind::colorblind
::co-operative::cooperative
::copy-edit::copyedit
::country-side::countryside
::co-worker::coworker
::bank-card::bankcard
::data-base::database
::day-care::daycare
::day-long::daylong
::easy-going::easygoing
::extra-curricular::extracurricular
::fall-off::falloff
::fall-out::fallout
::free-lance::freelance
::front-line::frontline
::fund-raiser::fundraiser
::fund-raising::fundraising
::ghost-write::ghostwrite
::good-will::goodwill
::grass-roots::grassroots
::grown-up::grownup
::ground-water::groundwater
::hard-core::hardcore
::hold-up::holdup
::home-owner::homeowner
::hour-long::hourlong
::in-patient::inpatient
::kick-off::kickoff
::life-style::lifestyle
::make-up::makeup
::market-place::marketplace
::month-long::monthlong
::nation-wide::nationwide
::never-the-less::nevertheless
::non-compliance::noncompliance
::non-conforming::nonconforming
::non-conformity::nonconformity
::none-the-less::nonetheless
::non-profit::nonprofit
::not-with-standing::notwithstanding
::office-holder::officeholder
::on-board::onboard
::on-going::ongoing
::over-exposure::overexposure
::over-generalization::overgeneralization
::over-generalize::overgeneralize
::paper-work::paperwork
::per-cent::percent
::policy-maker::policymaker
::policy-making::policymaking
::post-script::postscript
::pre-empt::preempt
::pre-emptive::preemptive
::print-out::printout
::pro-active::proactive
::proof-read::proofread
::pot-hole::pothole
::red-headed::redheaded
::roll-out::rollout
::school-mate::schoolmate
::school-room::schoolroom
::school-teacher::schoolteacher
::school-yard::schoolyard
::spread-sheet::spreadsheet
::spring-time::springtime
::start-up::startup
::state-wide::statewide
::stock-holder::stockholder
::story-teller::storyteller
::summer-time::summertime
::there-of::thereof
::time-line::timeline
::toss-up::tossup
::touch-point::touchpoint
::voice-mail::voicemail
::wait-person::waitperson
::web-page::webpage
::web-site::website
::week-long::weeklong
::white-out::whiteout
::winter-time::wintertime
::work-bench::workbench
::work-day::workday
::work-flow::workflow
::work-force::workforce
::work-group::workgroup
::work-load::workload
::work-out::workout
::work-place::workplace
::work-room::workroom
::work-sheet::worksheet
::work-station::workstation
::work-table::worktable
::work-week::workweek
::work-woman::workwoman
::wrong-doing::wrongdoing
::year-long::yearlong
::work flow::workflow
::school mate::schoolmate
::school room::schoolroom
::school teacher::schoolteacher
::school work::schoolwork
::school yard::schoolyard
:*:African-American::African American
::afterall::after all
::cashflow::cash flow
::coursework::course work
::everytime::every time
::factsheet::fact sheet
::foodshelf::food shelf
::helpdesk::help desk
::lifespan::life span
::mindframe::mind frame
::moreso::more so
::onsite::on site
::paperflow::paper flow
::proforma::pro forma
::prorata::pro rata
::schoolday::school day
::schoolyear::school year
::timeframe::time frame
::timesaver::time saver
::vicepresident::vice president
::waitingroom::waiting room
::wordprocessing::word processing
::workrelease::work release
:*:AfricanAmerican::African American
::after-all::after all
::cash-flow::cash flow
::course-work::course work
::every-time::every time
::fact-sheet::fact sheet
::food-shelf::food shelf
::help-desk::help desk
::life-span::life span
::mind-frame::mind frame
::more-so::more so
::on-site::on site
::paper-flow::paper flow
::pro-forma::pro forma
::pro-rata::pro rata
::school-day::school day
::school-year::school year
::time-frame::time frame
::time-saver::time saver
::vice-president::vice president
::waiting-room::waiting room
::word-processing::word processing
::work-release::work release
::able bodied::able-bodied
;::absent minded::absent-minded
::ad lib::ad-lib
::A frame::A-frame
::check in::check-in
::clean cut::clean-cut
::close up::close-up
::co op::co-op
::co operative::cooperative
::co operate::cooperate
::empty handed::empty-handed
::fact finding::fact-finding
::father in law::father-in-law
::far flung::far-flung
::far off::far-off
::far ranging::far-ranging
::frame up::frame-up
::free for all::free-for-all
::get together::get-together
::get tough::get-tough
::G string::G-string
::half mast::half-mast
::half staff::half-staff
::hand picked::hand-picked
::hanky panky::hanky-panky
::hi fi::hi-fi
::high tech::high-tech
::ho hum::ho-hum
::hush hush::hush-hush
::in depth::in-depth
;::in law::in-law
::in network::in-network
;::know how::know-how
::life size::life-size
::mind blowing::mind-blowing
::mind boggling::mind-boggling
::mother in law::mother-in-law
::narrow minded::narrow-minded
::nitty gritty::nitty-gritty
::not for profit::not-for-profit
::on site::on-site
::one sided::one-sided
::passer by::passer-by
::pell mell::pell-mell
::pooh pooh::pooh-pooh
::red haired::red-haired
::red hot::red-hot
:*:re elect::re-elect
::roly poly::roly-poly
::second rate::second-rate
::self service::self-service
::shrink wrap::shrink-wrap
::sign in::sign-in
::sign on::sign-on
::soft spoken::soft-spoken
::straight laced::straight-laced
::strong arm::strong-arm
::strong willed::strong-willed
::time consuming::time-consuming
::T shirt::T-shirt
::U boat::U-boat
::U turn::U-turn
::V neck::V-neck
::voice over::voice-over
::vote getter::vote-getter
;::re election::re-election
::warm up::warm-up
::weak kneed::weak-kneed
::well being::well-being
::well to do::well-to-do
::wheeler dealer::wheeler-dealer
::word of mouth::word-of-mouth
::worn out::worn-out
::write out::write-out
::year end::year-end
::ablebodied::able-bodied
::absentminded::absent-minded
::adlib::ad-lib
::Aframe::A-frame
::checkin::check-in
::cleancut::clean-cut
::closeup::close-up
::coop::co-op
::cooperative::cooperative
::cooperate::cooperate
::emptyhanded::empty-handed
::factfinding::fact-finding
::fatherinlaw::father-in-law
::farflung::far-flung
::faroff::far-off
::farranging::far-ranging
::frameup::frame-up
::freeforall::free-for-all
::gettogether::get-together
::gettough::get-tough
::Gstring::G-string
::halfmast::half-mast
::halfstaff::half-staff
::handpicked::hand-picked
::hankypanky::hanky-panky
::hifi::hi-fi
::hightech::high-tech
::hohum::ho-hum
::hushhush::hush-hush
::indepth::in-depth
::inlaw::in-law
::innetwork::in-network
::knowhow::know-how
::lifesize::life-size
::mindblowing::mind-blowing
::mindboggling::mind-boggling
::motherinlaw::mother-in-law
::narrowminded::narrow-minded
::nittygritty::nitty-gritty
::notforprofit::not-for-profit
::onesided::one-sided
::passerby::passer-by
::pellmell::pell-mell
::poohpooh::pooh-pooh
::redhaired::red-haired
::redhot::red-hot
:*:reelect::re-elect
::rolypoly::roly-poly
::secondrate::second-rate
::selfservice::self-service
::shrinkwrap::shrink-wrap
::signin::sign-in
::signon::sign-on
::softspoken::soft-spoken
::straightlaced::straight-laced
::strongarm::strong-arm
::strongwilled::strong-willed
::timeconsuming::time-consuming
::Tshirt::T-shirt
:*:Uboat::U-boat
:*:Uturn::U-turn
::Vneck::V-neck
::voiceover::voice-over
::votegetter::vote-getter
::reelection::re-election
::warmup::warm-up
::weakkneed::weak-kneed
::wellbeing::well-being
::welltodo::well-to-do
::wheelerdealer::wheeler-dealer
::wordofmouth::word-of-mouth
::wornout::worn-out
::writeout::write-out
::yearend::year-end
::lefthand::left hand
::lefthanded::left-handed
::lefthander::left-hander
::righthand::right hand
:*:righthande::right-hande
::righthander::right-hander
::left-hand::left hand
::left handed::left-handed
::left hander::left-hander
::right-hand::right hand
:*:right hande::right-hande
::right hander::right-hander
::wordprocessed::word-processed
::word processed::word-processed
;::INPUT::OUTPUT
:*:after glow::afterglow
::space walk::spacewalk
::water front::waterfront
;::above board::aboveboard
:*:after image::afterimage
::after life::afterlife
::air craft::aircraft
::air lift::airlift
::air line::airline
::air men::airmen
:*:air time::airtime
::all over::allover
::all spice::allspice
::back slide::backslide
::back stroke::backstroke
::bed clothes::bedclothes
::bed rock::bedrock
::bed roll::bedroll
::bell boy::bellboy
::bell hop::bellhop
::blue bell::bluebell
:*:blue berr::blueberr
::blue bird::bluebird
::blue grass::bluegrass
::blue print::blueprint
::body guard::bodyguard
::book seller::bookseller
::bow legs::bowlegs
::bow tie::bowtie
::brain wash::brainwash
::bug spray::bugspray
::butter ball::butterball
::butter cup::buttercup
::butter fingers::butterfingers
::butter milk::buttermilk
::butter nut::butternut
::butter scotch::butterscotch
::cab driver::cabdriver
::can can::cancan
::candle light::candlelight
::candle stick::candlestick
::card sharp::cardsharp
::card stock::cardstock
::care taker::caretaker
::care worn::careworn
::carry all::carryall
;::cat tail::cattail
::cat walk::catwalk
::center cut::centercut
::cheese burger::cheeseburger
::cheese cake::cheesecake
::clock wise::clockwise
::coffee maker::coffeemaker
::come back::comeback
::come down::comedown
::common wealth::commonwealth
::court house::courthouse
::crew cut::crewcut
::cross bow::crossbow
::cross breed::crossbreed
::cross cut::crosscut
::dairy maid::dairymaid
::daisy wheel::daisywheel
::day bed::daybed
::dead end::deadend
::drive way::driveway
::duck bill::duckbill
::duck pin::duckpin
::duck weed::duckweed
::ear ache::earache
::ear drop::eardrop
::ear drum::eardrum
::ear ring::earring
::earth bound::earthbound
::earth ward::earthward
::earth worm::earthworm
::egg head::egghead
::eye glasses::eyeglasses
::eye lash::eyelash
::eye lid::eyelid
::eye witness::eyewitness
::father land::fatherland
::fire arm::firearm
::fire boat::fireboat
::fire bomb::firebomb
::fire break::firebreak
::fish bowl::fishbowl
::fish hook::fishhook
::fish monger::fishmonger
::foot hill::foothill
::foot lights::footlights
::foot locker::footlocker
::foot rest::footrest
;::fore bear::forebear
;::fore brain::forebrain
;::fore cast::forecast
::fore castle::forecastle
;::fore close::foreclose
::fore closure::foreclosure
;::fore doom::foredoom
;::fore feet::forefeet
;::fore foot::forefoot
;::fore go::forego
;::fore gone::foregone
::fore most::foremost
;::fore paws::forepaws
;::fore shadow::foreshadow
;::fore sight::foresight
;::fore told::foretold
;::for ever::forever
;::fore warn::forewarn
;::fore word::foreword
::fruit cup::fruitcup
::good bye::goodbye
::good night::goodnight
::grass land::grassland
::grave yard::graveyard
::hair cut::haircut
::hammer head::hammerhead
::hand book::handbook
::hand gun::handgun
::hand made::handmade
;::hand out::handout
::head ache::headache
::head dress::headdress
::head light::headlight
::head line::headline
::here after::hereafter
::here by::hereby
::high ball::highball
::high chair::highchair
::hook worm::hookworm
::horse fly::horsefly
::horse hair::horsehair
::horse man::horseman
::horse play::horseplay
::horse power::horsepower
::horse radish::horseradish
::house boat::houseboat
::house work::housework
::in take::intake
::iron work::ironwork
::jelly bean::jellybean
::jet liner::jetliner
::jump shot::jumpshot
::lime light::limelight
::long hand::longhand
::main land::mainland
::main line::mainline
::match box::matchbox
::moon scape::moonscape
;::moon shine::moonshine
::moon struck::moonstruck
::moon walk::moonwalk
::moth ball::mothball
::mother hood::motherhood
::motor cycle::motorcycle
::never more::nevermore
::new born::newborn
::news boy::newsboy
::news break::newsbreak
::news caster::newscaster
::news dealer::newsdealer
::news person::newsperson
::news print::newsprint
::note worthy::noteworthy
::nurse maid::nursemaid
::over board::overboard
::over shoes::overshoes
::pass key::passkey
::Pass over::Passover
::pay check::paycheck
::pin hole::pinhole
::pin up::pinup
::pin wheel::pinwheel
::play back::playback
::play boy::playboy
::play house::playhouse
::pony tail::ponytail
::post card::postcard
::rail way::railway
::rain coat::raincoat
::rain drop::raindrop
::rain storm::rainstorm
::rain water::rainwater
::rattle trap::rattletrap
::rubber band::rubberband
::sail boat::sailboat
::sales clerk::salesclerk
::sand lot::sandlot
::school book::schoolbook
::school boy::schoolboy
::share cropper::sharecropper
::sheep skin::sheepskin
::shoe lace::shoelace
::shoe maker::shoemaker
::show off::showoff
::side burns::sideburns
::side show::sideshow
::sister hood::sisterhood
::six fold::sixfold
::skin tight::skintight
::sky light::skylight
::sky scraper::skyscraper
::slap stick::slapstick
::slow down::slowdown
::slum lord::slumlord
::snake skin::snakeskin
::snow ball::snowball
::snow bank::snowbank
::snow bird::snowbird
::snow shovel::snowshovel
::soft ware::software
::sound proof::soundproof
::south east::southeast
::soy bean::soybean
::spill way::spillway
::stage hand::stagehand
::stand off::standoff
::stand out::standout
::stand pipe::standpipe
::stand point::standpoint
::star fish::starfish
::steam boat::steamboat
::steam ship::steamship
::step son::stepson
::stock room::stockroom
::stone wall::stonewall
::stop light::stoplight
::stop watch::stopwatch
::strong hold::stronghold
::sun baked::sunbaked
::Sun day::Sunday
::sun dial::sundial
::sun down::sundown
::sun fish::sunfish
::sun glasses::sunglasses
::sun lit::sunlit
::sun ray::sunray
::sun up::sunup
::super human::superhuman
::sweet heart::sweetheart
::table spoon::tablespoon
::table top::tabletop
::table ware::tableware
::tad pole::tadpole
::tag along::tagalong
::tail gate::tailgate
::tail light::taillight
::tail like::taillike
::tail piece::tailpiece
::tail spin::tailspin
::take off::takeoff
::take out::takeout
::take over::takeover
::tap room::taproom
::tap root::taproot
::tar get::target
::task master::taskmaster
::team mate::teammate
::tea spoon::teaspoon
::tell tale::telltale
::tender foot::tenderfoot
::ten fold::tenfold
::thunder bird::thunderbird
::thunder bolt::thunderbolt
::time pieces::timepieces
::time saving::timesaving
::time share::timeshare
::turn about::turnabout
::turn around::turnaround
::turn buckle::turnbuckle
::turn coat::turncoat
::turn down::turndown
::turn key::turnkey
;::turn off::turnoff
::turn table::turntable
::type writer::typewriter
::under clothes::underclothes
::up market::upmarket
::up set::upset
::up standing::upstanding
::up stroke::upstroke
::up take::uptake
::up town::uptown
::up sell::upsell
::waist line::waistline
::walk ways::walkways
::wall eyed::walleyed
::ward room::wardroom
::war fare::warfare
::wash cloth::washcloth
::wash house::washhouse
::wash rag::washrag
::waste basket::wastebasket
::waste water::wastewater
::watch word::watchword
::water color::watercolor
::water cooler::watercooler
::water mark::watermark
::water power::waterpower
::water tight::watertight
::water wheel::waterwheel
::water works::waterworks
::wave length::wavelength
::wave like::wavelike
::wax work::waxwork
::way bill::waybill
::way farer::wayfarer
::way laid::waylaid
::way side::wayside
::way ward::wayward
::weather cock::weathercock
::weather proof::weatherproof
::week day::weekday
::week night::weeknight
::week end::weekend
::what so ever::whatsoever
::wheel chair::wheelchair
::wheel house::wheelhouse
::wipe out::wipeout
:*:after noon::afternoon
::air field::airfield
:*:air plane::airplane
:*:air port::airport
::along side::alongside
::al so::also
::an other::another
::any body::anybody
::any how::anyhow
::any more::anymore
::any one::anyone
::any place::anyplace
::any time::anytime
::any way::anyway
::any where::anywhere
::a round::around
::ash tray::ashtray
::atch case::atchcase
::baby sitter::babysitter
::back ache::backache
::back bite::backbite
::back bone::backbone
::back breaker::backbreaker
::back drop::backdrop
::back fire::backfire
::back ground::background
::back hand::backhand
::back lash::backlash
::back log::backlog
::back pack::backpack
::back side::backside
::back slap::backslap
::back space::backspace
::back spin::backspin
::back stage::backstage
::back track::backtrack
::back ward::backward
::ball park::ballpark
::ball room::ballroom
::bank book::bankbook
::bank roll::bankroll
::base ball::baseball
::basket ball::basketball
::beach comb::beachcomb
::be came::became
::be cause::because
::be come::become
::bed room::bedroom
::bell bottom::bellbottom
::be low::below
:*:black ball::blackball
:*:black berr::blackberr
;::black bird::blackbird
;::black board::blackboard
::black jack::blackjack
::black list::blacklist
::black mail::blackmail
;::black out::blackout
;::black smith::blacksmith
;::black top::blacktop
::blow gun::blowgun
::blue fish::bluefish
::board walk::boardwalk
::body work::bodywork
::bold face::boldface
::book case::bookcase
::book end::bookend
::book keeper::bookkeeper
::book mark::bookmark
::book mobile::bookmobile
::book shelf::bookshelf
::book store::bookstore
::book worm::bookworm
::boot strap::bootstrap
::brain child::brainchild
::butter flies::butterflies
::by pass::bypass
;::can not::cannot
::card board::cardboard
::care free::carefree
::car fare::carfare
::car go::cargo
::car hop::carhop
::car load::carload
::carpet bagger::carpetbagger
::car pool::carpool
::car port::carport
::car rack::carrack
::car sick::carsick
::cart wheel::cartwheel
::cave man::caveman
::common place::commonplace
::corn meal::cornmeal
::court yard::courtyard
::cross over::crossover
::cross walk::crosswalk
::day book::daybook
::day break::daybreak
::day dream::daydream
::day light::daylight
::day time::daytime
::dead line::deadline
::dish cloth::dishcloth
::dish pan::dishpan
::dish washer::dishwasher
::dish water::dishwater
::disk drive::diskdrive
::dog wood::dogwood
::door stop::doorstop
::down beat::downbeat
::draw bridge::drawbridge
::earth quake::earthquake
::egg shell::eggshell
::else where::elsewhere
::every thing::everything
::eye balls::eyeballs
::eye catching::eyecatching
::eye sight::eyesight
::fire ball::fireball
::fire cracker::firecracker
::fire fighter::firefighter
::fire flies::fireflies
::fire house::firehouse
::fire proof::fireproof
::fire water::firewater
::fire works::fireworks
::fisher man::fisherman
::fish eye::fisheye
::fish like::fishlike
::fish net::fishnet
::fish pond::fishpond
::fish tail::fishtail
::foot ball::football
::foot note::footnote
::foot prints::footprints
;::for bearer::forbearer
;::for bid::forbid
;::fore arm::forearm
;::fore father::forefather
;::fore finger::forefinger
;::fore ground::foreground
;::fore hand::forehand
;::fore head::forehead
;::fore knowledge::foreknowledge
;::fore leg::foreleg
;::fore man::foreman
;::fore see::foresee
;::fore stall::forestall
;::fore thought::forethought
;::for get::forget
;::for give::forgive
::fork lift::forklift
;::for mat::format
::fort night::fortnight
::friend ship::friendship
::gear shift::gearshift
::glass making::glassmaking
::grand aunt::grandaunt
::grand child::grandchild
::grand children::grandchildren
::grand daughter::granddaughter
::grand father::grandfather
::grand master::grandmaster
::grand mother::grandmother
::grand nephew::grandnephew
::grand nieces::grandnieces
::grand parent::grandparent
::grand son::grandson
::grand stand::grandstand
::grand uncle::granduncle
::grass hopper::grasshopper
::gum ball::gumball
::ham burger::hamburger
::hand cuff::handcuff
::head quarters::headquarters
::here in::herein
::here upon::hereupon
::her self::herself
::high land::highland
::high way::highway
::him self::himself
::home made::homemade
::home town::hometown
::honey bee::honeybee
::honey comb::honeycomb
::honey dew::honeydew
::honey moon::honeymoon
::honey suckle::honeysuckle
::hook up::hookup
;::horse back::horseback
::house hold::household
::house keeper::housekeeper
::house top::housetop
::how ever::however
::in side::inside
::it self::itself
::jack pot::jackpot
::jail bait::jailbait
::jelly fish::jellyfish
::jet port::jetport
::key board::keyboard
::key hole::keyhole
::key note::keynote
::key pad::keypad
::key punch::keypunch
::key stone::keystone
::key stroke::keystroke
::key way::keyway
::key word::keyword
::life blood::lifeblood
::life boat::lifeboat
::life guard::lifeguard
::life like::lifelike
::life line::lifeline
::life long::lifelong
::life saver::lifesaver
::life time::lifetime
::life work::lifework
::lime stone::limestone
::long house::longhouse
::luke warm::lukewarm
::mean time::meantime
::mean while::meanwhile
::moon beam::moonbeam
::moon light::moonlight
::moon lit::moonlit
::more over::moreover
::near by::nearby
::new found::newfound
::news letter::newsletter
::news man::newsman
::news paper::newspaper
::news reel::newsreel
::news room::newsroom
::news stand::newsstand
::news worthy::newsworthy
::night fall::nightfall
::no body::nobody
::noise maker::noisemaker
::north east::northeast
::note book::notebook
::no where::nowhere
::nut cracker::nutcracker
::one self::oneself
::one time::onetime
::over abundance::overabundance
::over coat::overcoat
::over flow::overflow
::over land::overland
::pace maker::pacemaker
::pan cake::pancake
::pass book::passbook
::pass port::passport
::pepper mint::peppermint
::pick up::pickup
::pin stripe::pinstripe
::play things::playthings
::pop corn::popcorn
::racquet ball::racquetball
::rail road::railroad
::rain bow::rainbow
::rain check::raincheck
::rattle snake::rattlesnake
::repair man::repairman
:*:river bank::riverbank
::sand stone::sandstone
::sauce pan::saucepan
::scape goat::scapegoat
::scare crow::scarecrow
::school bus::schoolbus
::school house::schoolhouse
::sea shore::seashore
::set back::setback
::shady side::shadyside
::sharp shooter::sharpshooter
::ship bottom::shipbottom
::short bread::shortbread
::show place::showplace
::side kick::sidekick
::side walk::sidewalk
::silver smith::silversmith
::skate board::skateboard
::sky lark::skylark
::snow drift::snowdrift
::soft ball::softball
::some body::somebody
::some day::someday
::some how::somehow
::some one::someone
::some place::someplace
::some thing::something
::some times::sometimes
::some what::somewhat
::some where::somewhere
::south west::southwest
::spear mint::spearmint
::spokes person::spokesperson
::stand by::standby
::store rooms::storerooms
::sub way::subway
::sun bathe::sunbathe
::sun flower::sunflower
::sun roof::sunroof
::super cargo::supercargo
::super charge::supercharge
::super cool::supercool
::super ego::superego
::super fine::superfine
::super giant::supergiant
::super hero::superhero
::super highways::superhighways
::super impose::superimpose
::super man::superman
::super market::supermarket
::super men::supermen
::super natural::supernatural
::super power::superpower
::super script::superscript
::super sensitive::supersensitive
::super sonic::supersonic
::super star::superstar
::super strong::superstrong
::super structure::superstructure
::super tanker::supertanker
::super weapon::superweapon
::super woman::superwoman
::sweet meat::sweetmeat
::table cloth::tablecloth
::tail bone::tailbone
::tail coat::tailcoat
::tale bearer::talebearer
::tale teller::taleteller
::tape worm::tapeworm
::taxi cab::taxicab
::tax payer::taxpayer
::tea cup::teacup
::team work::teamwork
::tea pot::teapot
::teen ager::teenager
::text book::textbook
::them selves::themselves
::there fore::therefore
::throw away::throwaway
::throw back::throwback
::thunder storm::thunderstorm
::time keeper::timekeeper
::time table::timetable
::to day::today
::to gether::together
::tool box::toolbox
::tooth paste::toothpaste
::tooth pick::toothpick
::touch down::touchdown
::town ship::township
::under achieve::underachieve
::under act::underact
::under age::underage
::under arm::underarm
::under belly::underbelly
::under bid::underbid
::under charge::undercharge
::under cover::undercover
::under current::undercurrent
::under cut::undercut
::under develop::underdevelop
::under dog::underdog
::under estimate::underestimate
::under expose::underexpose
::under foot::underfoot
::under ground::underground
::up beat::upbeat
::up bringing::upbringing
::up coming::upcoming
::up date::update
::up end::upend
::up grade::upgrade
::up heaval::upheaval
::up held::upheld
::up hill::uphill
::up hold::uphold
::up keep::upkeep
::up land::upland
::up lift::uplift
::up link::uplink
::up load::upload
;::up on::upon
::upper case::uppercase
::upper class man::upperclassman
::upper cut::uppercut
::upper most::uppermost
::up right::upright
::up rising::uprising
::up roar::uproar
::up root::uproot
::up scale::upscale
::up shot::upshot
::up side::upside
::up stage::upstage
::up stairs::upstairs
::up start::upstart
::up state::upstate
::up stream::upstream
::up thrust::upthrust
::up tight::uptight
::up time::uptime
::up turn::upturn
::up ward::upward
::up wind::upwind
::wall paper::wallpaper
::ware house::warehouse
::war like::warlike
::warm blooded::warmblooded
::war path::warpath
::wash board::washboard
::wash bowl::washbowl
;::wash out::washout
::wash room::washroom
::wash stand::washstand
::wash tub::washtub
::waste land::wasteland
::waste paper::wastepaper
::watch band::watchband
::watch dog::watchdog
::watch maker::watchmaker
::watch man::watchman
::watch tower::watchtower
::water craft::watercraft
::water fall::waterfall
::water fowl::waterfowl
::water line::waterline
::water log::waterlog
::water melon::watermelon
::water proof::waterproof
::water scape::waterscape
::water shed::watershed
::water side::waterside
::water spout::waterspout
::water way::waterway
::weather man::weatherman
::what ever::whatever
::wheel barrow::wheelbarrow
::wheel base::wheelbase
::white cap::whitecap
::white fish::whitefish
::white wall::whitewall
::white wash::whitewash
::wide spread::widespread
::with out::without
:*:wood shop::woodshop
::any thing::anything
::arm chair::armchair
::bath robe::bathrobe
::bath tub::bathtub
::battle ship::battleship
::bee line::beeline
::birth day::birthday
::book let::booklet
::brief case::briefcase
::butter fly::butterfly
::camp fire::campfire
::camp ground::campground
::car pet::carpet
::chop stick::chopstick
::class mate::classmate
::cow boy::cowboy
::cup board::cupboard
::cut let::cutlet
::dare devil::daredevil
::door bell::doorbell
::door mat::doormat
::door step::doorstep
::door way::doorway
::dragon fly::dragonfly
::drop let::droplet
::ear rings::earrings
::ever green::evergreen
::every body::everybody
::every day::everyday
::eye ball::eyeball
::finger print::fingerprint
::fire place::fireplace
::foot print::footprint
::four fold::fourfold
::gentle man::gentleman
::gold fish::goldfish
;::green house::greenhouse
::ground nut::groundnut
::hail storm::hailstorm
::hall way::hallway
::head master::headmaster
::head mistress::headmistress
::heart beat::heartbeat
::heart broken::heartbroken
;::home work::homework
::jaw bone::jawbone
::lady bug::ladybug
::land lady::landlady
::land lord::landlord
::leader ship::leadership
::leaf let::leaflet
::length wise::lengthwise
::light house::lighthouse
::loud speaker::loudspeaker
::master piece::masterpiece
::match stick::matchstick
::meat ball::meatball
::my self::myself
::neck tie::necktie
::off hand::offhand
::on line::online
::other wise::otherwise
::out door::outdoor
::out field::outfield
::out fit::outfit
::out grow::outgrow
::out law::outlaw
::out let::outlet
::out number::outnumber
::out patient::outpatient
::out side::outside
::over dose::overdose
::over due::overdue
::partner ship::partnership
::pen knife::penknife
::photo copy::photocopy
::play ground::playground
::play room::playroom
::post man::postman
::rain drops::raindrops
::ring worm::ringworm
::sand bags::sandbags
::sand castle::sandcastle
::sand paper::sandpaper
::sea food::seafood
::sea weed::seaweed
::ship wreck::shipwreck
::shoe string::shoestring
::snow board::snowboard
::snow storm::snowstorm
::space ship::spaceship
::stair case::staircase
::star light::starlight
::stomach ache::stomachache
:*:straw berr::strawberr
::sun light::sunlight
::sun shine::sunshine
::surf board::surfboard
::tight rope::tightrope
::tomb stone::tombstone
::tooth brush::toothbrush
::under stand::understand
::ward robe::wardrobe
::war ship::warship
::wood cutter::woodcutter
:*:wood land::woodland
:*:wood pile::woodpile
:*:wood shed::woodshed
::wood work::woodwork
::wood worm::woodworm
;::your self::yourself
::bumble bee::bumblebee
::chick pea::chickpea
::cry baby::crybaby
::leap frog::leapfrog
::log jam::logjam
::low life::lowlife
::pigeon hole::pigeonhole
::touch line::touchline
::water borne::waterborne
;::after thought::afterthought
::awe struck::awestruck
::back up::backup
::back yard::backyard
::before hand::beforehand
::break down::breakdown
::breath taking::breathtaking
::build up::buildup
;::burn out::burnout
::by product::byproduct
::care giver::caregiver
::carry over::carryover
;::check out::checkout
::church goer::churchgoer
::city wide::citywide
::clean up::cleanup
::color blind::colorblind
::country side::countryside
::bank card::bankcard
::data base::database
::day care::daycare
::day long::daylong
::easy going::easygoing
::extra curricular::extracurricular
::fall off::falloff
;::fall out::fallout
::free lance::freelance
::front line::frontline
::fund raiser::fundraiser
::fund raising::fundraising
::ghost write::ghostwrite
::good will::goodwill
::grass roots::grassroots
;::grown up::grownup
::ground water::groundwater
::hard core::hardcore
::hold up::holdup
::home owner::homeowner
::hour long::hourlong
::in patient::inpatient
::kick off::kickoff
::life style::lifestyle
::make up::makeup
::market place::marketplace
::month long::monthlong
::nation wide::nationwide
::never the less::nevertheless
::non compliance::noncompliance
::non conforming::nonconforming
::non conformity::nonconformity
::none the less::nonetheless
::non profit::nonprofit
::not with standing::notwithstanding
::office holder::officeholder
::on board::onboard
::on going::ongoing
::over exposure::overexposure
::over generalization::overgeneralization
::over generalize::overgeneralize
::paper work::paperwork
::per cent::percent
::policy maker::policymaker
::policy making::policymaking
::post script::postscript
::pre empt::preempt
::pre emptive::preemptive
::print out::printout
::pro active::proactive
::proof read::proofread
::pot hole::pothole
::red headed::redheaded
::roll out::rollout
::spread sheet::spreadsheet
::spring time::springtime
::start up::startup
::state wide::statewide
::stock holder::stockholder
::story teller::storyteller
::summer time::summertime
::there of::thereof
::time line::timeline
::toss up::tossup
::touch point::touchpoint
::voice mail::voicemail
::wait person::waitperson
::web page::webpage
::web site::website
::week long::weeklong
::white out::whiteout
::winter time::wintertime
::work bench::workbench
::work day::workday
::work force::workforce
::work group::workgroup
::work load::workload
;::work out::workout
::work place::workplace
::work room::workroom
::work sheet::worksheet
::work station::workstation
::work table::worktable
::work week::workweek
::work woman::workwoman
::wrong doing::wrongdoing
;::year long::yearlong
::pro Freudian::pro-Freudian
::proFreudian::pro-Freudian
::post1970::post-1970
::post 1970::post-1970
::self paced::self-paced
::selfpaced::self-paced
::self esteem::self-esteem
::selfesteem::self-esteem
::peerrated::peer-rated
::peer rated::peer-rated
::meta analysis::meta-analysis
::metaanalysis::meta-analysis
::anti intellectual::anti-intellectual
::antiintellectual::anti-intellectual
:*:after effect::after-effect
:*:aftereffect::after-effect
::multi phase::multiphase
::multi-phase::multiphase
::socio-economic::socioeconomic
::socio economic::socioeconomic
::crossgenerational::cross-generational
::cross generational::cross-generational
::crosssectional::cross-sectional
::cross sectional::cross-sectional
::multi-stage::multistage
::multi stage::multistage
::inter-generational::intergenerational
::inter generational::intergenerational
::intra-generational::intragenerational
::intra generational::intragenerational
:*:agora phobi::agoraphobi
:*:agora-phobi::agoraphobi
::cardio gram::cardiogram
::cardio-gram::cardiogram
::t test results::t-test results
::non achievement oriented::non-achievement-oriented
::nonachievementoriented::non-achievement-oriented
::achievement oriented::achievement-oriented
::achievementoriented::achievement-oriented
::crosssequential::cross-sequential
::cross sequential::cross-sequential
::crosscultural::cross-cultural
::cross cultural::cross-cultural
::cross fertilize::cross-fertilize
::crossfertilize::cross-fertilize
::cross refer::cross-refer
::cross-refer::cross-refer
::multi-dimensional::multidimensional
::multi dimensional::multidimensional
::non response::non-response
::nonresponse::non-response
::pre-test::pretest
::pre test::pretest
::posttest::post-test
::post test::post-test
::plussize::plus-size
::plus size::plus-size
::un-abridged::unabridged
::un abridged::unabridged
::nonprofit::non-profit
::post-secondary::postsecondary
::post secondary::postsecondary
;:*:dataset::data set
;::can't of::cannot have
::could of::could have
;::agora phobia::agoraphobia
;::agora-phobia::agoraphobia
::amongst::among
::para-legal::paralegal
::para legal::paralegal
::appoggiaturas::appoggiature
::cadenzas::cadenze
::credenzas::credenze
::extravaganzas::extravaganze
::fermatas::fermate
::influenzas::influenze
::mozzarellas::mozzarelle
::pizzas::pizze
::tazzas::tazze
::trattorias::trattorie
::abscissas::abscissae
::aesthesias::aesthesiae
::agendas::agendae
::agoras::agorae
::algas::algae
::alumnas::alumnae
::amenorrhoeas::amenorrhoeae
::amnesias::amnesiae
::amoebas::amoebae
::amphoras::amphorae
::anaesthesias::anaesthesiae
::antennas::antennae
::aquas::aquae
;::areas::areae
::areolas::areolae
::artistas::artistae
::aulas::aulae
::auras::aurae
::auroras::aurorae
::ballistas::ballistae
::caesuras::caesurae
;::cameras::camerae
::capsulas::capsulae
::caricas::caricae
::cassias::cassiae
::catapultas::catapultae
::cathedras::cathedrae
::coelias::coeliae
::conjunctivas::conjunctivae
::coronas::coronae
::coryzas::coryzae
::coxas::coxae
::cyclopaedias::cyclopaediae
::diarrhoeas::diarrhoeae
::dysaesthesias::dysaesthesiae
::encyclopaedias::encyclopediae
::encyclopedias::encyclopediae
::et ceteras::et ceterae
::exedras::exedrae
::fabellas::fabellae
::fistulas::fistulae
::formulas::formulae
::fossas::fossae
::foveolas::foveolae
::furculas::furculae
::galeas::galeae
::gingivas::gingivae
::gonorrhoeas::gonorrhoeae
::hernias::herniae
::hetaeras::hetaerae
::hyaenas::hyaenae
::hydromedusas::hydromedusae
::hyenas::hyenae
;::ideas::ideae
::labias::labiae
::larvas::larvae
::naturas::naturae
::maculas::maculae
::maxillas::maxillae
::medias::mediae
::medullas::medullae
::medusas::medusae
::mensas::mensae
::metraes::metrae
::microfaunas::microfaunae
::microfloras::microflorae
::minas::minae
::minutias::minutiae
::Moeras::Moerae
::moleculas::moleculae
::monomanias::monomaniae
::moras::morae
::nebulas::nebulae
::onomatopoeias::onomatopoeiae
::oothecas::oothecae
::palaestras::palaestrae
::panaceas::panaceae
::papillas::papillae
::papillomas::papillomae
::parabolas::parabolae
::paraphilias::paraphiliae
::personas::personae
::pharmacopoeias::pharmacopoeiae
::pinnas::pinnae
::plantas::plantae
::pleuras::pleurae
::pupas::pupae
::retinas::retinae
::salivas::salivae
::scapulas::scapulae
::scrofulas::scrofulae
::sequelas::sequelae
::spatulas::spatulae
::spermathecas::spermathecae
::squamas::squamae
::stipulas::stipulae
::strias::striae
::subpoenas::subpoenae
::summas::summae
::synaesthesias::synaesthesiae
::taenias::taeniae
::testas::testae
::togas::togae
::tracheas::tracheae
::urethras::urethrae
::uvas::uvae
::uvulas::uvulae
::vaginas::vaginae
::vertebras::vertebrae
::vesicas::vesicae
::vias::viae
::vibratiunculas::vibratiunculae
::vulvas::vulvae
::zonas::zonae
::zoogloeas::zoogloeae
::zooxanthellas::zooxanthellae
::pellucidas::pellucidae
;::Incorrect Plural::ORIGINAL
::abarthrosiss::abarthroses
::abdominocentesiss::abdominocenteses
::abiogenesiss::abiogeneses
::acanthamebiasiss::acanthamebiases
::acanthamoebiasiss::acanthamoebiases
::acanthocephaliasiss::acanthocephaliases
::acanthocytosiss::acanthocytoses
::acantholysiss::acantholyses
::acanthosiss::acanthoses
::acetolysiss::acetolyses
::acidosiss::acidoses
::acrocyanosiss::acrocyanoses
::actinomycosiss::actinomycoses
::adenohypophysiss::adenohypophyses
::adenomatosiss::adenomatoses
::adenosiss::adenoses
::adiposiss::adiposes
::aerobiosiss::aerobioses
::aesthesiss::aestheses
::agenesiss::ageneses
::agranulocytosiss::agranulocytoses
::alcoholysiss::alcoholyses
::amanuensiss::amanuenses
::amaurosiss::amauroses
::amebiasiss::amebiases
::amniocentesiss::amniocenteses
::amoebiasiss::amoebiases
::amphiarthrosiss::amphiarthroses
::amyloidosiss::amyloidoses
::anabasiss::anabases
::anabiosiss::anabioses
::anaclasiss::anaclases
::anacrusiss::anacruses
::anadiplosiss::anadiploses
::anaerobiosiss::anaerobioses
::anagnorisiss::anagnorises
::analysiss::analyses
::analyziss::analyzes
::anamnesiss::anamneses
::anamorphosiss::anamorphoses
::anaphylaxiss::anaphylaxes
::anaplasmosiss::anaplasmoses
::anapophysiss::anapophyses
::anaptyxiss::anaptyxes
::anastasiss::anastases
::anastomosiss::anastomoses
::anchylosiss::anchyloses
::ancylostomiasiss::ancylostomiases
::angiogenesiss::angiogeneses
::angiomatosiss::angiomatoses
::anisocytosiss::anisocytoses
::ankylostomiasiss::ankylostomiases
::anni mirabiliss::anni mirabiles
::anthesiss::antheses
::anthroponosiss::anthroponoses
::antibiosiss::antibioses
::anticyclogenesiss::anticyclogeneses
::anticyclolysiss::anticyclolyses
::antilysiss::antilyses
::antiperistalsiss::antiperistalses
::antiperistasiss::antiperistases
::antiphrasiss::antiphrases
::antiptosiss::antiptoses
::antisepsiss::antisepses
::antithesiss::antitheses
::aphaeresiss::aphaereses
::apheresiss::aphereses
::aphesiss::apheses
::apocatastasiss::apocatastases
::apodosiss::apodoses
::apomeiosiss::apomeioses
::apomixiss::apomixes
::aponeurosiss::aponeuroses
::apophasiss::apophases
::apoptosiss::apoptoses
::aposiopesiss::aposiopeses
::aposymbiosiss::aposymbioses
::apotheosiss::apotheoses
::archnemesiss::archnemeses
::argyrosiss::argyroses
::arseniasiss::arseniases
::arsiss::arses
::arteriogenesiss::arteriogeneses
::arteriolosclerosiss::arterioloscleroses
::arteriosclerosiss::arterioscleroses
::arthrodesiss::arthrodeses
::arthrogryposiss::arthrogryposes
::arthrosiss::arthroses
::asbestosiss::asbestoses
::ascariasiss::ascariases
::aspergillosiss::aspergilloses
::astrogliosiss::astroglioses
::atherosclerosiss::atheroscleroses
::atherosiss::atheroses
::atherothrombosiss::atherothromboses
::athetosiss::athetoses
::autoanalysiss::autoanalyses
::autohypnosiss::autohypnoses
::autoradiolysiss::autoradiolyses
::auxesiss::auxeses
::axiss::axes
::axonotmesiss::axonotmeses
::bacteriostasiss::bacteriostases
::bagassosiss::bagassoses
::balantidiasiss::balantidiases
::bartonellosiss::bartonelloses
::basiss::bases
::berylliosiss::beryllioses
::bionecrosiss::bionecroses
::biophotolysiss::biophotolyses
::biophotolysisiss::biophotolysises
::bioprosthesiss::bioprostheses
::biosynthesiss::biosyntheses
::blastomycosiss::blastomycoses
::blepharophimosiss::blepharophimoses
::bronchiectasiss::bronchiectases
::brucellosiss::brucelloses
::caenogenesiss::caenogeneses
::cainogenesiss::cainogeneses
::calcinosiss::calcinoses
::calypsiss::calypses
::candidiasiss::candidiases
::carcinogenesiss::carcinogeneses
::carcinosiss::carcinoses
::cariopsiss::cariopses
::caryopsiss::caryopses
::catabasiss::catabases
::catachresiss::catachreses
::catalepsiss::catalepses
::catalexiss::catalexes
::catalysiss::catalyses
::catastasiss::catastases
::catechesiss::catecheses
::catharsiss::catharses
::cathexiss::cathexes
::centesiss::centeses
::chemiosmosiss::chemiosmoses
::chemolysiss::chemolyses
::chemosynthesiss::chemosyntheses
::chemotaxiss::chemotaxes
::cholelithiasiss::cholelithiases
::chondrogenesiss::chondrogeneses
::chromidrosiss::chromidroses
::chronotaxiss::chronotaxes
::cirrhosiss::cirrhoses
::cladogenesiss::cladogeneses
::classiss::classes
::coaxiss::coaxes
::coccidioidomycosiss::coccidioidomycoses
::coreopsiss::coreopses
::cosmogenesiss::cosmogeneses
::counterthesiss::countertheses
::craniosynostosiss::craniosynostoses
::crasiss::crases
::crisiss::crises
::cryogenesiss::cryogeneses
::cryptanalysiss::cryptanalyses
::cryptococcosiss::cryptococcoses
::culdocentesiss::culdocenteses
::cuspiss::cuspes
::cyanogenesiss::cyanogeneses
::cyanosiss::cyanoses
::cyclogenesiss::cyclogeneses
::cyclolysiss::cyclolyses
::cysticercosiss::cysticercoses
::cytauxzoonosiss::cytauxzoonoses
::deixiss::deixes
::dermatosiss::dermatoses
::dermostosiss::dermostoses
::diaeresiss::diaereses
::diagenesiss::diageneses
::diagnosiss::diagnoses
::dialysiss::dialyses
::diapedesiss::diapedeses
::diapophysiss::diapophyses
::diaresiss::diareses
::diathesiss::diatheses
::diegesiss::diegeses
::dieresiss::diereses
::diorthosiss::diorthoses
::diparesiss::dipareses
::diuresiss::diureses
::dysgenesiss::dysgeneses
::dyshidrosiss::dyshidroses
::dyskeratosiss::dyskeratoses
::ecdysiss::ecdyses
::ecphonesiss::ecphoneses
::ecphrasiss::ecphrases
::ectasiss::ectases
::ecthlipsiss::ecthlipses
::ectostosiss::ectostoses
::ehrlichiosiss::ehrlichioses
::eigenbasiss::eigenbases
::eisegesiss::eisegeses
::ekphrasiss::ekphrases
::ekstasiss::ekstases
::electrophoresiss::electrophoreses
::electrosynthesiss::electrosyntheses
::ellipsiss::ellipses
::embryogenesiss::embryogeneses
::emesiss::emeses
::emphasiss::emphases
::empyrosiss::empyroses
::enantiosiss::enantioses
::enarthrosiss::enarthroses
::endometriosiss::endometrioses
::endoprosthesiss::endoprostheses
::endostosiss::endostoses
::endosymbiosiss::endosymbioses
::entasiss::entases
::enthesiss::entheses
::enuresiss::enureses
::epenthesiss::epentheses
::epexegesiss::epexegeses
::epicrisiss::epicrises
::epigenesiss::epigeneses
::epileptogenesiss::epileptogeneses
::epiphrasiss::epiphrases
::epiphysiss::epiphyses
::epipubiss::epipubes
::epistasiss::epistases
::epistaxiss::epistaxes
::episymbiosiss::episymbioses
::epitasiss::epitases
::epithesiss::epitheses
::epizeuxiss::epizeuxes
::erythrocytosiss::erythrocytoses
::esthesiss::estheses
::ethnogenesiss::ethnogeneses
::etiopathogenesiss::etiopathogeneses
::exegesiss::exegeses
::exocytosiss::exocytoses
::exosmosiss::exosmoses
::fibrinolysiss::fibrinolyses
::fibromatosiss::fibromatoses
::fluorosiss::fluoroses
::frontogenesiss::frontogeneses
::frontolysiss::frontolyses
::fucosidosiss::fucosidoses
::furunculosiss::furunculoses
::gangliosidosiss::gangliosidoses
::genesiss::geneses
::genodermatosiss::genodermatoses
::geotrichosiss::geotrichoses
::giardiasiss::giardiases
::glans peniss::glans penes
::glomerulonephritiss::glomerulonephrites
::glomerulosclerosiss::glomeruloscleroses
::glossoptosiss::glossoptoses
::gluconeogenesiss::gluconeogeneses
::glycogenesiss::glycogeneses
::glycogenolysiss::glycogenolyses
::glycosynthesiss::glycosyntheses
::gnosiss::gnoses
::gonderiosiss::gonderioses
::granulocytosiss::granulocytoses
::gummosiss::gummoses
::haemapophysiss::haemapophyses
::haemarthrosiss::haemarthroses
::haematemesiss::haematemeses
::haematolysiss::haematolyses
::haemochromatosiss::haemochromatoses
::haemodialysiss::haemodialyses
::haemolysiss::haemolyses
::haemoptysiss::haemoptyses
::haemostasiss::haemostases
::helminthiasiss::helminthiases
::hemapophysiss::hemapophyses
::hemarthrosiss::hemarthroses
::hematemesiss::hematemeses
::hemiparesiss::hemipareses
::hemipeniss::hemipenes
::hemochromatosiss::hemochromatoses
::hemodialysiss::hemodialyses
::hemolysiss::hemolyses
::hemoptysiss::hemoptyses
::hemostasiss::hemostases
::hepatolithiasiss::hepatolithiases
::hepatozoonosiss::hepatozoonoses
::heterosiss::heteroses
::hidrosiss::hidroses
::histiocytosiss::histiocytoses
::histogenesiss::histogeneses
::histoplasmosiss::histoplasmoses
::homeostasiss::homeostases
::neanderthalensiss::neanderthalenses
::hyalohyphomycosiss::hyalohyphomycoses
::hydroarthrosiss::hydroarthroses
::hydrogenolysiss::hydrogenolyses
::hydrolysiss::hydrolyses
::hydropyrolysiss::hydropyrolyses
::hyperapophysiss::hyperapophyses
::hyperemesiss::hyperemeses
::hyperkeratosiss::hyperkeratoses
::hyperkinesiss::hyperkineses
::hyperostosiss::hyperostoses
::hypervitaminosiss::hypervitaminoses
::hypnosiss::hypnoses
::hypochondriasiss::hypochondriases
::hypodermoclysiss::hypodermoclyses
::hypogenesiss::hypogeneses
::hypomelanosiss::hypomelanoses
::hypophysiss::hypophyses
::hypostasiss::hypostases
::hypothesiss::hypotheses
::hypotyposiss::hypotyposes
::hysteresiss::hystereses
::iatrogenesiss::iatrogeneses
::ichthyosiss::ichthyoses
::iconostasiss::iconostases
::identity crisiss::identity crises
::interaxiss::interaxes
::intercostaliss::intercostales
::iridodialysiss::iridodialyses
::iridotasiss::iridotases
::jejunoileitiss::jejunoileites
::karyokinesiss::karyokineses
::katabasiss::katabases
::katastasiss::katastases
::kenosiss::kenoses
::keratomileusiss::keratomileuses
::keratoprosthesiss::keratoprostheses
::keratosiss::keratoses
::ketoacidosiss::ketoacidoses
::kinaesthesiss::kinaestheses
::kinesiss::kineses
::kinestasiss::kinestases
::kurtosiss::kurtoses
::kyphoscoliosiss::kyphoscolioses
::kyphosiss::kyphoses
::lambliasiss::lambliases
::leiomyomatosiss::leiomyomatoses
::leishmaniasiss::leishmaniases
::leptospirosiss::leptospiroses
::leucocytosiss::leucocytoses
::leukemogenesiss::leukemogeneses
::leukocytosiss::leukocytoses
::leukosiss::leukoses
::lipidosiss::lipidoses
::lipofuscinosiss::lipofuscinoses
::lipogenesiss::lipogeneses
::lipolysiss::lipolyses
::lithiasiss::lithiases
::lordosiss::lordoses
::lymphadenitiss::lymphadenites
::lymphangioleiomyomatosiss::lymphangioleiomyomatoses
::lymphocytosiss::lymphocytoses
::lymphohistiocytosiss::lymphohistiocytoses
::lymphomagenesiss::lymphomageneses
::macroanalysiss::macroanalyses
::macrocytosiss::macrocytoses
::macrometastasiss::macrometastases
::magnetophoresiss::magnetophoreses
::major axiss::major axes
::mannosidosiss::mannosidoses
::mantiss::mantes
::master's thesiss::master's theses
::mastocytosiss::mastocytoses
::megakaryocytopoiesiss::megakaryocytopoieses
::megasporogenesiss::megasporogeneses
::meiosiss::meioses
::melanosiss::melanoses
::metaanalysiss::meta-analyses
::meta-analysiss::meta-analyses
::metabasiss::metabases
::metalepsiss::metalepses
::metamorphosiss::metamorphoses
::metanalysiss::metanalyses
::metaphysiss::metaphyses
::metapophysiss::metapophyses
::metastasiss::metastases
::metathesiss::metatheses
::metempsychosiss::metempsychoses
::metensomatosiss::metensomatoses
::microanalysiss::microanalyses
::microgenesiss::microgeneses
::micrometastasiss::micrometastases
::mid life::mid-life
::miosiss::mioses
::misanalysiss::misanalyses
::misdiagnosiss::misdiagnoses
::mitosiss::mitoses
::mononucleosiss::mononucleoses
::morphosiss::morphoses
::mucinosiss::mucinoses
::mucolipidosiss::mucolipidoses
::mucopolysaccharidosiss::mucopolysaccharidoses
::mutagenesiss::mutageneses
::mycosiss::mycoses
::mycotoxicosiss::mycotoxicoses
::mydriasiss::mydriases
::myelomatosiss::myelomatoses
::myiasiss::myiases
::myosiss::myoses
::narcoanalysiss::narcoanalyses
::narcosiss::narcoses
::nariss::nares
::necrobiosiss::necrobioses
::necrosiss::necroses
::nemesiss::nemeses
::neoangiogenesiss::neoangiogeneses
::nephrocalcinosiss::nephrocalcinoses
::nephrosclerosiss::nephroscleroses
::nephrosiss::nephroses
::neurapophysiss::neurapophyses
::neuraxiss::neuraxes
::neurocysticercosiss::neurocysticercoses
::neurofibromatosiss::neurofibromatoses
::neurohypophysiss::neurohypophyses
::neuroprosthesiss::neuroprostheses
::neurosiss::neuroses
::neurotmesiss::neurotmeses
::nocardiosiss::nocardioses
::noesiss::noeses
::noncrisiss::noncrises
::nucleosynthesiss::nucleosyntheses
::null hypothesiss::null hypotheses
::oasiss::oases
::obnosiss::obnoses
::ochlesiss::ochleses
::onchocerciasiss::onchocerciases
::oncogenesiss::oncogeneses
::ontogenesiss::ontogeneses
::onychomycosiss::onychomycoses
::oogenesiss::oogeneses
::ophthalmoparesiss::ophthalmopareses
::orexiss::orexes
::organogenesiss::organogeneses
::orogenesiss::orogeneses
::osmosiss::osmoses
::osteochondrosiss::osteochondroses
::osteoclasiss::osteoclases
::osteogenesiss::osteogeneses
::osteonecrosiss::osteonecroses
::osteopetrosiss::osteopetroses
::osteosclerosiss::osteoscleroses
::osteosynthesiss::osteosyntheses
::otosclerosiss::otoscleroses
::ovotestiss::ovotestes
::ozonolysiss::ozonolyses
::palatonariss::palatonares
::palingenesiss::palingeneses
::pangenesiss::pangeneses
::parabasiss::parabases
::paracentesiss::paracenteses
::paradiorthosiss::paradiorthoses
::paraesthesiss::paraestheses
::paragonimiasiss::paragonimiases
::parakeratosiss::parakeratoses
::paraleipsiss::paraleipses
::paralepsiss::paralepses
::paralipsiss::paralipses
::paralysiss::paralyses
::paralyziss::paralyzes
::paraphimosiss::paraphimoses
::paraphysiss::paraphyses
::parapophysiss::parapophyses
::parapraxiss::parapraxes
::parasitosiss::parasitoses
::parasynthesiss::parasyntheses
::parathesiss::paratheses
::parenthesiss::parentheses
::paresiss::pareses
::paresthesiss::parestheses
::parostosiss::parostoses
::parthenogenesiss::parthenogeneses
::pathogenesiss::pathogeneses
::pelviss::pelves
::peniss::penes
::periegesiss::periegeses
::periphrasiss::periphrases
::peristalsiss::peristalses
::perniosiss::pernioses
::pertussiss::pertusses
::phaeohyphomycosiss::phaeohyphomycoses
::phagocytosiss::phagocytoses
::phakomatosiss::phakomatoses
::phasiss::phases
::pheresiss::phereses
::phimosiss::phimoses
::phlogosiss::phlogoses
::photodermatosiss::photodermatoses
::photolysiss::photolyses
::phthiriasiss::phthiriases
::phthisiss::phthises
::phylogenesiss::phylogeneses
::pileipelliss::pileipelles
::plasmapheresiss::plasmaphereses
::plateletpheresiss::plateletphereses
::pleurapophysiss::pleurapophyses
::pneumatolysiss::pneumatolyses
::pneumoconiosiss::pneumoconioses
::pneumocystosiss::pneumocystoses
::poiesiss::poieses
::poikilocarynosiss::poikilocarynoses
::polysynthesiss::polysyntheses
::porocytosiss::porocytoses
::postnariss::postnares
::postzygapophysiss::postzygapophyses
::praezygapophysiss::praezygapophyses
::praxiss::praxes
::praying mantiss::praying mantes
::prediagnosiss::prediagnoses
::prepubiss::prepubes
::prezygapophysiss::prezygapophyses
::prognosiss::prognoses
::prolepsiss::prolepses
::prophylaxiss::prophylaxes
::prosiopesiss::prosiopeses
::prosphysiss::prosphyses
::prosthesiss::prostheses
::protasiss::protases
::proteolysiss::proteolyses
::prothesiss::protheses
::pseudarthrosiss::pseudarthroses
::pseudoarthrosiss::pseudoarthroses
::pseudocyesiss::pseudocyeses
::pseudopeniss::pseudopenes
::psittacosiss::psittacoses
::psoriasiss::psoriases
::psychogenesiss::psychogeneses
::psychoneurosiss::psychoneuroses
::psychosiss::psychoses
::pterylosiss::pteryloses
::ptilosiss::ptiloses
::ptosiss::ptoses
::pubiss::pubes
::pyrolysiss::pyrolyses
::radiodiagnosiss::radiodiagnoses
::radionecrosiss::radionecroses
::rarae aviss::rarae aves
::reanalysiss::reanalyses
::restenosiss::restenoses
::resynthesiss::resyntheses
::reticulocytosiss::reticulocytoses
::reticuloendotheliosiss::reticuloendothelioses
::reticulohistiocytosiss::reticulohistiocytoses
::retinoschisiss::retinoschises
::rhabdomyolysiss::rhabdomyolyses
::rickettsiosiss::rickettsioses
::sarcoidosiss::sarcoidoses
::sarcosiss::sarcoses
::schindylesiss::schindyleses
::schistosomiasiss::schistosomiases
::sclerosiss::scleroses
::scoliosiss::scolioses
::scrofulosiss::scrofuloses
::seismogenesiss::seismogeneses
::semi-axiss::semi-axes
::semisynthesiss::semisyntheses
::sepsiss::sepses
::shigellosiss::shigelloses
::sialidosiss::sialidoses
::silicosiss::silicoses
::sociogenesiss::sociogeneses
::solvolysiss::solvolyses
::spermatogenesiss::spermatogeneses
::sphingolipidosiss::sphingolipidoses
::spondylolisthesiss::spondylolistheses
::stenosiss::stenoses
::sternochondroscapulariss::sternochondroscapulares
::steroidogenesiss::steroidogeneses
::subanalysiss::subanalyses
::subbasiss::subbases
::sycosiss::sycoses
::syllepsiss::syllepses
::symbiogenesiss::symbiogeneses
::symbiosiss::symbioses
::symphysiss::symphyses
::synaeresiss::synaereses
::synapophysiss::synapophyses
::synapsiss::synapses
::synaxiss::synaxes
::synchysiss::synchyses
::syncrisiss::syncrises
::syndesmosiss::syndesmoses
::synecphonesiss::synecphoneses
::syneresiss::synereses
::synizesiss::synizeses
::synkinesiss::synkineses
::synneurosiss::synneuroses
::synopsiss::synopses
::synosteosiss::synosteoses
::synostosiss::synostoses
::synthesiss::syntheses
::tachyphylaxiss::tachyphylaxes
::taeniasiss::taeniases
::talcosiss::talcoses
::tapinosiss::tapinoses
::taxiss::taxes
::telangiectasiss::telangiectases
::telediagnosiss::telediagnoses
::telekinesiss::telekineses
::teleoanalysiss::teleoanalyses
::tenolysiss::tenolyses
::teratogenesiss::teratogeneses
::testiss::testes
::thanatopsiss::thanatopses
::theileriasiss::theileriases
::theileriosiss::theilerioses
::thermotaxiss::thermotaxes
::thesiss::theses
::thoracentesiss::thoracenteses
::thoracocentesiss::thoracocenteses
::thrombocytosiss::thrombocytoses
::thrombopoiesiss::thrombopoieses
::thrombosiss::thromboses
::thyrotoxicosiss::thyrotoxicoses
::tmesiss::tmeses
::toxicosiss::toxicoses
::toxinosiss::toxinoses
::toxoplasmosiss::toxoplasmoses
::transcytosiss::transcytoses
::transgenesiss::transgeneses
::treponematosiss::treponematoses
::trichinellosiss::trichinelloses
::trichiniasiss::trichiniases
::trichinosiss::trichinoses
::trichomoniasiss::trichomoniases
::trichomycosiss::trichomycoses
::trichuriasiss::trichuriases
::trophobiosiss::trophobioses
::trypanosomiasiss::trypanosomiases
::trypanosomosiss::trypanosomoses
::tuberculosiss::tuberculoses
::tumorigenesiss::tumorigeneses
::tumourigenesiss::tumourigeneses
::tylosiss::tyloses
::tympanocentesiss::tympanocenteses
::urinalysiss::urinalyses
::vaginosiss::vaginoses
::vertical ellipsiss::vertical ellipses
::xanthomatosiss::xanthomatoses
::xanthosiss::xanthoses
::x-axiss::x-axes
::xenodiagnosiss::xenodiagnoses
::xenogenesiss::xenogeneses
::xenozoonosiss::xenozoonoses
::xeransiss::xeranses
::xerosiss::xeroses
::y-axiss::y-axes
::z-axiss::z-axes
::zoonosiss::zoonoses
::zygapophysiss::zygapophyses
::zygomycosiss::zygomycoses
::zygosiss::zygoses
::zymosiss::zymoses
::abarthrosises::abarthroses
::abdominocentesises::abdominocenteses
::abiogenesises::abiogeneses
::acanthamebiasises::acanthamebiases
::acanthamoebiasises::acanthamoebiases
::acanthocephaliasises::acanthocephaliases
::acanthocytosises::acanthocytoses
::acantholysises::acantholyses
::acanthosises::acanthoses
::acetolysises::acetolyses
::acidosises::acidoses
::acrocyanosises::acrocyanoses
::actinomycosises::actinomycoses
::adenohypophysises::adenohypophyses
::adenomatosises::adenomatoses
::adenosises::adenoses
::adiposises::adiposes
::aerobiosises::aerobioses
::aesthesises::aestheses
::agenesises::ageneses
::agranulocytosises::agranulocytoses
::alcoholysises::alcoholyses
::amanuensises::amanuenses
::amaurosises::amauroses
::amebiasises::amebiases
::amniocentesises::amniocenteses
::amoebiasises::amoebiases
::amphiarthrosises::amphiarthroses
::amyloidosises::amyloidoses
::anabasises::anabases
::anabiosises::anabioses
::anaclasises::anaclases
::anacrusises::anacruses
::anadiplosises::anadiploses
::anaerobiosises::anaerobioses
::anagnorisises::anagnorises
::analysises::analyses
::analyzises::analyzes
::anamnesises::anamneses
::anamorphosises::anamorphoses
::anaphylaxises::anaphylaxes
::anaplasmosises::anaplasmoses
::anapophysises::anapophyses
::anaptyxises::anaptyxes
::anastasises::anastases
::anastomosises::anastomoses
::anchylosises::anchyloses
::ancylostomiasises::ancylostomiases
::angiogenesises::angiogeneses
::angiomatosises::angiomatoses
::anisocytosises::anisocytoses
::ankylostomiasises::ankylostomiases
::anni mirabilises::anni mirabiles
::anthesises::antheses
::anthroponosises::anthroponoses
::antibiosises::antibioses
::anticyclogenesises::anticyclogeneses
::anticyclolysises::anticyclolyses
::antilysises::antilyses
::antiperistalsises::antiperistalses
::antiperistasises::antiperistases
::antiphrasises::antiphrases
::antiptosises::antiptoses
::antisepsises::antisepses
::antithesises::antitheses
::aphaeresises::aphaereses
::apheresises::aphereses
::aphesises::apheses
::apocatastasises::apocatastases
::apodosises::apodoses
::apomeiosises::apomeioses
::apomixises::apomixes
::aponeurosises::aponeuroses
::apophasises::apophases
::apoptosises::apoptoses
::aposiopesises::aposiopeses
::aposymbiosises::aposymbioses
::apotheosises::apotheoses
::archnemesises::archnemeses
::argyrosises::argyroses
::arseniasises::arseniases
::arsises::arses
::arteriogenesises::arteriogeneses
::arteriolosclerosises::arterioloscleroses
::arteriosclerosises::arterioscleroses
::arthrodesises::arthrodeses
::arthrogryposises::arthrogryposes
::arthrosises::arthroses
::asbestosises::asbestoses
::ascariasises::ascariases
::aspergillosises::aspergilloses
::astrogliosises::astroglioses
::atherosclerosises::atheroscleroses
::atherosises::atheroses
::atherothrombosises::atherothromboses
::athetosises::athetoses
::autoanalysises::autoanalyses
::autohypnosises::autohypnoses
::autoradiolysises::autoradiolyses
::auxesises::auxeses
::axises::axes
::axonotmesises::axonotmeses
::bacteriostasises::bacteriostases
::bagassosises::bagassoses
::balantidiasises::balantidiases
::bartonellosises::bartonelloses
::basises::bases
::berylliosises::beryllioses
::bionecrosises::bionecroses
::biophotolysises::biophotolyses
::biophotolysisises::biophotolysises
::bioprosthesises::bioprostheses
::biosynthesises::biosyntheses
:*:blastomycosises::blastomycoses
::blepharophimosises::blepharophimoses
::bronchiectasises::bronchiectases
::brucellosises::brucelloses
::caenogenesises::caenogeneses
::cainogenesises::cainogeneses
::calcinosises::calcinoses
::calypsises::calypses
::candidiasises::candidiases
::carcinogenesises::carcinogeneses
::carcinosises::carcinoses
::cariopsises::cariopses
::caryopsises::caryopses
::catabasises::catabases
::catachresises::catachreses
::catalepsises::catalepses
::catalexises::catalexes
::catalysises::catalyses
::catastasises::catastases
::catechesises::catecheses
::catharsises::catharses
::cathexises::cathexes
::centesises::centeses
::chemiosmosises::chemiosmoses
::chemolysises::chemolyses
::chemosynthesises::chemosyntheses
::chemotaxises::chemotaxes
::cholelithiasises::cholelithiases
::chondrogenesises::chondrogeneses
::chromidrosises::chromidroses
::chronotaxises::chronotaxes
::cirrhosises::cirrhoses
::cladogenesises::cladogeneses
::classises::classes
::coaxises::coaxes
::coccidioidomycosises::coccidioidomycoses
::coreopsises::coreopses
::cosmogenesises::cosmogeneses
::counterthesises::countertheses
::craniosynostosises::craniosynostoses
::crasises::crases
::crisises::crises
::cryogenesises::cryogeneses
::cryptanalysises::cryptanalyses
::cryptococcosises::cryptococcoses
::culdocentesises::culdocenteses
::cuspises::cuspes
::cyanogenesises::cyanogeneses
::cyanosises::cyanoses
::cyclogenesises::cyclogeneses
::cyclolysises::cyclolyses
::cysticercosises::cysticercoses
::cytauxzoonosises::cytauxzoonoses
::deixises::deixes
::dermatosises::dermatoses
::dermostosises::dermostoses
::diaeresises::diaereses
::diagenesises::diageneses
::diagnosises::diagnoses
::dialysises::dialyses
::diapedesises::diapedeses
::diapophysises::diapophyses
::diaresises::diareses
::diathesises::diatheses
::diegesises::diegeses
::dieresises::diereses
::diorthosises::diorthoses
::diparesises::dipareses
::diuresises::diureses
::dysgenesises::dysgeneses
::dyshidrosises::dyshidroses
::dyskeratosises::dyskeratoses
::ecdysises::ecdyses
::ecphonesises::ecphoneses
::ecphrasises::ecphrases
::ectasises::ectases
::ecthlipsises::ecthlipses
::ectostosises::ectostoses
::ehrlichiosises::ehrlichioses
::eigenbasises::eigenbases
::eisegesises::eisegeses
::ekphrasises::ekphrases
::ekstasises::ekstases
::electrophoresises::electrophoreses
::electrosynthesises::electrosyntheses
::ellipsises::ellipses
::embryogenesises::embryogeneses
::emesises::emeses
::emphasises::emphases
::empyrosises::empyroses
::enantiosises::enantioses
::enarthrosises::enarthroses
::endometriosises::endometrioses
::endoprosthesises::endoprostheses
::endostosises::endostoses
::endosymbiosises::endosymbioses
::entasises::entases
::enthesises::entheses
::enuresises::enureses
::epenthesises::epentheses
::epexegesises::epexegeses
::epicrisises::epicrises
::epigenesises::epigeneses
::epileptogenesises::epileptogeneses
::epiphrasises::epiphrases
::epiphysises::epiphyses
::epipubises::epipubes
::epistasises::epistases
::epistaxises::epistaxes
::episymbiosises::episymbioses
::epitasises::epitases
::epithesises::epitheses
::epizeuxises::epizeuxes
::erythrocytosises::erythrocytoses
::esthesises::estheses
::ethnogenesises::ethnogeneses
::etiopathogenesises::etiopathogeneses
::exegesises::exegeses
::exocytosises::exocytoses
::exosmosises::exosmoses
::fibrinolysises::fibrinolyses
::fibromatosises::fibromatoses
::fluorosises::fluoroses
::frontogenesises::frontogeneses
::frontolysises::frontolyses
::fucosidosises::fucosidoses
::furunculosises::furunculoses
::gangliosidosises::gangliosidoses
::genesises::geneses
::genodermatosises::genodermatoses
::geotrichosises::geotrichoses
::giardiasises::giardiases
::glans penises::glans penes
::glomerulonephritises::glomerulonephrites
::glomerulosclerosises::glomeruloscleroses
::glossoptosises::glossoptoses
::gluconeogenesises::gluconeogeneses
::glycogenesises::glycogeneses
::glycogenolysises::glycogenolyses
::glycosynthesises::glycosyntheses
::gnosises::gnoses
::gonderiosises::gonderioses
::granulocytosises::granulocytoses
::gummosises::gummoses
::haemapophysises::haemapophyses
::haemarthrosises::haemarthroses
::haematemesises::haematemeses
::haematolysises::haematolyses
::haemochromatosises::haemochromatoses
::haemodialysises::haemodialyses
::haemolysises::haemolyses
::haemoptysises::haemoptyses
::haemostasises::haemostases
::helminthiasises::helminthiases
::hemapophysises::hemapophyses
::hemarthrosises::hemarthroses
::hematemesises::hematemeses
::hemiparesises::hemipareses
::hemipenises::hemipenes
::hemochromatosises::hemochromatoses
::hemodialysises::hemodialyses
::hemolysises::hemolyses
::hemoptysises::hemoptyses
::hemostasises::hemostases
::hepatolithiasises::hepatolithiases
::hepatozoonosises::hepatozoonoses
::heterosises::heteroses
::hidrosises::hidroses
::histiocytosises::histiocytoses
::histogenesises::histogeneses
::histoplasmosises::histoplasmoses
::homeostasises::homeostases
::neanderthalensises::neanderthalenses
::hyalohyphomycosises::hyalohyphomycoses
::hydroarthrosises::hydroarthroses
::hydrogenolysises::hydrogenolyses
::hydrolysises::hydrolyses
::hydropyrolysises::hydropyrolyses
::hyperapophysises::hyperapophyses
::hyperemesises::hyperemeses
::hyperkeratosises::hyperkeratoses
::hyperkinesises::hyperkineses
::hyperostosises::hyperostoses
::hypervitaminosises::hypervitaminoses
::hypnosises::hypnoses
::hypochondriasises::hypochondriases
::hypodermoclysises::hypodermoclyses
::hypogenesises::hypogeneses
::hypomelanosises::hypomelanoses
::hypophysises::hypophyses
::hypostasises::hypostases
::hypothesises::hypotheses
::hypotyposises::hypotyposes
::hysteresises::hystereses
::iatrogenesises::iatrogeneses
::ichthyosises::ichthyoses
::iconostasises::iconostases
::identity crisises::identity crises
::interaxises::interaxes
::intercostalises::intercostales
::iridodialysises::iridodialyses
::iridotasises::iridotases
::jejunoileitises::jejunoileites
::karyokinesises::karyokineses
::katabasises::katabases
::katastasises::katastases
::kenosises::kenoses
::keratomileusises::keratomileuses
::keratoprosthesises::keratoprostheses
::keratosises::keratoses
::ketoacidosises::ketoacidoses
::kinaesthesises::kinaestheses
::kinesises::kineses
::kinestasises::kinestases
::kurtosises::kurtoses
::kyphoscoliosises::kyphoscolioses
::kyphosises::kyphoses
::lambliasises::lambliases
::leiomyomatosises::leiomyomatoses
::leishmaniasises::leishmaniases
::leptospirosises::leptospiroses
::leucocytosises::leucocytoses
::leukemogenesises::leukemogeneses
::leukocytosises::leukocytoses
::leukosises::leukoses
::lipidosises::lipidoses
::lipofuscinosises::lipofuscinoses
::lipogenesises::lipogeneses
::lipolysises::lipolyses
::lithiasises::lithiases
::lordosises::lordoses
::lymphadenitises::lymphadenites
::lymphangioleiomyomatosises::lymphangioleiomyomatoses
::lymphocytosises::lymphocytoses
::lymphohistiocytosises::lymphohistiocytoses
::lymphomagenesises::lymphomageneses
::macroanalysises::macroanalyses
::macrocytosises::macrocytoses
::macrometastasises::macrometastases
::magnetophoresises::magnetophoreses
::major axises::major axes
::mannosidosises::mannosidoses
::mantises::mantes
::master's thesises::master's theses
::mastocytosises::mastocytoses
::megakaryocytopoiesises::megakaryocytopoieses
::megasporogenesises::megasporogeneses
::meiosises::meioses
::melanosises::melanoses
::metaanalysises::meta-analyses
::meta-analysises::meta-analyses
::metabasises::metabases
::metalepsises::metalepses
::metamorphosises::metamorphoses
::metanalysises::metanalyses
::metaphysises::metaphyses
::metapophysises::metapophyses
::metastasises::metastases
::metathesises::metatheses
::metempsychosises::metempsychoses
::metensomatosises::metensomatoses
::microanalysises::microanalyses
::microgenesises::microgeneses
::micrometastasises::micrometastases
::midlife::mid-life
::miosises::mioses
::misanalysises::misanalyses
::misdiagnosises::misdiagnoses
::mitosises::mitoses
::mononucleosises::mononucleoses
::morphosises::morphoses
::mucinosises::mucinoses
::mucolipidosises::mucolipidoses
::mucopolysaccharidosises::mucopolysaccharidoses
::mutagenesises::mutageneses
::mycosises::mycoses
::mycotoxicosises::mycotoxicoses
::mydriasises::mydriases
::myelomatosises::myelomatoses
::myiasises::myiases
::myosises::myoses
::narcoanalysises::narcoanalyses
::narcosises::narcoses
::narises::nares
::necrobiosises::necrobioses
::necrosises::necroses
::nemesises::nemeses
::neoangiogenesises::neoangiogeneses
::nephrocalcinosises::nephrocalcinoses
::nephrosclerosises::nephroscleroses
::nephrosises::nephroses
::neurapophysises::neurapophyses
::neuraxises::neuraxes
::neurocysticercosises::neurocysticercoses
::neurofibromatosises::neurofibromatoses
::neurohypophysises::neurohypophyses
::neuroprosthesises::neuroprostheses
::neurosises::neuroses
::neurotmesises::neurotmeses
::nocardiosises::nocardioses
::noesises::noeses
::noncrisises::noncrises
::nucleosynthesises::nucleosyntheses
::null hypothesises::null hypotheses
::oasises::oases
::obnosises::obnoses
::ochlesises::ochleses
::onchocerciasises::onchocerciases
::oncogenesises::oncogeneses
::ontogenesises::ontogeneses
::onychomycosises::onychomycoses
::oogenesises::oogeneses
::ophthalmoparesises::ophthalmopareses
::orexises::orexes
::organogenesises::organogeneses
::orogenesises::orogeneses
::osmosises::osmoses
::osteochondrosises::osteochondroses
::osteoclasises::osteoclases
::osteogenesises::osteogeneses
::osteonecrosises::osteonecroses
::osteopetrosises::osteopetroses
::osteosclerosises::osteoscleroses
::osteosynthesises::osteosyntheses
::otosclerosises::otoscleroses
::ovotestises::ovotestes
::ozonolysises::ozonolyses
::palatonarises::palatonares
::palingenesises::palingeneses
::pangenesises::pangeneses
::parabasises::parabases
::paracentesises::paracenteses
::paradiorthosises::paradiorthoses
::paraesthesises::paraestheses
::paragonimiasises::paragonimiases
::parakeratosises::parakeratoses
::paraleipsises::paraleipses
::paralepsises::paralepses
::paralipsises::paralipses
::paralysises::paralyses
::paralyzises::paralyzes
::paraphimosises::paraphimoses
::paraphysises::paraphyses
::parapophysises::parapophyses
::parapraxises::parapraxes
::parasitosises::parasitoses
::parasynthesises::parasyntheses
::parathesises::paratheses
::parenthesises::parentheses
::paresises::pareses
::paresthesises::parestheses
::parostosises::parostoses
::parthenogenesises::parthenogeneses
::pathogenesises::pathogeneses
::pelvises::pelves
::penises::penes
::periegesises::periegeses
::periphrasises::periphrases
::peristalsises::peristalses
::perniosises::pernioses
::pertussises::pertusses
::phaeohyphomycosises::phaeohyphomycoses
::phagocytosises::phagocytoses
::phakomatosises::phakomatoses
::phasises::phases
::pheresises::phereses
::phimosises::phimoses
::phlogosises::phlogoses
::photodermatosises::photodermatoses
::photolysises::photolyses
::phthiriasises::phthiriases
::phthisises::phthises
::phylogenesises::phylogeneses
::pileipellises::pileipelles
::plasmapheresises::plasmaphereses
::plateletpheresises::plateletphereses
::pleurapophysises::pleurapophyses
::pneumatolysises::pneumatolyses
::pneumoconiosises::pneumoconioses
::pneumocystosises::pneumocystoses
::poiesises::poieses
::poikilocarynosises::poikilocarynoses
::polysynthesises::polysyntheses
::porocytosises::porocytoses
::postnarises::postnares
::postzygapophysises::postzygapophyses
::praezygapophysises::praezygapophyses
::praxises::praxes
::praying mantises::praying mantes
::prediagnosises::prediagnoses
::prepubises::prepubes
::prezygapophysises::prezygapophyses
::prognosises::prognoses
::prolepsises::prolepses
::prophylaxises::prophylaxes
::prosiopesises::prosiopeses
::prosphysises::prosphyses
::prosthesises::prostheses
::protasises::protases
::proteolysises::proteolyses
::prothesises::protheses
::pseudarthrosises::pseudarthroses
::pseudoarthrosises::pseudoarthroses
::pseudocyesises::pseudocyeses
::pseudopenises::pseudopenes
::psittacosises::psittacoses
::psoriasises::psoriases
::psychogenesises::psychogeneses
::psychoneurosises::psychoneuroses
::psychosises::psychoses
::pterylosises::pteryloses
::ptilosises::ptiloses
::ptosises::ptoses
::pubises::pubes
::pyrolysises::pyrolyses
::radiodiagnosises::radiodiagnoses
::radionecrosises::radionecroses
::rarae avises::rarae aves
::reanalysises::reanalyses
::restenosises::restenoses
::resynthesises::resyntheses
::reticulocytosises::reticulocytoses
::reticuloendotheliosises::reticuloendothelioses
::reticulohistiocytosises::reticulohistiocytoses
::retinoschisises::retinoschises
::rhabdomyolysises::rhabdomyolyses
::rickettsiosises::rickettsioses
::sarcoidosises::sarcoidoses
::sarcosises::sarcoses
::schindylesises::schindyleses
::schistosomiasises::schistosomiases
::sclerosises::scleroses
::scoliosises::scolioses
::scrofulosises::scrofuloses
::seismogenesises::seismogeneses
::semi-axises::semi-axes
::semisynthesises::semisyntheses
::sepsises::sepses
::shigellosises::shigelloses
::sialidosises::sialidoses
::silicosises::silicoses
::sociogenesises::sociogeneses
::solvolysises::solvolyses
::spermatogenesises::spermatogeneses
::sphingolipidosises::sphingolipidoses
::spondylolisthesises::spondylolistheses
::stenosises::stenoses
::sternochondroscapularises::sternochondroscapulares
::steroidogenesises::steroidogeneses
::subanalysises::subanalyses
::subbasises::subbases
::sycosises::sycoses
::syllepsises::syllepses
::symbiogenesises::symbiogeneses
::symbiosises::symbioses
::symphysises::symphyses
::synaeresises::synaereses
::synapophysises::synapophyses
::synapsises::synapses
::synaxises::synaxes
::synchysises::synchyses
::syncrisises::syncrises
::syndesmosises::syndesmoses
::synecphonesises::synecphoneses
::syneresises::synereses
::synizesises::synizeses
::synkinesises::synkineses
::synneurosises::synneuroses
::synopsises::synopses
::synosteosises::synosteoses
::synostosises::synostoses
;::synthesises::syntheses
::tachyphylaxises::tachyphylaxes
::taeniasises::taeniases
::talcosises::talcoses
::tapinosises::tapinoses
::taxises::taxes
::telangiectasises::telangiectases
::telediagnosises::telediagnoses
::telekinesises::telekineses
::teleoanalysises::teleoanalyses
::tenolysises::tenolyses
::teratogenesises::teratogeneses
::testises::testes
::thanatopsises::thanatopses
::theileriasises::theileriases
::theileriosises::theilerioses
::thermotaxises::thermotaxes
::thesises::theses
::thoracentesises::thoracenteses
::thoracocentesises::thoracocenteses
::thrombocytosises::thrombocytoses
::thrombopoiesises::thrombopoieses
::thrombosises::thromboses
::thyrotoxicosises::thyrotoxicoses
::tmesises::tmeses
::toxicosises::toxicoses
::toxinosises::toxinoses
::toxoplasmosises::toxoplasmoses
::transcytosises::transcytoses
::transgenesises::transgeneses
::treponematosises::treponematoses
::trichinellosises::trichinelloses
::trichiniasises::trichiniases
::trichinosises::trichinoses
::trichomoniasises::trichomoniases
::trichomycosises::trichomycoses
::trichuriasises::trichuriases
::trophobiosises::trophobioses
::trypanosomiasises::trypanosomiases
::trypanosomosises::trypanosomoses
::tuberculosises::tuberculoses
::tumorigenesises::tumorigeneses
::tumourigenesises::tumourigeneses
::tylosises::tyloses
::tympanocentesises::tympanocenteses
::urinalysises::urinalyses
::vaginosises::vaginoses
::xanthomatosises::xanthomatoses
::xanthosises::xanthoses
::x-axises::x-axes
::xenodiagnosises::xenodiagnoses
::xenogenesises::xenogeneses
::xenozoonosises::xenozoonoses
::xeransises::xeranses
::xerosises::xeroses
::y-axises::y-axes
::z-axises::z-axes
::zoonosises::zoonoses
::zygapophysises::zygapophyses
::zygomycosises::zygomycoses
::zygosises::zygoses
::zymosises::zymoses
::archaeopteryxs::archaeopteryges
::coccyxs::coccyges
::electrolarynxs::electrolarynges
::epipharynxs::epipharynges
::hydrosalpinxs::hydrosalpinges
::hypopharynxs::hypopharynges
::meninxs::meninges
::mesosalpinxs::mesosalpinges
::nasopharynxs::nasopharynges
::oropharynxs::oropharynges
::phalanxs::phalanges
::pharynxs::pharynges
::phorminxs::phorminges
::pyosalpinxs::pyosalpinges
::remixs::remiges
::salpinxs::salpinges
::sphexs::spheges
::syrinxs::syringes
::archaeopteryxes::archaeopteryges
::coccyxes::coccyges
::electrolarynxes::electrolarynges
::epipharynxes::epipharynges
::hydrosalpinxes::hydrosalpinges
::hypopharynxes::hypopharynges
::meninxes::meninges
::mesosalpinxes::mesosalpinges
::nasopharynxes::nasopharynges
::oropharynxes::oropharynges
::phalanxes::phalanges
::pharynxes::pharynges
::phorminxes::phorminges
::pyosalpinxes::pyosalpinges
::remixes::remiges
::salpinxes::salpinges
::sphexes::spheges
::syrinxes::syringes
::abacuss::abaci
::abaculuss::abaculi
::acanthuss::acanthi
::acinuss::acini
::aegagruss::aegagri
::alumnuss::alumni
::alveoluss::alveoli
::anthocauluss::anthocauli
::antoecuss::antoeci
::archmaguss::archmagi
::bacilluss::bacilli
::baetuluss::baetuli
::cactuss::cacti
::calculuss::calculi
::calluss::calli
::campuss::campi
::cantatricuss::cantatrici
::cathetuss::catheti
::doofuss::doofi
::emboluss::emboli
::emerituss::emeriti
::esophaguss::esophagi
::focuss::foci
::foetuss::foeti
::fumuluss::fumuli
::funguss::fungi
::geniuss::genii
::ghettuss::ghetti
::glutaeuss::glutaei
::gonococcuss::gonococci
::hippopotamuss::hippopotami
::homunculuss::homunculi
::improvisatoruss::improvisatori
::incubuss::incubi
::locuss::loci
::macrofunguss::macrofungi
::macronucleuss::macronuclei
::maguss::magi
::manifestuss::manifesti
::maximuss::maximi
::metoecuss::metoeci
::naevuss::naevi
::nucleuss::nuclei
::obeluss::obeli
::octopuss::octopi
::oeconomuss::oeconomi
::oesophaguss::oesophagi
::oestruss::oestri
::ostinatuss::ostinati
::pannuss::panni
::gyruss::gyri
::peniuss::penii
::perioecuss::perioeci
::phocomeluss::phocomeli
::phoetuss::phoeti
::pianissimuss::pianissimi
::platypuss::platypi
::polypuss::polypi
::precuneuss::precunei
::radiuss::radii
::rhinoceruss::rhinoceri
::rhombuss::rhombi
::sarcophaguss::sarcophagi
::scaloppinuss::scaloppini
::scenariuss::scenarii
::soliduss::solidi
::stilettuss::stiletti
::stimuluss::stimuli
::succubuss::succubi
::syllabuss::syllabi
::thesauruss::thesauri
::thrombuss::thrombi
::toruss::tori
::torsuss::torsi
::triumviruss::triumviri
::trophuss::trophi
::uraeuss::uraei
::uteruss::uteri
;::viruss::viri
;::viriuss::virii
::xiphopaguss::xiphopagi
::zygomaticuss::zygomatici
::abacuses::abaci
::abaculuses::abaculi
::acanthuses::acanthi
::acinuses::acini
::aegagruses::aegagri
::alumnuses::alumni
::alveoluses::alveoli
::anthocauluses::anthocauli
::antoecuses::antoeci
::archmaguses::archmagi
::bacilluses::bacilli
::baetuluses::baetuli
::cactuses::cacti
::calculuses::calculi
::calluses::calli
::campuses::campi
::cantatricuses::cantatrici
::cathetuses::catheti
::doofuses::doofi
::emboluses::emboli
::emerituses::emeriti
::esophaguses::esophagi
;::focuses::foci
;::foetuses::foeti
::fumuluses::fumuli
::funguses::fungi
::geniuses::genii
::ghettuses::ghetti
::glutaeuses::glutaei
::gonococcuses::gonococci
::hippopotamuses::hippopotami
::homunculuses::homunculi
::improvisatoruses::improvisatori
::incubuses::incubi
::locuses::loci
::macrofunguses::macrofungi
::macronucleuses::macronuclei
::maguses::magi
::manifestuses::manifesti
::maximuses::maximi
::metoecuses::metoeci
::naevuses::naevi
::nucleuses::nuclei
::obeluses::obeli
::octopuses::octopi
::oeconomuses::oeconomi
;::oesophaguses::oesophagi
::oestruses::oestri
::ostinatuses::ostinati
::pannuses::panni
::gyruses::gyri
::peniuses::penii
::perioecuses::perioeci
::phocomeluses::phocomeli
::phoetuses::phoeti
::pianissimuses::pianissimi
::platypuses::platypi
::polypuses::polypi
::precuneuses::precunei
::radiuses::radii
::rhinoceruses::rhinoceri
::rhombuses::rhombi
::sarcophaguses::sarcophagi
::scaloppinuses::scaloppini
::scenariuses::scenarii
::soliduses::solidi
::stilettuses::stiletti
::stimuluses::stimuli
::succubuses::succubi
::syllabuses::syllabi
::thesauruses::thesauri
::thrombuses::thrombi
::toruses::tori
::torsuses::torsi
::triumviruses::triumviri
::trophuses::trophi
::uraeuses::uraei
::uteruses::uteri
;::viruses::viri
;::viriuses::virii
::xiphopaguses::xiphopagi
::zygomaticuses::zygomatici
::selfabasement::self-abasement
::selfabsorption::self-absorption
::selfabuse::self-abuse
::selfacceptance::self-acceptance
::selfadvancement::self-advancement
::selfanalysis::self-analysis
::selfassurance::self-assurance
::selfassured::self-assured
::selfaware::self-aware
::selfawareness::self-awareness
::selfbelief::self-belief
::selfblood::self-blood
::selfcomplacent::self-complacent
::selfconceit::self-conceit
::selfcondensation::self-condensation
::selfconfidence::self-confidence
::selfconfident::self-confident
::selfcongratulation::self-congratulation
::selfconscious::self-conscious
::selfconsciousness::self-consciousness
::selfcontradictory::self-contradictory
::selfcontrol::self-control
::selfcorrect::self-correct
::selfcritical::self-critical
::selfdeceit::self-deceit
::selfdeception::self-deception
::selfdeclared::self-declared
::selfdefense::self-defense
::selfdelusion::self-delusion
::selfdenial::self-denial
::selfdeprecating::self-deprecating
::selfdestruct::self-destruct
::selfdestruction::self-destruction
::selfdestructive::self-destructive
::selfdetermination::self-determination
::selfdistance::self-distance
::selfdoubt::self-doubt
::selfeducated::self-educated
::selfemployment::self-employment
::selfevidence::self-evidence
::selfevident::self-evident
::selfevidently::self-evidently
::selfexam::self-exam
::selfexamination::self-examination
::selfexcitation::self-excitation
::selffertile::self-fertile
::selffertilization::self-fertilization
::selfflattery::self-flattery
::selffulfilling::self-fulfilling
::selfharm::self-harm
::selfhelp::self-help
::selfimage::self-image
::selfimmolate::self-immolate
::selfimmolation::self-immolation
::selfimportance::self-importance
::selfimportant::self-important
::selfimposed::self-imposed
::selfimprovement::self-improvement
::selfincrimination::self-incrimination
::selfinduction::self-induction
::selfindulgence::self-indulgence
::selfindulgent::self-indulgent
::selfinterest::self-interest
::selfjustificatory::self-justificatory
::selfkill::self-kill
::selfknowledge::self-knowledge
::selflove::self-love
::selfmade::self-made
::selfmastery::self-mastery
::selfmurderer::self-murderer
::selforganization::self-organization
::selfperpetuating::self-perpetuating
::selfperpetuation::self-perpetuation
::selfpity::self-pity
::selfpleasure::self-pleasure
::selfpollinating::self-pollinating
::selfpollination::self-pollination
::selfportrait::self-portrait
::selfpossession::self-possession
::selfpresentation::self-presentation
::selfpreservation::self-preservation
::selfproclaimed::self-proclaimed
::selfpromotion::self-promotion
::selfrealization::self-realization
::selfredress::self-redress
::selfreference::self-reference
::selfreferential::self-referential
::selfreliance::self-reliance
::selfreliant::self-reliant
::selfrespect::self-respect
::selfrestraint::self-restraint
::selfrighteous::self-righteous
::selfrighteously::self-righteously
::selfrighteousness::self-righteousness
::selfsabotage::self-sabotage
::selfsacrifice::self-sacrifice
::self-same::selfsame
::selfsatisfaction::self-satisfaction
::selfsatisfied::self-satisfied
::selfsecure::self-secure
::selfseed::self-seed
::selfseeker::self-seeker
::selfselection::self-selection
::self-name::selfname
::selfsimilarity::self-similarity
::selfslaughter::self-slaughter
::selfsoar::self-soar
::selfstanding::self-standing
::selfstarter::self-starter
::selfsterile::self-sterile
::selfstyled::self-styled
::selfsuck::self-suck
::selfsufficiency::self-sufficiency
::selfsufficient::self-sufficient
::selfsupport::self-support
::selftalk::self-talk
::selftaught::self-taught
::selfwill::self-will
::selfworth::self-worth
::self abasement::self-abasement
::self absorption::self-absorption
::self abuse::self-abuse
::self acceptance::self-acceptance
::self advancement::self-advancement
::self analysis::self-analysis
::self assurance::self-assurance
::self assured::self-assured
::self aware::self-aware
::self awareness::self-awareness
::self belief::self-belief
::self blood::self-blood
::self complacent::self-complacent
::self conceit::self-conceit
::self condensation::self-condensation
::self confidence::self-confidence
::self confident::self-confident
::self congratulation::self-congratulation
::self conscious::self-conscious
::self consciousness::self-consciousness
::self contradictory::self-contradictory
::self control::self-control
::self correct::self-correct
::self critical::self-critical
::self deceit::self-deceit
::self deception::self-deception
::self declared::self-declared
::self defense::self-defense
::self delusion::self-delusion
::self denial::self-denial
::self deprecating::self-deprecating
::self destruct::self-destruct
::self destruction::self-destruction
::self destructive::self-destructive
::self determination::self-determination
::self distance::self-distance
::self doubt::self-doubt
::self educated::self-educated
::self employment::self-employment
::self evidence::self-evidence
::self evident::self-evident
::self evidently::self-evidently
::self exam::self-exam
::self examination::self-examination
::self excitation::self-excitation
::self fertile::self-fertile
::self fertilization::self-fertilization
::self flattery::self-flattery
::self fulfilling::self-fulfilling
::self harm::self-harm
::self help::self-help
::self image::self-image
::self immolate::self-immolate
::self immolation::self-immolation
::self importance::self-importance
::self important::self-important
::self imposed::self-imposed
::self improvement::self-improvement
::self incrimination::self-incrimination
::self induction::self-induction
::self indulgence::self-indulgence
::self indulgent::self-indulgent
::self interest::self-interest
::self justificatory::self-justificatory
::self kill::self-kill
::self knowledge::self-knowledge
::self love::self-love
::self made::self-made
::self mastery::self-mastery
::self murderer::self-murderer
::self organization::self-organization
::self perpetuating::self-perpetuating
::self perpetuation::self-perpetuation
::self pity::self-pity
::self pleasure::self-pleasure
::self pollinating::self-pollinating
::self pollination::self-pollination
::self portrait::self-portrait
::self possession::self-possession
::self presentation::self-presentation
::self preservation::self-preservation
::self proclaimed::self-proclaimed
::self promotion::self-promotion
::self realization::self-realization
::self redress::self-redress
::self reference::self-reference
::self referential::self-referential
::self reliance::self-reliance
::self reliant::self-reliant
::self respect::self-respect
::self restraint::self-restraint
::self righteous::self-righteous
::self righteously::self-righteously
::self righteousness::self-righteousness
::self sabotage::self-sabotage
::self sacrifice::self-sacrifice
::self same::selfsame
::self satisfaction::self-satisfaction
::self satisfied::self-satisfied
::self secure::self-secure
::self seed::self-seed
::self seeker::self-seeker
::self selection::self-selection
::self name::selfname
::historio-metry::historiometry
::historio metry::historiometry
::self similarity::self-similarity
::self slaughter::self-slaughter
::self soar::self-soar
::self standing::self-standing
::self starter::self-starter
::self sterile::self-sterile
::self styled::self-styled
::self suck::self-suck
::self sufficiency::self-sufficiency
::self sufficient::self-sufficient
::self support::self-support
::self talk::self-talk
::self taught::self-taught
::self will::self-will
::self worth::self-worth
::ham string::hamstring
::ham-string::hamstring
::vice consul::vice-consul
::viceconsul::vice-consul
::vice roy::viceroy
::vice-roy::viceroy
::self-ish::selfish
::self-less::selfless
::self less::selfless
::prochoice::pro-choice
::pro choice::pro-choice
::ultra aggressive::ultra-aggressive
::ultraaggressive::ultra-aggressive
::on the fly::on-the-fly
::all intensive purposes::all intents and purposes
::chomp at the bit::champ at the bit
::fair to midland::fair to middling
::had boughten::had bought
::foul swoop::fell swoop
::should of::should have
::most importantly::most important
::more importantly::more important
::spirit and image::spitting image
::with who::with whom
::affect's::affects
::under graduate::undergraduate
::under-graduate::undergraduate
::ground work::groundwork
::ground-work::groundwork
::hangout::hang out
::hang-out::hang out
::schoolbus::school bus
::sciencefiction::science fiction
::science-fiction::science fiction
::a.m. in the morning::a.m.
::absolutely certain::certain
::absolutely essential::essential
:*:absolutely guarantee::guarantee
::absolutely necessary::necessary
::absolutely sure::sure
::actual experience::experience
::actual fact::fact
::actual facts::facts
::add an additional::add
::add up::add
::added bonus::bonus
::advance forward::advance
::advance notice::notice
::advance planning::planning
::advance preview::preview
::advance reservations::reservations
::advance warning::warning
::advanced planning::planning
::advanced reservation::reservation
::advanced warning::warning
::affirmative yes::yes
::aid and abet::abet
::all-time record::record
::alternative choice::alternative
::and etc.::etc.
::annual anniversary::anniversary
::anonymous stranger::stranger
::aquamarine in color::aquamarine
:*:armed gunm::gunm
::artificial prosthesis::prosthesis
::as of late::lately
::as per::per
::as per usual::as usual
::ascend up::ascend
::ask a question::ask
::ask the question::ask
::assemble together::assemble
::at the present time::at present
::ATM machine::ATM
::attach together::attach
::autobiography of her life::autobiography
::autobiography of her own life::autobiography
::autobiography of his life::autobiography
::autobiography of his own life::autobiography
::bald-headed::bald
::balsa wood::balsa
::basic essential::essential
:*:basic fundamental::fundamentals
;::basic fundamentals::fundamentals
::basic necessities::necessities
::best ever::best
::biography of her life::biography
::biography of his life::biography
::black in color::black
::blend together::blend
::blue in color::blue
::boat marina::marina
::bouquet of flowers::bouquet
::brass in color::brass
::brief in duration::brief
:*:brief moment::moment
::brief summary::summary
::brown in color::brown
:*:burning ember::ember
::cacophony of sound::cacophony
::came at a time when::came when
::cameo appearance::cameo
::cancel out::cancel
::careful scrutiny::scrutiny
::cash money::cash
::cease and desist::cease
::circle around::circle
::circulate around::circulate
::classify into groups::classify
::close proximity::proximity
::close scrutiny::scrutiny
::closed fist::fist
::collaborate together::collaborate
::combine together::combine
::commute back and forth::commute
::compete with each other::compete
::completely annihilate::annihilate
::completely destroy::destroy
::completely eliminate::eliminate
::completely engulf::engulf
:*:completely fill::fill
;::completely filled::filled
:*:completely finish::finish
::completely opposite::opposite
::completely surround::surround
::component part::part
::confer together::confer
::confused state::confused
::connect together::connect
::connect up::connect
::consensus of opinion::consensus
::constantly maintain::maintain
::cooperate together::cooperate
::copper in color::copper
::could possibly::could
::crisis situation::crisis
::curative process::curative
::current incumbent::incumbent
::current trend::rend
::cyan in color::cyan
::definite decision::decision
::depreciate in value::depreciate
::descend down::descend
::desirable benefit::benefit
::different kind::kind
::difficult dilemma::dilemma
::direct confrontation::confrontation
::disappear from sight::disappear
::do damage to::damage
::do harm to::harm
::drop down::drop
::during a course of::during a
::during the course of::during
::dwindle down::dwindle
::each and every::each
::earlier in time::earlier
::eliminate altogether::eliminate
::emergency situation::emergency
:*:empty hole::hole
::empty out::empty
:*:empty space::space
::enclosed herein::enclosed
::end result::result
::enter in::enter
::entirely eliminate::eliminate
::equal to one another::equal
::eradicate completely::eradicate
::estimated at about::estimated
::estimated roughly::estimated
::estimates at about::estimates
::estimates roughly::estimates
::evolve over time::evolve
::exact same::same
::exposed opening::opening
::extradite back::extradite
::face mask::mask
::fall down::fall
::false pretense::pretense
::favorable approval::approval
::fellow classmate::classmate
::fellow colleague::colleague
::fellow student::student
::few in number::few
::filled to capacity::filled
:*:final conclusion::conclusion
:*:final end::end
:*:final outcome::outcome
::final ultimatum::ultimatum
::first and foremost::first
::first began::began
::first beginnings::beginnings
::first begins::begins
:*:first conceive::conceive
::first of all::first
::flesh in color::flesh
::fly through the air::fly
::follow after::follow
::for a number of::for
::for a period of::for
::foreign import::import
::former graduate::graduate
::former veteran::veteran
::free gift::gift
::from whence::whence
::frozen ice::ice
::frozen tundra::tundra
::full satisfaction::satisfaction
::full to capacity::full
::fuse together::fuse
:*:future plan::plan
::future recurrence::recurrence
::gather together::gather
::general public::public
::gold in color::gold
::GOP party::GOP
::gray in color::gray
::GRE exam::GRE
::green in color::green
::grey in color::grey
::grow in size::grow
::had done previously::had done
::harmful injuries::injuries
::head honcho::honcho
::heat up::heat
::HIV virus::HIV
::hoist up::hoist
::hollow tube::tube
::hurry up::hurry
::illustrated drawing::drawing
::in a prompt manner::promptly
::in need of::need
::in order to::to
::incredible to believe::incredible
::indicted on a charge::indicted
::input into::input
::integrate together::integrate
::integrate with each other::integrate
::interdependent on each other::interdependent
::introduced a new::introduced
::introduced for the first time::introduced
::invited guest::guest
::irregardless::regardless
::ISBN number::ISBN
::it is also important to note that::notably
::it is important to note that::notably
::join together::join
::joint collaboration::collaboration
::khaki in color::khaki
::kneel down::kneel
::knowledgeable expert::expert
::lag behind::lag
::later time::later
::LCD display::LCD
::lift up::lift
::little baby::baby
::live studio audience::studio audience
::live witness::witness
:*:local resident::resident
::look ahead to the future::look to the future
::look back in retrospect::look back
::made an effort::tried
::made out of::made of
::magenta in color::magenta
::major breakthrough::breakthrough
:*:major feat::feat
;::majority of::most
::make an effort::try
::manually by hand::manually
::maroon in color::maroon
::may possibly::may
::meet together::meet
::meet with each other::meet
::mental telepathy::telepathy
::merge together::merge
::might possibly::might
::minestrone soup::minestrone
::mix together::mix
::mutual cooperation::cooperation
::mutual respect for each other::mutual respect
::mutually interdependent::interdependent
::myriad of::myriad
::nape of her neck::nape
::nape of his neck::nape
::native habitat::habitat
::natural instinct::instinct
::never before::never
:*:new beginning::beginning
;::new beginnings::beginnings
:*:new construction::construction
:*:new innovation::innovation
:*:new invention::invention
:*:new recruit::recruit
::none at all::none
::nostalgia for the past::nostalgia
::now pending::pending
::number-one leader in::leader in
::of late::lately
::off of::off
:*:old adage::adage
::old cliche::clich�
:*:old custom::custom
:*:old proverb::proverb
::on a daily basis::daily
::on a regular basis::regularly
::on a relative basis::relatively
::on a temporary basis::temporarily
::on a yearly basis::yearly
::open trench::trench
::open up::open
::oral conversation::conversation
::orange in color::orange
::orchid in color::orchid
:*:originally creat::creat
::output out of::output
::outside in the yard::in the yard
::outside of::outside
:*:over exaggerate::exaggerate
::over with::over
:*:overexaggerate::exaggerate
:*:overly aggressive::overaggressive
::overly careful::overcareful
::overused cliche::clich�
::p.m. in the evening::p.m.
::palm of the hand::palm
::passing fad::fad
::past experience::experience
::past history::history
:*:past memor::memor
:*:past record::record
::penetrate into::penetrate
::period of time::period
::personal friend::friend
::personal opinion::opinion
::pick and choose::pick
::PIN number::PIN
::pizza pie::pizza
::plan ahead::plan
::plan in advance::plan
::Please RSVP::RSVP
::plunge down::plunge
::polar opposite::opposite
::positive identification::identification
::possibly might::might
::postpone until later::postpone
::pouring down rain::pouring rain
:*:preboard as an airplane::board
::preheat::heat
::prerecord::record
::present incumbent::incumbent
::present time::present
::previously listed above::previously listed
::private industry::industry
::proceed ahead::proceed
::proposed plan::plan
::protest against::protest
::protesting against::protesting
::pursue after::pursue
::quartz in color::quartz
::raise up::raise
::RAM memory::RAM
::reason is because::reason is
::reason why::reason
::recur again::recur
::red in color::red
::re-elect for another term::re-elect
::refer back::refer
::reflect back::reflect
::regular routine::routine
::repeat again::repeat
::reply back::reply
::retreat back::retreat
::revert back::revert
::rise up::rise
::round in shape::round
::safe haven::haven
::safe sanctuary::sanctuary
::same exact::same
::same identical::identical
::sand dune::dune
::scarlet in color::scarlet
::scrutinize in detail::scrutinize
::separated apart from each other::separated
::serious danger::danger
::share together::share
:*:sharp point::point
::shiny in appearance::shiny
::shut down::shut
::sienna in color::sienna
::since the time when::since
::single unit::unit
::skipped over::skipped
::slow speed::slow
::small size::small
::small speck::speck
::soft in texture::soft
::soft to the touch::soft
::sole of the foot::sole
::spell out in detail::spell out
::spliced together::spliced
::start off::start
::start on::start
::still persist::persist
::still remain::remain
::sudden impulse::impulse
::suddenly explod::explod
::sum total::total
::surrounded on all sides::surrounded
::take into consideration::consider
::tall in height::tall
::tall in stature::tall
::tan in color::tan
::temper tantrum::tantrum
::ten in number::ten
::therapeutic treatment::treatment
::three-way love triangle::love triangle
::time period::time
::tiny bit::bit
::total destruction::destruction
::true fact::fact
::truly sincere::sincere
::tuna fish::tuna
::turquoise in color::turquoise
::twelve midnight::midnight
::twelve noon::noon
::two equal halves::halves
::ultimate goal::goal
::undergraduate student::undergraduate
::underground subway::subway
::unexpected emergency::emergency
::unexpected surprise::surprise
::unintended mistake::mistake
::unintentional mistake::mistake
::universal panacea::panacea
::unnamed anonymous::anonymous
::UPC code::UPC
::usual custom::custom
::utilizable::useable
::utilize::use
::utilizing::using
::vacillate back and forth::vacillate
::veiled ambush::ambush
::very pregnant::pregnant
::very unique::unique
::violet in color::violet
::visible to the eye::visible
::wall mural::mural
::warn in advance::warn
::weather conditions::weather
::weather situation::weather
::whether or not::whether
::whilst::while
::white in color::white
::white snow::snow
::with the exception of::except
::write down::write
::writes down::writes
::writing down::writing
::written down::written
::wrote down::wrote
::yearly anniversary::anniversary
::yellow in color::yellow
::lamb skin::lambskin
::lamb-skin::lambskin
::bio degradable::biodegradable
::bio-degradable::biodegradable
::ultimate last::ultimate
::VAT Tax::VAT
::APR rate::APR
::ABM missile::ABM
::anti ballistic::antiballistic
::anti-ballistic::antiballistic
::ABS system::ABS
::AC current::AC
::ACT test::ACT
::ADSL line::ADSL
::APL programing language::APL
::BASIC code::BASIC
::CAD design::CAD
::CNN news network::CNN
::DC current::DC
::DMZ zone::DMZ
::DOS operating system::DOS
::GMT time::GMT
::HTML language::HTML
::ISDN network::ISDN
::LAN network::LAN
::LED diode::LED
::NATO organization::NATO
::PC Computer::PC
::SAT test::SAT
::SCSI interface::SCSI
::VIN number::VIN
::Brazilian-born::Brazil-born
::Texan-born::Texas-born
::, but yet::, yet
::co-mingle::mingle
::comingle::mingle
::critical juncture::juncture
::first discovered::discovered
::unmanned drone::drone
::most unique::unique
::orbit around::orbit
::at this point in time::now
::I thought to myself::I thought
::honest truth::truth
::totally unique::unique
::re-doubling::quadrupling
::redundant tautology::tautology
::counter example::counterexample
::counter-example::counterexample
::completely unanimous::unanimous
::serious crisis::crisis
::a majority of::most
::a number of::many
::accounted for by the fact that::because
::as a consequence of::because
::due to the fact that::because
::in view of the fact that::because
::for the reason that::because
::on account of::because
::on the basis of::because
::on the grounds that::because
::owing to the fact that::because
::an order of magnitude::ten times
::are of the same opinion::agree
::at the present moment::now
;::by means of::by, with
::despite the fact that::although
::fewer in number::fewer
::for the purpose of::for
::has the capability of::can
::having regard to::about
::if conditions are such that::if
::in all cases::invariably
::in close proximity to::near
::in connection with::concerning
;::in my opinion it is not an unjustifiable assumption that::I think
::in the event that::if
::it is clear that::clearly
::it is often the case that::often
::it is possible that the cause is::the cause may be
::it is worth pointing out that::note that
::it may, however, be noted that::but
::lacked the ability to::could not
::large numbers of::many
::prior to::before
::antibiotic for treatment::treatment
::contributing factor::factor
::exactly identical::identical
::necessary prerequisite::prerequisite
::smooth to the touch::smooth
::general consensus::consensus
::costs a total of::costs
::reverted back::reverted
::in actual fact::in fact
::a specific example::an example
::in two equal halves::in halves
::different varieties::varieties
::percolate down::percolate
::grouped together::grouped
::exact duplicate::duplicate
::all of::all
::both of::both
;::in terms of::as a
::in light of the fact that::because
::given the fact that::because
::at the end of the day::ultimately
::inasmuch as::because
::nit pick::nitpick
::nit-pick::nitpick
::under whelm::underwhelm
::under-whelm::underwhelm
::try and get::try to get
::scum-bag::scumbag
::scum bag::scumbag
::lifes::lives
;::feed back::feedback
::feed-back::feedback
;::absolutely guaranteed::guaranteed
;::advanced reservations::reservations
::notice in advance::notice
::planning in advance::planning
::warning in advance::warning
::warnings in advance::warnings
::planned in advance::planned
::plans in advance::plans
::reservation in advance::reservation
::reservations in advance::reservations
::as for example::as
::basic essentials::essentials
::bare essentials::essentials
::bare basics::basics
::filling to capacity::filling
::at a time when::when
;::fully finish::finish
:*:fully fill::fill
::complete opposite::opposite
::just to::to
;::earliest beginning::beginning
::planned ahead::planned
::plans ahead::plans
::to just::to
::protruded out::protruded
::protrudes out::protrudes
::protruding out::protruding
::but nevertheless::but
::in this day and age::in this day
::mass exodus::exodus
::Mohammedan::Muslim
::Muhammadan::Muslim
::Capetown::Cape Town
::groupsex::group sex
::Newyorker::New Yorker
::Foundland::Newfoundland
::after-affect::after-effect
::afteraffect::after-effect
::broken hearted::brokenhearted
::broken-hearted::brokenhearted
;::for ban::forban
;::for bar::forbar
;::for bathe::forbathe
;::for bear::forbear
;::for beat::forbeat
;::for bite::forbite
;::for black::forblack
;::for bleed::forbleed
;::for break::forbreak
;::for bruise::forbruise
;::for burn::forburn
;::for burst::forburst
;::for buy::forbuy
;::for byland::forbyland
;::for carve::forcarve
;::for cast::forcast
;::for casten::forcasten
;::for clem::forclem
;::for cling::forcling
;::for eclose::foreclose
;::for clutch::forclutch
;::for cover::forcover
;::for cremp::forcremp
;::for curse::forcurse
;::for cut::forcut
;::for dede::fordede
;::for deem::fordeem
;::for dim::fordim
;::for do::fordo
;::for dote::fordote
;::for dread::fordread
;::for drench::fordrench
;::for drive::fordrive
;::for dry::fordry
;::for dull::fordull
;::for dwine::fordwine
;::for ss::fress
;::for t::fret
;::for faint::forfaint
;::for fare::forfare
;::for fered::forfered
;::for fend::forfend
;::for fight::forfight
;::for flutter::forflutter
;::for buyer::forbuyer
;::for cause::forcause
;::for cleave::forcleave
;::for graithing::forgraithing
;::for how::forhow
;::for hush::forhush
;::for let::forlet
;::for lornness::forlornness
;::for sake::forsake
;::for saying::forsaying
;::for shake::forshake
;::for shorten::forshorten
;::for shrunken::forshrunken
;::for sling::forsling
;::for slouthe::forslouthe
;::for sume::forsume
;::for swarted::forswarted
;::for swearer::forswearer
;::for wasted::forwasted
;::for wear::forwear
;::for yield::foryield
;::for foughten::forfoughten
;::for fret::forfret
;::for gab::forgab
;::for gather::forgather
;::for gnaw::forgnaw
;::for gnide::forgnide
;::for go::forgo
;::for graith::forgraith
;::for grow::forgrow
;::for guilt::forguilt
;::for hale::forhale
;::for hang::forhang
;::for hard::forhard
;::for harden::forharden
;::for hare::forhare
;::for hele::forhele
;::for hew::forhew
;::for hill::forhill
;::for hold::forhold
;::for hunger::forhunger
;::for irk::forirk
;::for judge::forjudge
;::for lagen::forlagen
;::for lat::forlat
;::for lay::forlay
;::for lead::forlead
;::for leave::forleave
;::for lend::forlend
;::for lese::forlese
;::for lie::forlie
;::for lighten::forlighten
;::for live::forlive
;::for long::forlong
;::for loppin::forloppin
;::for lorn::forlorn
;::for make::formake
;::for may::formay
;::for melt::formelt
;::for nigh::fornigh
;::for nim::fornim
;::for numb::fornumb
;::for old::forold
;::for pamper::forpamper
;::for pass::forpass
;::for pine::forpine
;::for ridden::forridden
;::for mp::frump
;::for said::forsaid
;::for say::forsay
;::for scald::forscald
;::for see::forsee
;::for seek::forseek
;::for seethe::forseethe
;::for sench::forsench
;::for set::forset
;::for shame::forshame
;::for shape::forshape
;::for shrink::forshrink
;::for shrunk::forshrunk
;::for shut::forshut
;::for sing::forsing
;::for slack::forslack
;::for sleep::forsleep
;::for slinger::forslinger
;::for slip::forslip
;::for sloth::forsloth
;::for slowth::forslowth
;::for slow::forslow
;::for slug::forslug
;::for smite::forsmite
;::for span::forspan
;::for spare::forspare
;::for speak::forspeak
;::for spend::forspend
;::for spent::forspent
;::for spill::forspill
;::for spread::forspread
;::for sta::forsta
;::for stand::forstand
;::for steal::forsteal
;::for stop::forstop
;::for straught::forstraught
;::for swallow::forswallow
;::for swart::forswart
;::for sweal::forsweal
;::for swear::forswear
;::for swat::forswat
;::for swelt::forswelt
;::for swift::forswift
;::for swing::forswing
;::for swink::forswink
;::for swollen::forswollen
;::for swonk::forswonk
;::for swunk::forswunk
;::for take::fortake
;::for tatter::fortatter
;::for tax::fortax
;::for teach::forteach
;::for tear::fortear
;::for tee::fortee
;::for think::forthink
;::for thirst::forthirst
;::for throw::forthrow
;::for thrist::forthrist
;::for toggle::fortoggle
;::for etossed::foretossed
;::for travel::fortravel
;::for tread::fortread
;::for wake::forwake
;::for walk::forwalk
;::for wall::forwall
;::for wander::forwander
;::for warn::forwarn
;::for werp::forwerp
;::for waste::forwaste
;::for wax::forwax
;::for way::forway
;::for wean::forwean
;::for weary::forweary
;::for weep::forweep
;::for welk::forwelk
;::for went::forwent
;::for worn::forworn
;::for whore::forwhore
;::for wither::forwither
;::for wonder::forwonder
;::for work::forwork
;::for worship::forworship
;::for worth::forworth
;::for wound::forwound
;::for wrap::forwrap
;::for wrought::forwrought
::for-wrought::forwrought
::for-ban::forban
::for-bar::forbar
::for-bathe::forbathe
::for-bear::forbear
::for-beat::forbeat
::for-bite::forbite
::for-black::forblack
::for-bleed::forbleed
::for-break::forbreak
::for-bruise::forbruise
::for-burn::forburn
::for-burst::forburst
::for-buy::forbuy
::for-byland::forbyland
::for-carve::forcarve
:*:for-cast::forcast
;::for-casten::forcasten
::for-clem::forclem
::for-cling::forcling
;::for-eclose::foreclose
::for-clutch::forclutch
::for-cover::forcover
::for-cremp::forcremp
::for-curse::forcurse
::for-cut::forcut
::for-dede::fordede
::for-deem::fordeem
::for-dim::fordim
::for-do::fordo
::for-dote::fordote
::for-dread::fordread
::for-drench::fordrench
::for-drive::fordrive
::for-dry::fordry
::for-dull::fordull
::for-dwine::fordwine
;::for-ss::fress
;::for-t::fret
::for-faint::forfaint
::for-fare::forfare
::for-fered::forfered
::for-fend::forfend
::for-fight::forfight
::for-flutter::forflutter
::for-buyer::forbuyer
::for-cause::forcause
::for-cleave::forcleave
::for-graithing::forgraithing
::for-how::forhow
::for-hush::forhush
::for-let::forlet
::for-lornness::forlornness
::for-sake::forsake
::for-saying::forsaying
::for-shake::forshake
::for-shorten::forshorten
::for-shrunken::forshrunken
::for-sling::forsling
::for-slouthe::forslouthe
::for-sume::forsume
::for-swarted::forswarted
::for-swearer::forswearer
::for-wasted::forwasted
::for-wear::forwear
::for-yield::foryield
::for-foughten::forfoughten
::for-fret::forfret
::for-gab::forgab
::for-gather::forgather
::for-gnaw::forgnaw
::for-gnide::forgnide
::for-go::forgo
::for-graith::forgraith
::for-grow::forgrow
::for-guilt::forguilt
::for-hale::forhale
::for-hang::forhang
::for-hard::forhard
::for-harden::forharden
::for-hare::forhare
::for-hele::forhele
::for-hew::forhew
::for-hill::forhill
::for-hold::forhold
::for-hunger::forhunger
::for-irk::forirk
::for-judge::forjudge
::for-lagen::forlagen
::for-lat::forlat
::for-lay::forlay
::for-lead::forlead
::for-leave::forleave
::for-lend::forlend
::for-lese::forlese
::for-lie::forlie
::for-lighten::forlighten
::for-live::forlive
::for-long::forlong
::for-loppin::forloppin
::for-lorn::forlorn
::for-make::formake
::for-may::formay
::for-melt::formelt
::for-nigh::fornigh
::for-nim::fornim
::for-numb::fornumb
::for-old::forold
::for-pamper::forpamper
::for-pass::forpass
::for-pine::forpine
::for-ridden::forridden
::for-mp::frump
::for-said::forsaid
::for-say::forsay
::for-scald::forscald
::for-see::forsee
::for-seek::forseek
::for-seethe::forseethe
::for-sench::forsench
::for-set::forset
::for-shame::forshame
::for-shape::forshape
::for-shrink::forshrink
::for-shrunk::forshrunk
::for-shut::forshut
::for-sing::forsing
::for-slack::forslack
::for-sleep::forsleep
::for-slinger::forslinger
::for-slip::forslip
::for-sloth::forsloth
::for-slowth::forslowth
::for-slow::forslow
::for-slug::forslug
::for-smite::forsmite
::for-span::forspan
::for-spare::forspare
::for-speak::forspeak
::for-spend::forspend
::for-spent::forspent
::for-spill::forspill
::for-spread::forspread
::for-sta::forsta
::for-stand::forstand
::for-steal::forsteal
::for-stop::forstop
::for-straught::forstraught
::for-swallow::forswallow
::for-swart::forswart
::for-sweal::forsweal
::for-swear::forswear
::for-swat::forswat
::for-swelt::forswelt
::for-swift::forswift
::for-swing::forswing
::for-swink::forswink
::for-swollen::forswollen
::for-swonk::forswonk
::for-swunk::forswunk
::for-take::fortake
::for-tatter::fortatter
::for-tax::fortax
::for-teach::forteach
::for-tear::fortear
::for-tee::fortee
::for-think::forthink
::for-thirst::forthirst
::for-throw::forthrow
::for-thrist::forthrist
::for-toggle::fortoggle
::for-etossed::foretossed
::for-travel::fortravel
::for-tread::fortread
::for-wake::forwake
::for-walk::forwalk
::for-wall::forwall
::for-wander::forwander
::for-warn::forwarn
::for-werp::forwerp
::for-waste::forwaste
::for-wax::forwax
::for-way::forway
::for-wean::forwean
::for-weary::forweary
::for-weep::forweep
::for-welk::forwelk
::for-went::forwent
::for-worn::forworn
::for-whore::forwhore
::for-wither::forwither
::for-wonder::forwonder
::for-work::forwork
::for-worship::forworship
::for-worth::forworth
::for-wound::forwound
::for-wrap::forwrap
::protoAlbanian::Proto-Albanian
::protoAlgic::Proto-Algic
::protoAlgonquian::Proto-Algonquian
::protoancestor::proto-ancestor
::protoindustry::proto-industry
::protoJaponic::Proto-Japonic
::protoneutron star::proto-neutron star
::protooncogenic::proto-oncogenic
::protoPolynesian::Proto-Polynesian
::protorace::proto-race
::protoracial::proto-racial
::protoscience fiction::proto-science fiction
::proto Albanian::Proto-Albanian
::proto Algic::Proto-Algic
::proto Algonquian::Proto-Algonquian
::proto ancestor::proto-ancestor
::proto industry::proto-industry
::proto Japonic::Proto-Japonic
::proto neutron star::proto-neutron star
::proto oncogenic::proto-oncogenic
::proto Polynesian::Proto-Polynesian
::proto race::proto-race
::proto racial::proto-racial
::proto science fiction::proto-science fiction
::proto actinium::protactinium
::proto agon::protagon
::proto androus::protandrous
::proto-actinium::protactinium
::proto-agon::protagon
::proto-androus::protandrous
::protoactinium::protactinium
::protoagon::protagon
::protoandrous::protandrous
::proto anemonin::protoanemonin
::proto atmosphere::protoatmosphere
::proto binary::protobinary
::proto biont::protobiont
::proto bird::protobird
::proto brosis::protobrosis
::proto capitalism::protocapitalism
::proto capitalist::protocapitalist
::proto capitalistic::protocapitalistic
::proto carnivorous::protocarnivorous
::proto catechuic::protocatechuic
::proto chloride::protochloride
::proto chordate::protochordate
::proto cluster::protocluster
::proto conch::protoconch
::proto continent::protocontinent
::proto conversation::protoconversation
::proto cooperation::protocooperation
::proto culture::protoculture
::proto deacon::protodeacon
::proto deboronation::protodeboronation
::proto derm::protoderm
::proto doric::protodoric
::proto Earth::protoEarth
::proto ethical::protoethical
::proto fascist::protofascist
::proto feather::protofeather
::proto feminism::protofeminism
::proto feminist::protofeminist
::proto feudalism::protofeudalism
::proto filament::protofilament
::proto form::protoform
::proto galaxy::protogalaxy
::proto gospel::protogospel
::proto grammar::protogrammar
::proto grunge::protogrunge
::proto halo::protohalo
::proto hellenic::protohellenic
::proto historic::protohistoric
::proto history::protohistory
::proto human::protohuman
::proto industrial::protoindustrial
::proto Jupiter::protoJupiter
::proto liberal::protoliberal
::proto linguistic::protolinguistic
::proto lunar::protolunar
::proto Mars::protoMars
::proto martyr::protomartyr
::proto Mercury::protoMercury
::proto metal::protometal
::proto minimalist::protominimalist
::proto modern::protomodern
::proto modernism::protomodernism
::proto modernist::protomodernist
::proto molecule::protomolecule
::proto morphic::protomorphic
::proto mullet::protomullet
::proto nephridium::protonephridium
::proto Neptune::protoNeptune
::proto nitrate::protonitrate
::proto nym::protonym
::proto organism::protoorganism
::proto pectin::protopectin
::proto perithecium::protoperithecium
::proto phloem::protophloem
::proto phyte::protophyte
::proto phytology::protophytology
::proto pine::protopine
::proto plastid::protoplastid
::proto pope::protopope
::proto porphyria::protoporphyria
::proto priest::protopriest
::proto punk::protopunk
::proto salt::protosalt
::proto satellite::protosatellite
::proto Saturn::protoSaturn
::proto science::protoscience
::proto scripture::protoscripture
::proto silicate::protosilicate
::proto solar::protosolar
::proto somite::protosomite
::proto spacer::protospacer
::proto star::protostar
::proto stellar::protostellar
::proto stome::protostome
::proto sulphate::protosulphate
::proto sulphide::protosulphide
::proto sulphuret::protosulphuret
::proto sun::protosun
::proto tetrapod::prototetrapod
::proto thread::protothread
::proto tile::prototile
::proto toxin::prototoxin
::proto troch::prototroch
::proto trochal::prototrochal
::proto troph::prototroph
::proto Uranus::protoUranus
::proto Venus::protoVenus
::proto vertebra::protovertebra
::proto vertebral::protovertebral
::proto word::protoword
::proto writing::protowriting
::proto xide::protoxide
::proto xylem::protoxylem
::proto-anemonin::protoanemonin
::proto-atmosphere::protoatmosphere
::proto-binary::protobinary
::proto-biont::protobiont
::proto-bird::protobird
::proto-brosis::protobrosis
::proto-capitalism::protocapitalism
::proto-capitalist::protocapitalist
::proto-capitalistic::protocapitalistic
::proto-carnivorous::protocarnivorous
::proto-catechuic::protocatechuic
::proto-chloride::protochloride
::proto-chordate::protochordate
::proto-cluster::protocluster
::proto-conch::protoconch
::proto-continent::protocontinent
::proto-conversation::protoconversation
::proto-cooperation::protocooperation
::proto-culture::protoculture
::proto-deacon::protodeacon
::proto-deboronation::protodeboronation
::proto-derm::protoderm
::proto-doric::protodoric
::proto-Earth::protoEarth
::proto-ethical::protoethical
::proto-fascist::protofascist
::proto-feather::protofeather
::proto-feminism::protofeminism
::proto-feminist::protofeminist
::proto-feudalism::protofeudalism
::proto-filament::protofilament
::proto-form::protoform
::proto-galaxy::protogalaxy
::proto-gospel::protogospel
::proto-grammar::protogrammar
::proto-grunge::protogrunge
::proto-halo::protohalo
::proto-hellenic::protohellenic
::proto-historic::protohistoric
::proto-history::protohistory
::proto-human::protohuman
::proto-industrial::protoindustrial
::proto-Jupiter::protoJupiter
::proto-liberal::protoliberal
::proto-linguistic::protolinguistic
::proto-lunar::protolunar
::proto-Mars::protoMars
::proto-martyr::protomartyr
::proto-Mercury::protoMercury
::proto-metal::protometal
::proto-minimalist::protominimalist
::proto-modern::protomodern
::proto-modernism::protomodernism
::proto-modernist::protomodernist
::proto-molecule::protomolecule
::proto-morphic::protomorphic
::proto-mullet::protomullet
::proto-nephridium::protonephridium
::proto-Neptune::protoNeptune
::proto-neutron star::protoneutron star
::proto-nitrate::protonitrate
::proto-nym::protonym
::proto-oncogenic::protooncogenic
::proto-organism::protoorganism
::proto-pectin::protopectin
::proto-perithecium::protoperithecium
::proto-phloem::protophloem
::proto-phyte::protophyte
::proto-phytology::protophytology
::proto-pine::protopine
::proto-plastid::protoplastid
::proto-pope::protopope
::proto-porphyria::protoporphyria
::proto-priest::protopriest
::proto-punk::protopunk
::proto-salt::protosalt
::proto-satellite::protosatellite
::proto-Saturn::protoSaturn
::proto-science::protoscience
::proto-scripture::protoscripture
::proto-silicate::protosilicate
::proto-solar::protosolar
::proto-somite::protosomite
::proto-spacer::protospacer
::proto-star::protostar
::proto-stellar::protostellar
::proto-stome::protostome
::proto-sulphate::protosulphate
::proto-sulphide::protosulphide
::proto-sulphuret::protosulphuret
::proto-sun::protosun
::proto-tetrapod::prototetrapod
::proto-thread::protothread
::proto-tile::prototile
::proto-toxin::prototoxin
::proto-troch::prototroch
::proto-trochal::prototrochal
::proto-troph::prototroph
::proto-Uranus::protoUranus
::proto-Venus::protoVenus
::proto-vertebra::protovertebra
::proto-vertebral::protovertebral
::proto-word::protoword
::proto-writing::protowriting
::proto-xide::protoxide
::proto-xylem::protoxylem
::psycho active::psychoactive
::psycho babble::psychobabble
::psycho biography::psychobiography
::psycho biologist::psychobiologist
::psycho biology::psychobiology
::psycho bitch::psychobitch
::psycho ceramic::psychoceramic
::psycho cutaneous::psychocutaneous
::psycho dermatologic::psychodermatologic
::psycho diagnostic::psychodiagnostic
::psycho dynamic::psychodynamic
::psycho dynamics::psychodynamics
::psycho dysleptic::psychodysleptic
::psycho education::psychoeducation
::psycho educational::psychoeducational
::psycho opsychometer::electropsychometer
::psycho emotional::psychoemotional
::psycho energetics::psychoenergetics
::psycho erotic::psychoerotic
::psycho genesis::psychogenesis
::psycho genic::psychogenic
::psycho geriatrics::psychogeriatrics
::psycho gerontology::psychogerontology
::psycho graph::psychograph
::psycho graphy::psychography
::psycho historian::psychohistorian
::psycho history::psychohistory
::psycho jargon::psychojargon
::psycho kinesis::psychokinesis
::psycho leptic::psycholeptic
::psycho linguistics::psycholinguistics
::psycho mancy::psychomancy
::psycho medicine::psychomedicine
::psycho mental::psychomental
::psycho metrics::psychometrics
::psycho metry::psychometry
::psycho mime::psychomime
::psycho mimetic::psychomimetic
::psycho moral::psychomoral
::psycho naut::psychonaut
::psycho neuroimmunology::psychoneuroimmunology
::psycho neurotic::psychoneurotic
::psycho pathology::psychopathology
::psycho pathy::psychopathy
::psycho pharmacology::psychopharmacology
::psycho philosophical::psychophilosophical
::psycho phobia::psychophobia
::psycho phonetics::psychophonetics
::psycho phony::psychophony
::psycho physics::psychophysics
::psycho physiological::psychophysiological
::psycho physiology::psychophysiology
::psycho politics::psychopolitics
::psycho scopy::psychoscopy
::psycho sexuality::psychosexuality
::psycho social::psychosocial
::psycho sociologist::psychosociologist
::psycho somatic::psychosomatic
::psycho sonic::psychosonic
::psycho stimulant::psychostimulant
::psycho stimulating::psychostimulating
::psycho stimulatory::psychostimulatory
::psycho surgery::psychosurgery
::psycho synthesis::psychosynthesis
::psycho tactical::psychotactical
::psycho technology::psychotechnology
::psycho typology::psychotypology
::psycho zoic::psychozoic
::psycho-active::psychoactive
::psycho-babble::psychobabble
::psycho-biography::psychobiography
::psycho-biologist::psychobiologist
::psycho-biology::psychobiology
::psycho-bitch::psychobitch
::psycho-ceramic::psychoceramic
::psycho-cutaneous::psychocutaneous
::psycho-dermatologic::psychodermatologic
::psycho-diagnostic::psychodiagnostic
::psycho-dynamic::psychodynamic
::psycho-dynamics::psychodynamics
::psycho-dysleptic::psychodysleptic
::psycho-education::psychoeducation
::psycho-educational::psychoeducational
::psycho-opsychometer::electropsychometer
::psycho-emotional::psychoemotional
::psycho-energetics::psychoenergetics
::psycho-erotic::psychoerotic
::psycho-genesis::psychogenesis
::psycho-genic::psychogenic
::psycho-geriatrics::psychogeriatrics
::psycho-gerontology::psychogerontology
::psycho-graph::psychograph
::psycho-graphy::psychography
::psycho-historian::psychohistorian
::psycho-history::psychohistory
::psycho-jargon::psychojargon
::psycho-kinesis::psychokinesis
::psycho-leptic::psycholeptic
::psycho-linguistics::psycholinguistics
::psycho-mancy::psychomancy
::psycho-medicine::psychomedicine
::psycho-mental::psychomental
::psycho-metrics::psychometrics
::psycho-metry::psychometry
::psycho-mime::psychomime
::psycho-mimetic::psychomimetic
::psycho-moral::psychomoral
::psycho-naut::psychonaut
::psycho-neuroimmunology::psychoneuroimmunology
::psycho-neurotic::psychoneurotic
::psycho-pathology::psychopathology
::psycho-pathy::psychopathy
::psycho-pharmacology::psychopharmacology
::psycho-philosophical::psychophilosophical
::psycho-phobia::psychophobia
::psycho-phonetics::psychophonetics
::psycho-phony::psychophony
::psycho-physics::psychophysics
::psycho-physiological::psychophysiological
::psycho-physiology::psychophysiology
::psycho-politics::psychopolitics
::psycho-scopy::psychoscopy
::psycho-sexuality::psychosexuality
::psycho-social::psychosocial
::psycho-sociologist::psychosociologist
::psycho-somatic::psychosomatic
::psycho-sonic::psychosonic
::psycho-stimulant::psychostimulant
::psycho-stimulating::psychostimulating
::psycho-stimulatory::psychostimulatory
::psycho-surgery::psychosurgery
::psycho-synthesis::psychosynthesis
::psycho-tactical::psychotactical
::psycho-technology::psychotechnology
::psycho-typology::psychotypology
::psycho-zoic::psychozoic
::counter argument::counterargument
::counter-argument::counterargument
::quick witted::quick-witted
::quickwitted::quick-witted
::a whole nother::another
::don't disagree::agree
::ya'll::you all
;::im::I am
::wouldve::would have
::dont::do not
::x-Box::xBox
::wouldbe::would be
::would of::would have
::wouldnt::would not
::dont no::do not know
::don't no::do not know
::do'nt::do not
::house-mate::housemate
::house mate::housemate
::room-mate::roommate
::room mate::roommate
::approxi-mate::approximate
::guessti-mate::guesstimate
::meproba-mate::meprobamate
::misesti-mate::misestimate
::penulti-mate::penultimate
::acoelo-mate::acoelomate
::amalga-mate::amalgamate
::bichro-mate::bichromate
::consum-mate::consummate
::desqua-mate::desquamate
::dichro-mate::dichromate
::legiti-mate::legitimate
::litter-mate::littermate
::reesti-mate::reestimate
::stable-mate::stablemate
::subpri-mate::subprimate
::accli-mate::acclimate
::cabin-mate::cabinmate
::carba-mate::carbamate
::check-mate::checkmate
::coelo-mate::coelomate
::colli-mate::collimate
::cycla-mate::cyclamate
::despu-mate::despumate
::diplo-mate::diplomate
::exani-mate::exanimate
::gluta-mate::glutamate
::inani-mate::inanimate
::proxi-mate::proximate
::reani-mate::reanimate
::refor-mate::reformate
::stale-mate::stalemate
::subli-mate::sublimate
::table-mate::tablemate
::auto-mate::automate
::band-mate::bandmate
::breg-mate::bregmate
::bunk-mate::bunkmate
::case-mate::casemate
::cell-mate::cellmate
::chro-mate::chromate
::coin-mate::coinmate
::cope-mate::copemate
::crew-mate::crewmate
::deci-mate::decimate
::esti-mate::estimate
::flat-mate::flatmate
::help-mate::helpmate
::inti-mate::intimate
::mess-mate::messmate
::niza-mate::nizamate
::osto-mate::ostomate
::play-mate::playmate
::race-mate::racemate
::seat-mate::seatmate
::ship-mate::shipmate
::soul-mate::soulmate
::squa-mate::squamate
::ulti-mate::ultimate
::work-mate::workmate
::yoke-mate::yokemate
::age-mate::agemate
::ani-mate::animate
::bed-mate::bedmate
::bro-mate::bromate
::cli-mate::climate
::cre-mate::cremate
::fer-mate::fermate
::for-mate::formate
::gem-mate::gemmate
::ima-mate::imamate
::mam-mate::mammate
::mis-mate::mismate
::pal-mate::palmate
::plu-mate::plumate
::pri-mate::primate
::sig-mate::sigmate
::sto-mate::stomate
::sum-mate::summate
::co-mate::comate
::ha-mate::hamate
::hu-mate::humate
::in-mate::inmate
::ra-mate::ramate
::re-mate::remate
::approxi mate::approximate
::guessti mate::guesstimate
::meproba mate::meprobamate
::misesti mate::misestimate
::penulti mate::penultimate
::acoelo mate::acoelomate
::amalga mate::amalgamate
::bichro mate::bichromate
::consum mate::consummate
::desqua mate::desquamate
::dichro mate::dichromate
::legiti mate::legitimate
::litter mate::littermate
::reesti mate::reestimate
::stable mate::stablemate
::subpri mate::subprimate
::accli mate::acclimate
::cabin mate::cabinmate
::carba mate::carbamate
::check mate::checkmate
::coelo mate::coelomate
::colli mate::collimate
::cycla mate::cyclamate
::despu mate::despumate
::diplo mate::diplomate
::exani mate::exanimate
::gluta mate::glutamate
::inani mate::inanimate
::proxi mate::proximate
::reani mate::reanimate
;::refor mate::reformate
::stale mate::stalemate
::subli mate::sublimate
::table mate::tablemate
::auto mate::automate
::band mate::bandmate
::breg mate::bregmate
::bunk mate::bunkmate
::case mate::casemate
::cell mate::cellmate
::chro mate::chromate
::coin mate::coinmate
::cope mate::copemate
::crew mate::crewmate
::deci mate::decimate
::esti mate::estimate
::flat mate::flatmate
::help mate::helpmate
::inti mate::intimate
::mess mate::messmate
::niza mate::nizamate
::osto mate::ostomate
::play mate::playmate
::race mate::racemate
::seat mate::seatmate
::ship mate::shipmate
::soul mate::soulmate
::squa mate::squamate
::ulti mate::ultimate
::work mate::workmate
::yoke mate::yokemate
::age mate::agemate
::ani mate::animate
::bed mate::bedmate
::bro mate::bromate
::cli mate::climate
::cre mate::cremate
::fer mate::fermate
;::for mate::formate
::gem mate::gemmate
::ima mate::imamate
::mam mate::mammate
::mis mate::mismate
::pal mate::palmate
::plu mate::plumate
::pri mate::primate
::sig mate::sigmate
::sto mate::stomate
::sum mate::summate
::co mate::comate
::ha mate::hamate
::hu mate::humate
;::in mate::inmate
::ra mate::ramate
::re mate::remate
::self-ishness::selfishness
::self ishness::selfishness
::self-lessly::selflessly
::self lessly::selflessly
::self nesses::selfnesses
::self-nesses::selfnesses
::self heals::selfheals
::self-heals::selfheals
::self-hoods::selfhoods
::self hoods::selfhoods
::self-ishly::selfishly
::self ishly::selfishly
::self wards::selfwards
::self-wards::selfwards
::self doms::selfdoms
::self-doms::selfdoms
::self heal::selfheal
::self-heal::selfheal
::self-hood::selfhood
::self hood::selfhood
::self ness::selfness
::self-ness::selfness
::self ward::selfward
::self-ward::selfward
::his self::hisself
::non self::nonself
::our self::ourself
::thy self::thyself
::his-self::hisself
::non-self::nonself
::our-self::ourself
::thy-self::thyself
::psycho-acoustic::psychoacoustic
::psycho-acoustics::psychoacoustics
::psycho-analyses::psychoanalyses
::psycho-analysis::psychoanalysis
::psycho-analyst::psychoanalyst
::psycho-analysts::psychoanalysts
::psycho-analytic::psychoanalytic
::psycho-analytical::psychoanalytical
::psycho-analytically::psychoanalytically
::psycho-analyze::psychoanalyze
::psycho-analyzed::psychoanalyzed
::psycho-analyzes::psychoanalyzes
::psycho-analyzing::psychoanalyzing
::psycho-babbler::psychobabbler
::psycho-babblers::psychobabblers
::psycho-babbles::psychobabbles
::psycho-biographer::psychobiographer
::psycho-biographers::psychobiographers
::psycho-biographical::psychobiographical
::psycho-biographies::psychobiographies
::psycho-biologic::psychobiologic
::psycho-biological::psychobiological
::psycho-biologies::psychobiologies
::psycho-biologists::psychobiologists
::psycho-chemical::psychochemical
::psycho-chemicals::psychochemicals
::psycho-drama::psychodrama
::psycho-dramas::psychodramas
::psycho-dramatic::psychodramatic
::psycho-dynamically::psychodynamically
::psycho-geneses::psychogeneses
::psycho-genetic::psychogenetic
::psycho-genically::psychogenically
::psycho-graphs::psychographs
::psycho-historians::psychohistorians
::psycho-historical::psychohistorical
::psycho-histories::psychohistories
::psycho-kineses::psychokineses
::psycho-kinetic::psychokinetic
::psycho-linguist::psycholinguist
::psycho-linguistic::psycholinguistic
::psycho-linguists::psycholinguists
::psycho-logic::psychologic
::psycho-logical::psychological
::psycho-logically::psychologically
::psycho-logies::psychologies
::psycho-logise::psychologise
::psycho-logised::psychologised
::psycho-logises::psychologises
::psycho-logising::psychologising
::psycho-logism::psychologism
::psycho-logisms::psychologisms
::psycho-logist::psychologist
::psycho-logists::psychologists
::psycho-logize::psychologize
::psycho-logized::psychologized
::psycho-logizes::psychologizes
::psycho-logizing::psychologizing
::psycho-logy::psychology
::psycho-metric::psychometric
::psycho-metrically::psychometrically
::psycho-metrician::psychometrician
::psycho-metricians::psychometricians
::psycho-metries::psychometries
::psycho-motor::psychomotor
::psycho-neuroses::psychoneuroses
::psycho-neurosis::psychoneurosis
::psycho-neurotics::psychoneurotics
::psycho-path::psychopath
::psycho-pathic::psychopathic
::psycho-pathically::psychopathically
::psycho-pathics::psychopathics
::psycho-pathies::psychopathies
::psycho-pathologic::psychopathologic
::psycho-pathological::psychopathological
::psycho-pathologically::psychopathologically
::psycho-pathologies::psychopathologies
::psycho-pathologist::psychopathologist
::psycho-pathologists::psychopathologists
::psycho-paths::psychopaths
::psycho-pharmacologic::psychopharmacologic
::psycho-pharmacological::psychopharmacological
::psycho-pharmacologies::psychopharmacologies
::psycho-pharmacologist::psychopharmacologist
::psycho-pharmacologists::psychopharmacologists
::psycho-physical::psychophysical
::psycho-physically::psychophysically
::psycho-physicist::psychophysicist
::psycho-physicists::psychophysicists
::psycho-physiologic::psychophysiologic
::psycho-physiologically::psychophysiologically
::psycho-physiologies::psychophysiologies
::psycho-physiologist::psychophysiologist
::psycho-physiologists::psychophysiologists
::psycho-sexual::psychosexual
::psycho-sexualities::psychosexualities
::psycho-sexually::psychosexually
::psycho-sis::psychosis
::psycho-socially::psychosocially
::psycho-somatically::psychosomatically
::psycho-somatics::psychosomatics
::psycho-surgeon::psychosurgeon
::psycho-surgeons::psychosurgeons
::psycho-surgeries::psychosurgeries
::psycho-surgical::psychosurgical
::psycho-syntheses::psychosyntheses
::psycho-therapeutic::psychotherapeutic
::psycho-therapeutically::psychotherapeutically
::psycho-therapies::psychotherapies
::psycho-therapist::psychotherapist
::psycho-therapists::psychotherapists
::psycho-therapy::psychotherapy
::psycho-tic::psychotic
::psycho-tically::psychotically
::psycho-tics::psychotics
::psycho-tomimetic::psychotomimetic
::psycho-tomimetically::psychotomimetically
::psycho-tomimetics::psychotomimetics
::psycho-tropic::psychotropic
::psycho-tropics::psychotropics
::psycho acoustic::psychoacoustic
::psycho acoustics::psychoacoustics
::psycho analyses::psychoanalyses
::psycho analysis::psychoanalysis
::psycho analyst::psychoanalyst
::psycho analysts::psychoanalysts
::psycho analytic::psychoanalytic
::psycho analytical::psychoanalytical
::psycho analytically::psychoanalytically
::psycho analyze::psychoanalyze
::psycho analyzed::psychoanalyzed
::psycho analyzes::psychoanalyzes
::psycho analyzing::psychoanalyzing
::psycho babbler::psychobabbler
::psycho babblers::psychobabblers
::psycho babbles::psychobabbles
::psycho biographer::psychobiographer
::psycho biographers::psychobiographers
::psycho biographical::psychobiographical
::psycho biographies::psychobiographies
::psycho biologic::psychobiologic
::psycho biological::psychobiological
::psycho biologies::psychobiologies
::psycho biologists::psychobiologists
::psycho chemical::psychochemical
::psycho chemicals::psychochemicals
::psycho drama::psychodrama
::psycho dramas::psychodramas
::psycho dramatic::psychodramatic
::psycho dynamically::psychodynamically
::psycho geneses::psychogeneses
::psycho genetic::psychogenetic
::psycho genically::psychogenically
::psycho graphs::psychographs
::psycho historians::psychohistorians
::psycho historical::psychohistorical
::psycho histories::psychohistories
::psycho kineses::psychokineses
::psycho kinetic::psychokinetic
::psycho linguist::psycholinguist
::psycho linguistic::psycholinguistic
::psycho linguists::psycholinguists
::psycho logic::psychologic
::psycho logical::psychological
::psycho logically::psychologically
::psycho logies::psychologies
::psycho logise::psychologise
::psycho logised::psychologised
::psycho logises::psychologises
::psycho logising::psychologising
::psycho logism::psychologism
::psycho logisms::psychologisms
::psycho logist::psychologist
::psycho logists::psychologists
::psycho logize::psychologize
::psycho logized::psychologized
::psycho logizes::psychologizes
::psycho logizing::psychologizing
::psycho logy::psychology
::psycho metric::psychometric
::psycho metrically::psychometrically
::psycho metrician::psychometrician
::psycho metricians::psychometricians
::psycho metries::psychometries
::psycho motor::psychomotor
::psycho neuroses::psychoneuroses
::psycho neurosis::psychoneurosis
::psycho neurotics::psychoneurotics
::psycho path::psychopath
::psycho pathic::psychopathic
::psycho pathically::psychopathically
::psycho pathics::psychopathics
::psycho pathies::psychopathies
::psycho pathologic::psychopathologic
::psycho pathological::psychopathological
::psycho pathologically::psychopathologically
::psycho pathologies::psychopathologies
::psycho pathologist::psychopathologist
::psycho pathologists::psychopathologists
::psycho paths::psychopaths
::psycho pharmacologic::psychopharmacologic
::psycho pharmacological::psychopharmacological
::psycho pharmacologies::psychopharmacologies
::psycho pharmacologist::psychopharmacologist
::psycho pharmacologists::psychopharmacologists
::psycho physical::psychophysical
::psycho physically::psychophysically
::psycho physicist::psychophysicist
::psycho physicists::psychophysicists
::psycho physiologic::psychophysiologic
::psycho physiologically::psychophysiologically
::psycho physiologies::psychophysiologies
::psycho physiologist::psychophysiologist
::psycho physiologists::psychophysiologists
::psycho sexual::psychosexual
::psycho sexualities::psychosexualities
::psycho sexually::psychosexually
::psycho sis::psychosis
::psycho socially::psychosocially
::psycho somatically::psychosomatically
::psycho somatics::psychosomatics
::psycho surgeon::psychosurgeon
::psycho surgeons::psychosurgeons
::psycho surgeries::psychosurgeries
::psycho surgical::psychosurgical
::psycho syntheses::psychosyntheses
::psycho therapeutic::psychotherapeutic
::psycho therapeutically::psychotherapeutically
::psycho therapies::psychotherapies
::psycho therapist::psychotherapist
::psycho therapists::psychotherapists
::psycho therapy::psychotherapy
::psycho tically::psychotically
::psycho tomimetic::psychotomimetic
::psycho tomimetically::psychotomimetically
::psycho tomimetics::psychotomimetics
::psycho tropic::psychotropic
::psycho tropics::psychotropics
::socio-biological::sociobiological
::socio-biologies::sociobiologies
::socio-biologist::sociobiologist
::socio-biologists::sociobiologists
::socio-biology::sociobiology
::socio-cultural::sociocultural
::socio-culturally::socioculturally
::socio-economically::socioeconomically
::socio-gram::sociogram
::socio-grams::sociograms
::socio-historical::sociohistorical
::socio-linguist::sociolinguist
::socio-linguistic::sociolinguistic
::socio-linguistics::sociolinguistics
::socio-linguists::sociolinguists
::socio-logese::sociologese
::socio-logeses::sociologeses
::socio-logic::sociologic
::socio-logical::sociological
::socio-logically::sociologically
::socio-logies::sociologies
::socio-logist::sociologist
::socio-logists::sociologists
::socio-logy::sociology
::socio-metric::sociometric
::socio-metries::sociometries
::socio-metry::sociometry
::socio-path::sociopath
::socio-pathic::sociopathic
::socio-pathies::sociopathies
::socio-paths::sociopaths
::socio-pathy::sociopathy
::socio-political::sociopolitical
::socio-psychological::sociopsychological
::socio-religious::socioreligious
::socio-sexual::sociosexual
::socio biological::sociobiological
::socio biologies::sociobiologies
::socio biologist::sociobiologist
::socio biologists::sociobiologists
::socio biology::sociobiology
::socio cultural::sociocultural
::socio culturally::socioculturally
::socio economically::socioeconomically
::socio gram::sociogram
::socio grams::sociograms
::socio historical::sociohistorical
::socio linguist::sociolinguist
::socio linguistic::sociolinguistic
::socio linguistics::sociolinguistics
::socio linguists::sociolinguists
::socio logese::sociologese
::socio logeses::sociologeses
::socio logic::sociologic
::socio logical::sociological
::socio logically::sociologically
::socio logies::sociologies
::socio logist::sociologist
::socio logists::sociologists
::socio logy::sociology
::socio metric::sociometric
::socio metries::sociometries
::socio metry::sociometry
::socio path::sociopath
::socio pathic::sociopathic
::socio pathies::sociopathies
::socio paths::sociopaths
::socio pathy::sociopathy
::socio political::sociopolitical
::socio psychological::sociopsychological
::socio religious::socioreligious
::socio sexual::sociosexual
;::ad man::adman
::agribusiness man::agribusinessman
::aid man::aidman
::air man::airman
::alder man::alderman
::alms man::almsman
::anchor man::anchorman
::anti man::antiman
::artillery man::artilleryman
::ash man::ashman
::assembly man::assemblyman
::ata man::ataman
;::at man::atman
::attack man::attackman
::auto man::automan
::axe man::axeman
::ax man::axman
::backcourt man::backcourtman
::backwoods man::backwoodsman
::bad man::badman
::bag man::bagman
::bails man::bailsman
::bands man::bandsman
::barge man::bargeman
::bar man::barman
::base man::baseman
::bat man::batman
::bats man::batsman
::bay man::bayman
::bead man::beadman
::beads man::beadsman
::bede man::bedeman
::bedes man::bedesman
::bell man::bellman
::bildungsro man::bildungsroman
::bird man::birdman
::blues man::bluesman
::board man::boardman
::boat man::boatman
::boats man::boatsman
::bogey man::bogeyman
::bogy man::bogyman
::bond man::bondman
::bonds man::bondsman
::booger man::boogerman
::boogey man::boogeyman
::boogy man::boogyman
::book man::bookman
::bow man::bowman
::brake man::brakeman
::bush man::bushman
::business man::businessman
::bus man::busman
::cab man::cabman
::cai man::caiman
::camera man::cameraman
::car man::carman
::cattle man::cattleman
::cavalry man::cavalryman
::cay man::cayman
::chain man::chainman
::chair man::chairman
::chap man::chapman
::chess man::chessman
::chore man::choreman
::church man::churchman
::clans man::clansman
::clergy man::clergyman
::club man::clubman
::coach man::coachman
::coastguard man::coastguardman
::coastguards man::coastguardsman
::cochair man::cochairman
::color man::colorman
::committee man::committeeman
::congress man::congressman
::corner man::cornerman
::corps man::corpsman
::council man::councilman
::counter man::counterman
::country man::countryman
::cow man::cowman
::cracks man::cracksman
::crafts man::craftsman
::crags man::cragsman
::crew man::crewman
::crossbow man::crossbowman
::dairy man::dairyman
::dales man::dalesman
::da man::daman
::days man::daysman
::deaths man::deathsman
::decu man::decuman
::defence man::defenceman
::defense man::defenseman
::delivery man::deliveryman
::desk man::deskman
::des man::desman
::dol man::dolman
::door man::doorman
::drafts man::draftsman
::drago man::dragoman
::draughts man::draughtsman
::dray man::drayman
::dust man::dustman
::dutch man::dutchman
::ealdor man::ealdorman
::earth man::earthman
::every man::everyman
::excise man::exciseman
::express man::expressman
;::fellow man::fellowman
::ferry man::ferryman
::fire man::fireman
::fir man::firman
::flag man::flagman
::fly man::flyman
::foe man::foeman
::foils man::foilsman
::foot man::footman
;::foretop man::foretopman
::freed man::freedman
::free man::freeman
::fresh man::freshman
::frog man::frogman
::frontiers man::frontiersman
::fugle man::fugleman
::funny man::funnyman
::gag man::gagman
::games man::gamesman
::garage man::garageman
::garbage man::garbageman
::gas man::gasman
::gate man::gateman
::ger man::german
::glass man::glassman
::glee man::gleeman
::good man::goodman
::gowns man::gownsman
::grants man::grantsman
::grip man::gripman
::grooms man::groomsman
::grounds man::groundsman
::guards man::guardsman
::guilds man::guildsman
::gun man::gunman
::hack man::hackman
::handcrafts man::handcraftsman
::handicrafts man::handicraftsman
::handy man::handyman
::hang man::hangman
::hanu man::hanuman
::harvest man::harvestman
::head man::headman
::heads man::headsman
::helms man::helmsman
::hench man::henchman
::herd man::herdman
::herds man::herdsman
::het man::hetman
::highway man::highwayman
::hotel man::hotelman
::house man::houseman
::hunts man::huntsman
::husband man::husbandman
::ice man::iceman
::infantry man::infantryman
::jazz man::jazzman
::journey man::journeyman
::junk man::junkman
::jury man::juryman
::kins man::kinsman
::kirk man::kirkman
::land man::landman
::lands man::landsman
::laundry man::laundryman
::law man::lawman
::lay man::layman
::lead man::leadman
::leads man::leadsman
::leg man::legman
;::le man::leman
::lens man::lensman
::letter man::letterman
::liege man::liegeman
::lift man::liftman
::li man::liman
::line man::lineman
::lines man::linesman
::link man::linkman
::links man::linksman
::livery man::liveryman
::lobster man::lobsterman
::longbow man::longbowman
::longshore man::longshoreman
::lowerclass man::lowerclassman
::lumber man::lumberman
::mad man::madman
::mail man::mailman
;::man::man
::marks man::marksman
::meat man::meatman
::merchant man::merchantman
::mer man::merman
::mess man::messman
::middle man::middleman
::midship man::midshipman
::militia man::militiaman
::milk man::milkman
::minute man::minuteman
::missile man::missileman
::money man::moneyman
::motor man::motorman
::newspaper man::newspaperman
::noble man::nobleman
::non man::nonman
::nursery man::nurseryman
::oars man::oarsman
::oil man::oilman
::ombuds man::ombudsman
::otto man::ottoman
::outdoors man::outdoorsman
::out man::outman
::over man::overman
::oyster man::oysterman
::pack man::packman
::pantry man::pantryman
::patrol man::patrolman
::pen man::penman
::pike man::pikeman
::pitch man::pitchman
::pit man::pitman
::pivot man::pivotman
::place man::placeman
::plainclothes man::plainclothesman
::plains man::plainsman
::plants man::plantsman
::plow man::plowman
::point man::pointman
::police man::policeman
::pot man::potman
::poultry man::poultryman
::prefresh man::prefreshman
::pre man::preman
::press man::pressman
::prop man::propman
::pull man::pullman
::quarry man::quarryman
::radio man::radioman
::rafts man::raftsman
::rag man::ragman
::ranch man::ranchman
::reed man::reedman
::reins man::reinsman
::re man::reman
::rifle man::rifleman
::rod man::rodman
::rods man::rodsman
::ro man::roman
::rounds man::roundsman
::route man::routeman
::safety man::safetyman
::saga man::sagaman
::salary man::salaryman
::sales man::salesman
::sand man::sandman
::school man::schoolman
::sea man::seaman
::seed man::seedman
::seeds man::seedsman
::select man::selectman
::service man::serviceman
::sha man::shaman
::shanty man::shantyman
::sheep man::sheepman
::ship man::shipman
::shop man::shopman
::show man::showman
::side man::sideman
::signal man::signalman
::sky man::skyman
::snow man::snowman
::sock man::sockman
::soc man::socman
::soke man::sokeman
::sonar man::sonarman
::sound man::soundman
::space man::spaceman
::spear man::spearman
::spoils man::spoilsman
::spokes man::spokesman
::sportfisher man::sportfisherman
::sports man::sportsman
::stable man::stableman
::states man::statesman
::steers man::steersman
::stick man::stickman
::still man::stillman
::stock man::stockman
::strong man::strongman
::stunt man::stuntman
::supersales man::supersalesman
::swag man::swagman
::swing man::swingman
::switch man::switchman
::sword man::swordman
::swords man::swordsman
::tales man::talesman
::talis man::talisman
::tally man::tallyman
::taxi man::taximan
::tax man::taxman
::tele man::teleman
::tiller man::tillerman
::timber man::timberman
::tin man::tinman
::tit man::titman
::toll man::tollman
;::to man::toman
::tong man::tongman
::towns man::townsman
::track man::trackman
::trades man::tradesman
::train man::trainman
::trash man::trashman
::trawler man::trawlerman
::trencher man::trencherman
::tribes man::tribesman
::trigger man::triggerman
::truck man::truckman
::turf man::turfman
::underclass man::underclassman
::un man::unman
::upperclass man::upperclassman
::van man::vanman
::venire man::venireman
::verse man::verseman
::vestry man::vestryman
::warehouse man::warehouseman
::washer man::washerman
::water man::waterman
::weigh man::weighman
::whale man::whaleman
::wheel man::wheelman
::wheels man::wheelsman
::wing man::wingman
::wire man::wireman
::wood man::woodman
::woods man::woodsman
::wool man::woolman
::working man::workingman
::work man::workman
::yacht man::yachtman
::yachts man::yachtsman
::yard man::yardman
::yegg man::yeggman
::yeo man::yeoman
::ad-man::adman
::agribusiness-man::agribusinessman
::aid-man::aidman
::air-man::airman
::alder-man::alderman
::alms-man::almsman
::anchor-man::anchorman
::anti-man::antiman
::artillery-man::artilleryman
::ash-man::ashman
::assembly-man::assemblyman
::ata-man::ataman
::at-man::atman
::attack-man::attackman
::auto-man::automan
::axe-man::axeman
::ax-man::axman
::backcourt-man::backcourtman
::backwoods-man::backwoodsman
::bad-man::badman
::bag-man::bagman
::bails-man::bailsman
::bands-man::bandsman
::barge-man::bargeman
::bar-man::barman
::base-man::baseman
::bat-man::batman
::bats-man::batsman
::bay-man::bayman
::bead-man::beadman
::beads-man::beadsman
::bede-man::bedeman
::bedes-man::bedesman
::bell-man::bellman
::bildungsro-man::bildungsroman
::bird-man::birdman
::blues-man::bluesman
::board-man::boardman
::boat-man::boatman
::boats-man::boatsman
::bogey-man::bogeyman
::bogy-man::bogyman
::bond-man::bondman
::bonds-man::bondsman
::booger-man::boogerman
::boogey-man::boogeyman
::boogy-man::boogyman
::book-man::bookman
::bow-man::bowman
::brake-man::brakeman
::bush-man::bushman
::business-man::businessman
::bus-man::busman
::cab-man::cabman
::cai-man::caiman
::camera-man::cameraman
::car-man::carman
::cattle-man::cattleman
::cavalry-man::cavalryman
::cay-man::cayman
::chain-man::chainman
::chair-man::chairman
::chap-man::chapman
::chess-man::chessman
::chore-man::choreman
::church-man::churchman
::clans-man::clansman
::clergy-man::clergyman
::club-man::clubman
::coach-man::coachman
::coastguard-man::coastguardman
::coastguards-man::coastguardsman
::cochair-man::cochairman
::color-man::colorman
::committee-man::committeeman
::congress-man::congressman
::corner-man::cornerman
::corps-man::corpsman
::council-man::councilman
::counter-man::counterman
::country-man::countryman
::cow-man::cowman
::cracks-man::cracksman
::crafts-man::craftsman
::crags-man::cragsman
::crew-man::crewman
::crossbow-man::crossbowman
::dairy-man::dairyman
::dales-man::dalesman
::da-man::daman
::days-man::daysman
::deaths-man::deathsman
::decu-man::decuman
::defence-man::defenceman
::defense-man::defenseman
::delivery-man::deliveryman
::desk-man::deskman
::des-man::desman
::dol-man::dolman
::door-man::doorman
::drafts-man::draftsman
::drago-man::dragoman
::draughts-man::draughtsman
::dray-man::drayman
::dust-man::dustman
::dutch-man::dutchman
::ealdor-man::ealdorman
::earth-man::earthman
::every-man::everyman
::excise-man::exciseman
::express-man::expressman
::fellow-man::fellowman
::ferry-man::ferryman
::fire-man::fireman
::fir-man::firman
::flag-man::flagman
::fly-man::flyman
::foe-man::foeman
::foils-man::foilsman
::foot-man::footman
::foretop-man::foretopman
::freed-man::freedman
::free-man::freeman
::fresh-man::freshman
::frog-man::frogman
::frontiers-man::frontiersman
::fugle-man::fugleman
::funny-man::funnyman
::gag-man::gagman
::games-man::gamesman
::garage-man::garageman
::garbage-man::garbageman
::gas-man::gasman
::gate-man::gateman
::ger-man::german
::glass-man::glassman
::glee-man::gleeman
::good-man::goodman
::gowns-man::gownsman
::grants-man::grantsman
::grip-man::gripman
::grooms-man::groomsman
::grounds-man::groundsman
::guards-man::guardsman
::guilds-man::guildsman
::gun-man::gunman
::hack-man::hackman
::handcrafts-man::handcraftsman
::handicrafts-man::handicraftsman
::handy-man::handyman
::hang-man::hangman
::hanu-man::hanuman
::harvest-man::harvestman
::head-man::headman
::heads-man::headsman
::helms-man::helmsman
::hench-man::henchman
::herd-man::herdman
::herds-man::herdsman
::het-man::hetman
::highway-man::highwayman
::hotel-man::hotelman
::house-man::houseman
::hunts-man::huntsman
::husband-man::husbandman
::ice-man::iceman
::infantry-man::infantryman
::jazz-man::jazzman
::journey-man::journeyman
::junk-man::junkman
::jury-man::juryman
::kins-man::kinsman
::kirk-man::kirkman
::land-man::landman
::lands-man::landsman
::laundry-man::laundryman
::law-man::lawman
::lay-man::layman
::lead-man::leadman
::leads-man::leadsman
::leg-man::legman
;::le-man::leman
::lens-man::lensman
::letter-man::letterman
::liege-man::liegeman
::lift-man::liftman
::li-man::liman
::line-man::lineman
::lines-man::linesman
::link-man::linkman
::links-man::linksman
::livery-man::liveryman
::lobster-man::lobsterman
::longbow-man::longbowman
::longshore-man::longshoreman
::lowerclass-man::lowerclassman
::lumber-man::lumberman
::mad-man::madman
::mail-man::mailman
;::-man::man
::marks-man::marksman
::meat-man::meatman
::merchant-man::merchantman
::mer-man::merman
::mess-man::messman
::middle-man::middleman
::midship-man::midshipman
::militia-man::militiaman
::milk-man::milkman
::minute-man::minuteman
::missile-man::missileman
::money-man::moneyman
::motor-man::motorman
::newspaper-man::newspaperman
::noble-man::nobleman
::non-man::nonman
::nursery-man::nurseryman
::oars-man::oarsman
::oil-man::oilman
::ombuds-man::ombudsman
::otto-man::ottoman
::outdoors-man::outdoorsman
::out-man::outman
::over-man::overman
::oyster-man::oysterman
::pack-man::packman
::pantry-man::pantryman
::patrol-man::patrolman
::pen-man::penman
::pike-man::pikeman
::pitch-man::pitchman
::pit-man::pitman
::pivot-man::pivotman
::place-man::placeman
::plainclothes-man::plainclothesman
::plains-man::plainsman
::plants-man::plantsman
::plow-man::plowman
::point-man::pointman
::police-man::policeman
::pot-man::potman
::poultry-man::poultryman
::prefresh-man::prefreshman
::pre-man::preman
::press-man::pressman
::prop-man::propman
::pull-man::pullman
::quarry-man::quarryman
::radio-man::radioman
::rafts-man::raftsman
::rag-man::ragman
::ranch-man::ranchman
::reed-man::reedman
::reins-man::reinsman
::re-man::reman
::rifle-man::rifleman
::rod-man::rodman
::rods-man::rodsman
::ro-man::roman
::rounds-man::roundsman
::route-man::routeman
::safety-man::safetyman
::saga-man::sagaman
::salary-man::salaryman
::sales-man::salesman
::sand-man::sandman
::school-man::schoolman
::sea-man::seaman
::seed-man::seedman
::seeds-man::seedsman
::select-man::selectman
::service-man::serviceman
::sha-man::shaman
::shanty-man::shantyman
::sheep-man::sheepman
::ship-man::shipman
::shop-man::shopman
::show-man::showman
::side-man::sideman
::signal-man::signalman
::sky-man::skyman
::snow-man::snowman
::sock-man::sockman
::soc-man::socman
::soke-man::sokeman
::sonar-man::sonarman
::sound-man::soundman
::space-man::spaceman
::spear-man::spearman
::spoils-man::spoilsman
::spokes-man::spokesman
::sportfisher-man::sportfisherman
::sports-man::sportsman
::stable-man::stableman
::states-man::statesman
::steers-man::steersman
::stick-man::stickman
::still-man::stillman
::stock-man::stockman
::strong-man::strongman
::stunt-man::stuntman
::supersales-man::supersalesman
::swag-man::swagman
::swing-man::swingman
::switch-man::switchman
::sword-man::swordman
::swords-man::swordsman
::tales-man::talesman
::talis-man::talisman
::tally-man::tallyman
::taxi-man::taximan
::tax-man::taxman
::tele-man::teleman
::tiller-man::tillerman
::timber-man::timberman
::tin-man::tinman
::tit-man::titman
::toll-man::tollman
;::to-man::toman
::tong-man::tongman
::towns-man::townsman
::track-man::trackman
::trades-man::tradesman
::train-man::trainman
::trash-man::trashman
::trawler-man::trawlerman
::trencher-man::trencherman
::tribes-man::tribesman
::trigger-man::triggerman
::truck-man::truckman
::turf-man::turfman
::underclass-man::underclassman
::un-man::unman
::upperclass-man::upperclassman
::van-man::vanman
::venire-man::venireman
::verse-man::verseman
::vestry-man::vestryman
::warehouse-man::warehouseman
::washer-man::washerman
::water-man::waterman
::weigh-man::weighman
::whale-man::whaleman
::wheel-man::wheelman
::wheels-man::wheelsman
::wing-man::wingman
::wire-man::wireman
::wood-man::woodman
::woods-man::woodsman
::wool-man::woolman
::working-man::workingman
::work-man::workman
::yacht-man::yachtman
::yachts-man::yachtsman
::yard-man::yardman
::yegg-man::yeggman
::yeo-man::yeoman
::admans::admen
::agribusinessmans::agribusinessmen
::aidmans::aidmen
::airmans::airmen
::airwomans::airwomen
::aldermans::aldermen
::alderwomans::alderwomen
::almsmans::almsmen
::anchormans::anchormen
::anchorwomans::anchorwomen
::antihumen::antihumans
::antimans::antimen
::antiwomans::antiwomen
::artillerymans::artillerymen
::ashmans::ashmen
::assemblymans::assemblymen
::assemblywomans::assemblywomen
::atamans::atamen
::atmans::atmen
::attackmans::attackmen
::automans::automen
::axemans::axemen
::axmans::axmen
::backcourtmans::backcourtmen
::backwoodsmans::backwoodsmen
::badmans::badmen
::bagmans::bagmen
::bailsmans::bailsmen
::bandsmans::bandsmen
::bargemans::bargemen
::barmans::barmen
::basemans::basemen
::batmans::batmen
::batsmans::batsmen
::baymans::baymen
::beadmans::beadmen
::beadsmans::beadsmen
::bedemans::bedemen
::bedesmans::bedesmen
::bellmans::bellmen
::bildungsromans::bildungsromen
::birdmans::birdmen
::bluesmans::bluesmen
::boardmans::boardmen
::boatmans::boatmen
::boatsmans::boatsmen
::bogeymans::bogeymen
::bogymans::bogymen
::bondmans::bondmen
::bondsmans::bondsmen
::bondwomans::bondwomen
::boogermans::boogermen
::boogeymans::boogeymen
::boogymans::boogymen
::bookmans::bookmen
::bowmans::bowmen
::brakemans::brakemen
::bushmans::bushmen
::businessmans::businessmen
::businesswomans::businesswomen
::busmans::busmen
::cabmans::cabmen
::caimans::caimen
::cameramans::cameramen
::camerawomans::camerawomen
::carmans::carmen
::cattlemans::cattlemen
::cavalrymans::cavalrymen
::cavemans::cavemen
::caymans::caymen
::chainmans::chainmen
::chairmans::chairmen
::chairwomans::chairwomen
::chapmans::chapmen
::charwomans::charwomen
::chessmans::chessmen
::choremans::choremen
::churchmans::churchmen
::churchwomans::churchwomen
::clansmans::clansmen
::clergymans::clergymen
::clergywomans::clergywomen
::clubmans::clubmen
::coachmans::coachmen
::coastguardmans::coastguardmen
::coastguardsmans::coastguardsmen
::cochairmans::cochairmen
::cochairwomans::cochairwomen
::colormans::colormen
::committeemans::committeemen
::committeewomans::committeewomen
::congressmans::congressmen
::congresswomans::congresswomen
::cornermans::cornermen
::corpsmans::corpsmen
::councilmans::councilmen
::councilwomans::councilwomen
::countermans::countermen
::countrymans::countrymen
::countrywomans::countrywomen
::cowmans::cowmen
::cracksmans::cracksmen
::craftsmans::craftsmen
::craftswomans::craftswomen
::cragsmans::cragsmen
::crewmans::crewmen
::crossbowmans::crossbowmen
::dairymans::dairymen
::dalesmans::dalesmen
::damans::damen
::daysmans::daysmen
::deathsmans::deathsmen
::decumans::decumen
::defencemans::defencemen
::defensemans::defensemen
::deliverymans::deliverymen
::deskmans::deskmen
::desmans::desmen
::dolmans::dolmen
::doormans::doormen
::draftsmans::draftsmen
::dragomans::dragomen
::draughtsmans::draughtsmen
::draymans::draymen
::dustmans::dustmen
::dutchmans::dutchmen
::ealdormans::ealdormen
::earthmans::earthmen
::everymans::everymen
::everywomans::everywomen
::excisemans::excisemen
::expressmans::expressmen
::fellowmans::fellowmen
::ferrymans::ferrymen
::firemans::firemen
::firmans::firmen
::fishermans::fishermen
::fisherwomans::fisherwomen
::flagmans::flagmen
::flymans::flymen
::foemans::foemen
::foilsmans::foilsmen
::footmans::footmen
::foremans::foremen
::foretopmans::foretopmen
::forewomans::forewomen
::freedmans::freedmen
::freedwomans::freedwomen
::freemans::freemen
::freshmans::freshmen
::frogmans::frogmen
::frontiersmans::frontiersmen
::fuglemans::fuglemen
::funnymans::funnymen
::gagmans::gagmen
::gamesmans::gamesmen
::garagemans::garagemen
::garbagemans::garbagemen
::gasmans::gasmen
::gatemans::gatemen
::gentlemans::gentlemen
::gentlewomans::gentlewomen
::germans::germen
::glassmans::glassmen
::gleemans::gleemen
::goodmans::goodmen
::gownsmans::gownsmen
::grantsmans::grantsmen
::gripmans::gripmen
::groomsmans::groomsmen
::groundsmans::groundsmen
::guardsmans::guardsmen
::guildsmans::guildsmen
::gunmans::gunmen
::hackmans::hackmen
::handcraftsmans::handcraftsmen
::handicraftsmans::handicraftsmen
::handymans::handymen
::hangmans::hangmen
::hanumans::hanumen
::harvestmans::harvestmen
::headmans::headmen
::headsmans::headsmen
::helmsmans::helmsmen
::henchmans::henchmen
::herdmans::herdmen
::herdsmans::herdsmen
::hetmans::hetmen
::highwaymans::highwaymen
::horsemans::horsemen
::horsewomans::horsewomen
::hotelmans::hotelmen
::housemans::housemen
::humen::humans
::huntsmans::huntsmen
::husbandmans::husbandmen
::icemans::icemen
::infantrymans::infantrymen
::infrahumen::infrahumans
::inhumen::inhumans
::jazzmans::jazzmen
::journeymans::journeymen
::junkmans::junkmen
::jurymans::jurymen
::kinsmans::kinsmen
::kinswomans::kinswomen
::kirkmans::kirkmen
::landmans::landmen
::landsmans::landsmen
::laundrymans::laundrymen
::lawmans::lawmen
::laymans::laymen
::laywomans::laywomen
::leadmans::leadmen
::leadsmans::leadsmen
::legmans::legmen
;::lemans::lemen
::lensmans::lensmen
::lettermans::lettermen
::liegemans::liegemen
::liftmans::liftmen
::limans::limen
::linemans::linemen
::linesmans::linesmen
::linkmans::linkmen
::linksmans::linksmen
::liverymans::liverymen
::lobstermans::lobstermen
::longbowmans::longbowmen
::longshoremans::longshoremen
::lowerclassmans::lowerclassmen
::lumbermans::lumbermen
::madmans::madmen
::madwomans::madwomen
::mailmans::mailmen
;::mans::men
::marksmans::marksmen
::markswomans::markswomen
::meatmans::meatmen
::merchantmans::merchantmen
::mermans::mermen
::messmans::messmen
::middlemans::middlemen
::midshipmans::midshipmen
::militiamans::militiamen
::milkmans::milkmen
::minutemans::minutemen
::missilemans::missilemen
::moneymans::moneymen
::motormans::motormen
::needlewomans::needlewomen
::newsmans::newsmen
::newspapermans::newspapermen
::newspaperwomans::newspaperwomen
::newswomans::newswomen
::noblemans::noblemen
::noblewomans::noblewomen
::nonhumen::nonhumans
::nonmans::nonmen
::nurserymans::nurserymen
::oarsmans::oarsmen
::oarswomans::oarswomen
::oilmans::oilmen
::ombudsmans::ombudsmen
::ottomans::ottomen
::outdoorsmans::outdoorsmen
::outmans::outmen
::overmans::overmen
::oystermans::oystermen
::packmans::packmen
::panhumen::panhumans
::pantrymans::pantrymen
::patrolmans::patrolmen
::penmans::penmen
::pikemans::pikemen
::pitchmans::pitchmen
::pitchwomans::pitchwomen
::pitmans::pitmen
::pivotmans::pivotmen
::placemans::placemen
::plainclothesmans::plainclothesmen
::plainsmans::plainsmen
::plantsmans::plantsmen
::plowmans::plowmen
::pointmans::pointmen
::policemans::policemen
::policewomans::policewomen
::postmans::postmen
::potmans::potmen
::poultrymans::poultrymen
::prefreshmans::prefreshmen
::prehumen::prehumans
::premans::premen
::pressmans::pressmen
::propmans::propmen
::protohumen::protohumans
::pullmans::pullmen
::quarrymans::quarrymen
::radiomans::radiomen
::raftsmans::raftsmen
::ragmans::ragmen
::ranchmans::ranchmen
::reedmans::reedmen
::reinsmans::reinsmen
::remans::remen
::repairmans::repairmen
::riflemans::riflemen
::rodmans::rodmen
::rodsmans::rodsmen
::romans::romen
::roundsmans::roundsmen
::routemans::routemen
::safetymans::safetymen
::sagamans::sagamen
::salarymans::salarymen
::salesmans::salesmen
::saleswomans::saleswomen
::sandmans::sandmen
::schoolmans::schoolmen
::scrubwomans::scrubwomen
::seamans::seamen
::seedmans::seedmen
::seedsmans::seedsmen
::selectmans::selectmen
::servicemans::servicemen
::servicewomans::servicewomen
::shamans::shamen
::shantymans::shantymen
::sheepmans::sheepmen
::shipmans::shipmen
::shopmans::shopmen
::showmans::showmen
::sidemans::sidemen
::signalmans::signalmen
::skymans::skymen
::snowmans::snowmen
::sockmans::sockmen
::socmans::socmen
::sokemans::sokemen
::sonarmans::sonarmen
::soundmans::soundmen
::spacemans::spacemen
::spearmans::spearmen
::spoilsmans::spoilsmen
::spokesmans::spokesmen
::spokeswomans::spokeswomen
::sportfishermans::sportfishermen
::sportsmans::sportsmen
::sportswomans::sportswomen
::stablemans::stablemen
::statesmans::statesmen
::steersmans::steersmen
::stickmans::stickmen
::stillmans::stillmen
::stockmans::stockmen
::strongmans::strongmen
::stuntmans::stuntmen
::stuntwomans::stuntwomen
::subhumen::subhumans
::superhumen::superhumans
::supermans::supermen
::supersalesmans::supersalesmen
::superwomans::superwomen
::swagmans::swagmen
::swingmans::swingmen
::switchmans::switchmen
::swordmans::swordmen
::swordsmans::swordsmen
::talesmans::talesmen
::talismans::talismen
::tallymans::tallymen
::taximans::taximen
::taxmans::taxmen
::telemans::telemen
::tillermans::tillermen
::timbermans::timbermen
::tinmans::tinmen
::titmans::titmen
::tollmans::tollmen
::tomans::tomen
::tongmans::tongmen
::townsmans::townsmen
::townswomans::townswomen
::trackmans::trackmen
::tradesmans::tradesmen
::trainmans::trainmen
::trashmans::trashmen
::trawlermans::trawlermen
::trenchermans::trenchermen
::tribesmans::tribesmen
::triggermans::triggermen
::truckmans::truckmen
::turfmans::turfmen
::ultrahumen::ultrahumans
::underclassmans::underclassmen
::unhumen::unhumans
::unmans::unmen
::upperclassmans::upperclassmen
::vanmans::vanmen
::veniremans::veniremen
::versemans::versemen
::vestrymans::vestrymen
::warehousemans::warehousemen
::washermans::washermen
::washerwomans::washerwomen
::washwomans::washwomen
::watchmans::watchmen
::watermans::watermen
::weathermans::weathermen
::weighmans::weighmen
::whalemans::whalemen
::wheelmans::wheelmen
::wheelsmans::wheelsmen
::wingmans::wingmen
::wiremans::wiremen
::wisewomans::wisewomen
::womans::women
::woodmans::woodmen
::woodsmans::woodsmen
::woolmans::woolmen
::workingmans::workingmen
::workingwomans::workingwomen
::workmans::workmen
::workwomans::workwomen
::yachtmans::yachtmen
::yachtsmans::yachtsmen
::yardmans::yardmen
::yeggmans::yeggmen
::yeomans::yeomen
::air-woman::airwoman
::alder-woman::alderwoman
::anchor-woman::anchorwoman
::anti-woman::antiwoman
::assembly-woman::assemblywoman
::bond-woman::bondwoman
::business-woman::businesswoman
::camera-woman::camerawoman
::chair-woman::chairwoman
::char-woman::charwoman
::church-woman::churchwoman
::clergy-woman::clergywoman
::cochair-woman::cochairwoman
::committee-woman::committeewoman
::congress-woman::congresswoman
::council-woman::councilwoman
::country-woman::countrywoman
::crafts-woman::craftswoman
::every-woman::everywoman
::fisher-woman::fisherwoman
::fore-woman::forewoman
::freed-woman::freedwoman
::gentle-woman::gentlewoman
::horse-woman::horsewoman
::kins-woman::kinswoman
::lay-woman::laywoman
::mad-woman::madwoman
::marks-woman::markswoman
::needle-woman::needlewoman
::newspaper-woman::newspaperwoman
::news-woman::newswoman
::noble-woman::noblewoman
::oars-woman::oarswoman
::pitch-woman::pitchwoman
::police-woman::policewoman
::sales-woman::saleswoman
::scrub-woman::scrubwoman
::service-woman::servicewoman
::spokes-woman::spokeswoman
::sports-woman::sportswoman
::stunt-woman::stuntwoman
::towns-woman::townswoman
::washer-woman::washerwoman
::wash-woman::washwoman
::wise-woman::wisewoman
::working-woman::workingwoman
::airwoman::air woman
::alder woman::alderwoman
::anchor woman::anchorwoman
::anti woman::antiwoman
::assembly woman::assemblywoman
::bond woman::bondwoman
::business woman::businesswoman
::camera woman::camerawoman
::chair woman::chairwoman
::char woman::charwoman
::church woman::churchwoman
::clergy woman::clergywoman
::cochair woman::cochairwoman
::committee woman::committeewoman
::congress woman::congresswoman
::council woman::councilwoman
::country woman::countrywoman
::crafts woman::craftswoman
;::every woman::everywoman
::fisher woman::fisherwoman
;::fore woman::forewoman
::freed woman::freedwoman
::gentle woman::gentlewoman
::horse woman::horsewoman
::kins woman::kinswoman
::lay woman::laywoman
::mad woman::madwoman
::marks woman::markswoman
::needle woman::needlewoman
::newspaper woman::newspaperwoman
::news woman::newswoman
::noble woman::noblewoman
::oars woman::oarswoman
::pitch woman::pitchwoman
::police woman::policewoman
::sales woman::saleswoman
::scrub woman::scrubwoman
::service woman::servicewoman
::spokes woman::spokeswoman
::sports woman::sportswoman
::stunt woman::stuntwoman
::towns woman::townswoman
::washer woman::washerwoman
::wash woman::washwoman
::wisewoman::wisewoman
;::#VALUE!::#VALUE!
::working woman::workingwoman
::anti human::antihuman
::infra human::infrahuman
::in human::inhuman
::non human::nonhuman
::pan human::panhuman
::pre human::prehuman
::sub human::subhuman
::ultra human::ultrahuman
::un human::unhuman
::anti-human::antihuman
::infra-human::infrahuman
::in-human::inhuman
::non-human::nonhuman
::pan-human::panhuman
::pre-human::prehuman
::sub-human::subhuman
::ultra-human::ultrahuman
::un-human::unhuman
::an ewt::a newt
::an one::a one
::a hour::an hour
::an user::a user
::a historic::an historic
::an unique::a unique
::an university::a university
::an unicorn::a unicorn
:*:an Utopia::a Utopia
::a MBA::an MBA
::a herb::an herb
::a honor::an honor
::an euro::a euro
::an hospital::a hospital
::a honest::an honest
::a orange::an orange
::an hallucination::a hallucination
::an hilarious::a hilarious
::an history::a history
::an horrific::a horrific
::an horror::a horror
::a SSO::an SSO
::an HEPA::a HEPA
::a heir::an heir
::an hotel::a hotel
::a FDA::an FDA
::an hundred::a hundred
::an humble::a humble
::an united::a united
::an eulogy::a eulogy
::an unit::a unit
::an eunuch::a eunuch
::an union::a union
::a x-ray::an x-ray
::an European::a European
::an unialgal::a unialgal
::an unibranchiate::a unibranchiate
::an unicameral::a unicameral
::an unicameralism::a unicameralism
::an unicapsular::a unicapsular
::an unicarinate::a unicarinate
::an unicarinated::a unicarinated
::an unicentral::a unicentral
::an unichiral::a unichiral
::an unichromosomal::a unichromosomal
::an unicity::a unicity
::an unicolonial::a unicolonial
::an unicoloniality::a unicoloniality
::an unicolored::a unicolored
::an unicore::a unicore
::an unicornuate::a unicornuate
::an unicostate::a unicostate
::an unicuspid::a unicuspid
::an unicuspidal::a unicuspidal
::an unicycle::a unicycle
::an unicyclic::a unicyclic
::an unidimensional::a unidimensional
::an unidirectional::a unidirectional
::an uniface::a uniface
::an unifactorial::a unifactorial
::an unifamilial::a unifamilial
::an uniflagellate::a uniflagellate
::an uniflow::a uniflow
::an unifocal::a unifocal
::an unifoliolate::a unifoliolate
::an unigenerational::a unigenerational
::an unigeneric::a unigeneric
::an uniglandular::a uniglandular
::an unihemispheric::a unihemispheric
::an unikont::a unikont
::an unilabiate::a unilabiate
::an unilaminar::a unilaminar
::an unilineal::a unilineal
::an unilinear::a unilinear
::an unilingual::a unilingual
::an unilinguist::a unilinguist
::an uniliteral::a uniliteral
::an unilobar::a unilobar
::an unilobed::a unilobed
::an unilocular::a unilocular
::an unimanual::a unimanual
::an unimodular::a unimodular
::an unimodularity::a unimodularity
::an unimuscular::a unimuscular
::an uninuclear::a uninuclear
::an uninucleate::a uninucleate
::an uninucleated::a uninucleated
::an uninym::a uninym
::an uniocular::a uniocular
::an uniovular::a uniovular
::an uniovulate::a uniovulate
::an uniparametric::a uniparametric
::an uniparous::a uniparous
::an unipartite::a unipartite
::an unipedal::a unipedal
::an unipedicular::a unipedicular
::an unipennate::a unipennate
::an unipersonal::a unipersonal
::an uniplanar::a uniplanar
::an uniplex::a uniplex
::an uniplicate::a uniplicate
::an unipoint::a unipoint
::an unipolar::a unipolar
::an uniporter::a uniporter
::an unipositive::a unipositive
::an uniprocessor::a uniprocessor
::an uniprofessional::a uniprofessional
::an unipupilled::a unipupilled
::an uniradiated::a uniradiated
::an unirational::a unirational
::an unisectarian::a unisectarian
::an uniselector::a uniselector
::an unisensory::a unisensory
::an unisensual::a unisensual
::an uniseptate::a uniseptate
::an uniserial::a uniserial
::an uniseriate::a uniseriate
::an unisex::a unisex
::an unisilicate::a unisilicate
::an unisolvent::a unisolvent
::an unisonant::a unisonant
::an unispecific::a unispecific
::an unisulcate::a unisulcate
::an unitasking::a unitasking
::an unitegmic::a unitegmic
::an unititular::a unititular
::an unitriangular::a unitriangular
::an unitunicate::a unitunicate
::an univalence::a univalence
::an univalent::a univalent
::an univalve::a univalve
::an univalved::a univalved
::an univalvular::a univalvular
::an univariable::a univariable
::an univentricular::a univentricular
::an univerbation::a univerbation
::an Euro-American::a Euro-American
;::an B::a B
::an Eurobabble::a Eurobabble
::an Eurobank::a Eurobank
::an Eurobeat::a Eurobeat
::an Eurobill::a Eurobill
::an Eurobond::a Eurobond
;::an C::a C
::an Eurocent::a Eurocent
::an Eurocentric::a Eurocentric
::an Eurocentrism::a Eurocentrism
::an Eurocheque::a Eurocheque
::an Eurocommunism::a Eurocommunism
::an Eurocurrency::a Eurocurrency
;::an D::a D
::an Eurodance::a Eurodance
::an eurodemo::a eurodemo
::an Eurodeputy::a Eurodeputy
::an Eurodisco::a Eurodisco
::an Eurodollar::a Eurodollar
::an Eurodominance::a Eurodominance
;::an E::a E
::an Eurasiafrican::a Eurasiafrican
;::an F::a F
::an Eurofag::a Eurofag
::an Eurofascism::a Eurofascism
::an Eurofizz::a Eurofizz
;::an G::a G
::an Eurogame::a Eurogame
;::an H::a H
::an Eurohouse::a Eurohouse
;::an J::a J
::an Eurojargon::a Eurojargon
;::an L::a L
::an Eurolaw::a Eurolaw
::an Eurolinguistic::a Eurolinguistic
::an Eurolinguistics::a Eurolinguistics
;::an M::a M
::an Euromania::a Euromania
::an Euromaniac::a Euromaniac
::an Euromyth::a Euromyth
;::an P::a P
::an Europessimism::a Europessimism
::an Europhile::a Europhile
::an Europhobe::a Europhobe
::an Europhobia::a Europhobia
::an Europhone::a Europhone
::an Europlug::a Europlug
::an Europudding::a Europudding
;::an R::a R
::an Euro-rebel::a Euro-rebel
::an Euroregion::a Euroregion
;::an S::a S
::an Eurosceptic::a Eurosceptic
::an Eurosclerosis::a Eurosclerosis
::an Eurosocialism::a Eurosocialism
::an Eurostyle::a Eurostyle
;::an T::a T
::an Eurotext::a Eurotext
::an Eurotrash::a Eurotrash
::an Eurotunnel::a Eurotunnel
;::an V::a V
::an Eurovision::a Eurovision
::one eyed::one-eyed
::oneeyed::one-eyed
::one dimensional::one-dimensional
::onedimensional::one-dimensional
::one to one::one-to-one
::onetoone::one-to-one
::one on one::one-on-one
::oneonone::one-on-one
::one to many::one-to-many
::onetomany::one-to-many
::many to one::many-to-one
::manytoone::many-to-one
::manytomany::many-to-many
::many to many::many-to-many
::face to face::face-to-face
::facetoface::face-to-face
::man to man::man-to-man
::mantoman::man-to-man
::man to woman::man-to-woman
::mantowoman::man-to-woman
::woman to man::woman-to-man
::womantoman::woman-to-man
::woman to woman::woman-to-woman
::womantowoman::woman-to-woman
::man servant::manservant
::man-servant::manservant
::trouble shooting::troubleshooting
::trouble-shooting::troubleshooting
::girl friend::girlfriend
::girl-friend::girlfriend
::boy friend::boyfriend
::boy-friend::boyfriend
::grand baby::grandbaby
::grand-baby::grandbaby
::screen shot::screenshot
::screen-shot::screenshot
::in-experienced::inexperienced
::in experienced::inexperienced
::case by case basis::case-by-case basis
::casebycase basis::case-by-case basis
::very big::huge
::loud mouthed::loud-mouthed
::loudmouthed::loud-mouthed
::middle aged::middle-aged
::middleaged::middle-aged
::rose tinted::rose-tinted
::rosetinted::rose-tinted
::aweinspiring::awe-inspiring
::awe inspiring::awe-inspiring
::longlasting::long-lasting
::long lasting::long-lasting
::far reaching::far-reaching
::farreaching::far-reaching
::a 20 year old::a 20-year-old
::the 20 year old::the 20-year-old
::seven year itch::seven-year itch
::sevenyear itch::seven-year itch
::seven-year-itch::seven-year itch
::exhusband::ex-husband
::ex husband::ex-husband
::exwife::ex-wife
::ex wife::ex-wife
::sheer off::shear off
::doesn't jive::does not jibe
::didn't jive::did not jibe
::won't jive::will not jibe
::can't jive::cannot jibe
::not jive::not jibe
::the advise::the advice
::adviced::advised
::advicing::advising
::advices::advises
::criterions::criteria
::mute point::moot point
::mountain peek::mountain peak
::peak my::pique my
::peaks my::piques my
::peaked my::piqued my
::peek my::pique my
::peeked my::piqued my
::peeks my::piques my
::peak her::pique her
::peaks her::piques her
::peaked her::piqued her
::peek her::pique her
::peeked her::piqued her
::peeks her::piques her
::peak his::pique his
::peaks his::piques his
::peaked his::piqued his
::peek his::pique his
::peeked his::piqued his
::peeks his::piques his
::peak your::pique your
::peaks your::piques your
::peaked your::piqued your
::peek your::pique your
::peeked your::piqued your
::peeks your::piques your
::peak their::pique their
::peaks their::piques their
::peaked their::piqued their
::peek their::pique their
::peeked their::piqued their
::peeks their::piques their
::and than::and then
::greater then::greater than
::more then::more than
::less then::less than
::was adverse::was averse
::is adverse::is averse
::media is::media are
::data is::data are
::media was::media were
::data was::data were
::just desserts::just deserts
::immigrating from::emigrating from
::emigrating to::immigrating to
::immigrated from::emigrated from
::emigrated to::immigrated to
::immigrates from::emigrates from
::emigrates to::immigrates to
::of flack::of flak
::flush out::flesh out
::hone in::home in
::honing in::homing in
::hones in::homes in
::honed in::homed in
::to loose::to lose
::too lose::too loose
;::cannot be underestimat::should not be underestimat
;:*:can't be underestimat::should not be underestimat
::past the::passed the
::past my::passed my
;::past a::passed a
::past an::passed an
::practise::practice
::daily regiment::daily regimen
::training regiment::training regimen
::selective breading::selective breeding
::commonpathway::common pathway
::common-pathway::common pathway
::common path way::common pathway
::wellwisher::well-wisher
::well wisher::well-wisher
::nonadditivity::non-additivity
::lay people::laypeople
::lay-people::laypeople
::lower performing::lower-performing
::lowerperforming::lower-performing
::late blooming::late-blooming
::lateblooming::late-blooming
::college goers::collegegoers
::college-goers::collegegoers
::four year degree::four-year degree
::fouryear degree::four-year degree
::two year degree::two-year degree
::twoyear degree::two-year degree
::reestablish::re-establish
::non transgender::non-transgender
::nontransgender::non-transgender
::tenure track::tenure-track
::tenuretrack::tenure-track
::antiimperialistic::anti-imperialistic
::anti imperialistic::anti-imperialistic
::antiabolitionism::anti-abolitionism
::anti abolitionism::anti-abolitionism
::grandbaby::grandchild
::far far away::far away
::home-wrecking::homewrecking
::home wrecking::homewrecking
::long-term::longterm
::self identify::self-identify
::selfidentify::self-identify
::click bait::clickbait
::click-bait::clickbait
;::mayn't::may not
::sub-par::subpar
::sub par::subpar
::post traumatic::post-traumatic
::posttraumatic::post-traumatic
::a time consuming::a time-consuming
::a timeconsuming::a time-consuming
::pay checks::paychecks
::pay-checks::paychecks
::look books::lookbooks
::look-books::lookbooks
::high profile case::high-profile case
::highprofile case::high-profile case
::post-doctoral::postdoctoral
::post doctoral::postdoctoral
::post-doc::postdoc
::five and dime::five-and-dime
::ham planet::hamplanet
::ham-planet::hamplanet
::beyond the point::beside the point
::besides the point::beside the point
::data are::data are
::mid-wife::midwife
::mid-wives::midwives
::weightloss activity::weight-loss activity
::weight loss activity::weight-loss activity
::ass-cheek::asscheek
::whack-job::whackjob
::headbutting::head-butting
::granter::grantor
:*:coopt::co-opt
::very very::very
::blind-sided::blindsided
::prorated::pro-rated
::sexual preference::sexual orientation
::special rights::equal rights
::paddy wagon::police car
::intensive purposes::intents and purposes
::nip it in the butt::nip it in the bud
::one in the same::one and the same
::on accident::by accident
::case and point::case in point
::got another thing coming::got another think coming
::wreck havoc::wreak havoc
::could care less::could not care less
::try and::try to
::supposably::supposedly
::transexual::transgender
::tranny::transgender
::colored people::people of color
::illegal alien::undocumented
::colored person::person of color
::quasijudicial::quasi-judicial
::poly-graph::polygraph
::Manhattan-henge::Manhattanhenge
::one trick pony::one-trick pony
::memo::memorandum
::memos::memoranda
::TV::television
::obfuscated::hidden
::fireman::firefighter
::firemen::firefighters
::policeman::police officer
::policemen::police officers
::mankind::humankind
::as a matter of fact::in fact
::along the lines of::like
::countrys::countries
::first of all,::first,
::all cause mortality::all-cause mortality
::in the final analysis::finally
::all too often::often
::did not find::failed to find
::a couple of::several
::found out::discovered
::12 midnight::midnight
::12 noon::noon
::p.m. in the afternoon::p.m.
::absolutely spectacular::spectacular
::absolutely phenomenal::phenomenal
::a person who is honest::an honest person
:*:a total of 1::1
::biography of my life::biography
::autobiography of my life::autobiography
::biography of your life::biography
::enclosed herewith::enclosed
::exactly the same::the same
::final completion::completion
::frank and honest exchange::frank exchange
::honest and frank exchange::honest exchange
::he is a person who::he
::he was a person who::he
::she is a person who::she
::she was a person who::she
::important essentials::essentials
::in spite of the fact that::although
::in the field of::in
::job functions::job
::new innovations::innovations
::one and the same::the same
::particular interest::interest
::period of four days::four days
::personally, I::I
::puzzling in nature::puzzling
::return again::return
::shorter in length::shorter
::longer in length::longer
::small in size::small
::large in size::large
::square in shape::square
::rectangular in shape::rectangular
::summarize briefly::summarize
::surrounding circumstances::circumstances
::the future to come::the future
::there is no doubt but that::no doubt
::habitual custom::custom
::are in receipt of::have received
::were in receipt of::had received
::will be in receipt of::had received
::is in receipt of::has received
::was in receipt of::had received
::am in receipt of::have received
::had been in receipt of::had received
::has been in receipt of::has received
::because of the fact that::because
::through natural processes::naturally
::washroom::bathroom
;::come up with::provided
::we've::we have
;::I've::I have
::amidst::amid
::unbeknownst::unknown
::unbeknown::unknown
::programme::program
::programmed::programed
::programming::programing
;::can't::cannot
::wet your appetite::whet your appetite
::wet their appetite::whet their appetite
::wet his appetite::whet his appetite
::wet her appetite::whet her appetite
::wet its appetite::whet its appetite
::wrecked havoc::wreaked havoc
::wrecks havoc::wreaks havoc
::wrecking havoc::wreaking havoc
::Christmas wreathe::Christmas wreath
::wet my appetite::whet my appetite
::won't::will not
;::don't::do not
::due date for::due date of
::verdant green::verdant
::gonna::going to
::gotta::going to
::rubicund red::rubicund
::both share::they share
::vs::versus
;::aren't::are not
;::couldn't::could not
;::didn't::did not
::coulda::could have
;::doesn't::does not
::had gotten::had
::have gotta::have
;::hadn't::had not
;::hasn't::has not
;::haven't::have not
::has got::has
::have got::have
;::he's::he is
;::isn't::is not
;::it's::it is
;::let's::let us
::for profit institution::for-profit institution
::1/1000th::1/1000
::1/100th::1/100
::1/10th::1/10
::1/12th::1/12
::1/16th::1/16
::1/2nd::1/2
::1/2th::1/2
::1/30th::1/30
::1/32nd::1/32
::1/360th::1/360
::1/3rd::1/3
::1/3th::1/3
::1/48th::1/48
::1/4th::1/4
::1/50th::1/50
::1/5th::1/5
::1/6th::1/6
::1/7th::1/7
::1/8th::1/8
::1/9th::1/9
::1000s of::thousands of
::1000's of::thousands of
::100cc::100 cc
::100cm::100 cm
::100km::100 km
::100m::100 m
::100mm::100 mm
::100s of::hundreds of
::100's of::hundreds of
::10am::10 am
::10cc::10 cc
::10km::10 km
::10M::10 million
::10pm::10 p.m.
::10V::10 V
::110V::110 V
::11am::11 a.m.
::11pm::11 p.m.
::11st::11th
::120V::120 V
::12am::12 a.m.
::12nd::12th
::12pm::12 p.m.
::12V::12 V
::13rd::13th
::1830ies::1830s
::1840's::1840s
::1850ies::1850s
::1850's::1850s
::1860ies::1860s
::1870ies::1870s
::1880ies::1880s
::1890ies::1890s
::1900ies::1900s
::1910ies::1910s
::1920ies::1920s
::1930ies::1930s
::1940ies::1940s
::1940's::1940s
::1950ies::1950s
::1950-ies::1950s
::1960ies::1960s
::1960-ies::1960s
::1970ies::1970s
::1970-ies::1970s
::1980ies::1980s
::1980-ies::1980s
::1990ies::1990s
::1990-ies::1990s
::1am::1 a.m.
::1nd::1st
::1pm::1 p.m.
::1th::1st
::2/3rd::2/3
::2/3rds::2/3
::2/5th::2/5
::2000ies::2000s
::2010ies::2010s
::21th::21st
::22th::22nd
::23th::23rd
::24st::24th
::2th::2nd
::3/4th::3/4
::3/5th::3/5
::3/8ths::3/8
::30-ties::1930s
::31th::31st
::32th::32nd
::33th::33rd
::3am::3 am
::3nd::3rd
::3pm::3 pm
::3th::3rd
::40ies::1940s
::41th::41st
::42th::42nd
::43th::43rd
::4am::4 a.m.
::4pm::4 p.m.
::5,000m::5,000 m
::5/8ths::5/8
::50ies::1950s
::51th::51st
::52th::52nd
::53nd::53rd
::53th::53rd
::5am::5 a.m.
::5pm::5 p.m.
::5V::5 V
::60es::1960s
::60ies::1960s
::60'ies::1960s
::60-ies::1960s
::60's::1960s
::60ties::1960s
::60W::60 W
::61th::61st
::62th::62nd
::63nd::63rd
::63th::63rd
::6am::6 a.m.
::6pm::6 p.m.
::70ies::1970s
::70-ies::1970s
::80ies::1980s
::80-ies::1980s
::8am::8 a.m.
::8pm::8 p.m.
::90ies::1990s
::9am::9 a.m.
::9pm::9 p.m.
::a.k.a::a.k.a.
;::I'm::I am
::Ive::I've
::take-away::takeaway
::mono-chrome::monochrome
::pretty well::well
::way too much::too much
::just have::have
::we just::we
::I just::I
::she just::she
::he just::he
::they just::they
::it just::it
::am of the same opinion::agree
::hitted::hit
:*:honour::honor
;::honourable::honorable
;::honourably::honorably
;::honourarium::honorarium
;::honourary::honorary
::honory::honorary
;::honoured::honored
;::honourific::honorific
;::honouring::honoring
;::honours::honors
::Nazi occupied::Nazi-occupied
::94 year old::94-year-old
::best case scenario::best-case scenario
:*:self fund::self-fund
:*:a total of 2::2
:*:a total of 3::3
:*:a total of 4::4
:*:a total of 5::5
:*:a total of 6::6
:*:a total of 9::9
:*:a total of 8::8
:*:a total of 7::7
::7am::7 a.m.
::7pm::7 p.m.


::self centered::self-centered
::selfcentered::self-centered
::one tailed::one-tailed
::onetailed::one-tailed
::two tailed::two-tailed
::twotailed::two-tailed
::attorney at law::attorney-at-law
:*:three fifth::three-fifth
::on the go::on-the-go
::out of date::out-of-date
::antiinflammatory::anti-inflammatory

::manic-depression::bipolar disorder
::was enrage::was enraged
::one on one talk::one-on-one talk
;::wasn't::was not
;::weren't::were not
;::wouldn't::would not
;::shouldn't::should not
::mightn't::might not
;::mustn't::must not
::would've::would have
;::should've::should have
;::could've::could have
;::might've::might have
;::must've::must have
::might of::might have
::must of::must have
;::he'll::he will
;::how'll::how will
;::it'll::it will
;::she'll::she will
;::that'll::that will
;::they'll::they will
;::they're::they are
;::they've::they have
;::we'll::we will
;::we're::we are
::what'll::what will
::what're::what are
;::'til::until
::when'll::when will
::where'll::where will
::who'll::who will
::why'll::why will
;::you'll::you will
;::you're::you are
;::you've::you have

::defence::defense
::sympathise::sympathize
::antinausea::anti-nausea
::person to person::person-to-person
::doesnot::does not
::social media presence::social-media presence
::double edged sword::double-edged sword
::doubleedged sword::double-edged sword
::aka::a.k.a.
;::your own::::you're own::your own
;::you're a::::your a::you're a
;::you're an::::your an::you're an
;::you're your::::your your::you're your
::you're their::::your their::you're their
;::you're the::::your the::you're the
;::you're my::::your my::you're my
;::you're his::::your his::you're his
;::you're here::::your here::you're here
;::you're her::::your her::you're her
;::you'd::::you;d::you'd
;::where's::::where;s::where's
::wont::won't
::wo'nt::won't
::self absorbed::self-absorbed
::short term funding::short-term funding
::long term funding::long-term funding
::soingle::single
::on the job training::on-the-job training
::masters degree::master's degree
::bachelors degree::bachelor's degree
::highschool::high school
::both alike::alike
::different groups::groups
::distinct groups::groups
::been previously found::been found
::in close proximity::in proximity
::very close::close
::briefly summarize::summarize
::self aggrandizement::self-aggrandizement
::cofounder::co-founder
::rerandomize::re-randomize
::just say::say
::theyre::they're
::Huntingtons disease::Huntington�s disease
::Spearmans rho::Spearman�s rho
::Huntingtons' disease::Huntington�s disease
::cannot only::can not only
;::can't only::can not only
::doing damage to::damaging
::harbour::harbor
::Pearsons correlation::Pearson's correlation
::non negotiable::non-negotiable
::preexisting::pre-existing

;------------------------------------------------------------------------------
; Word middles
;------------------------------------------------------------------------------
:?*:compatab::compatib  ; Covers incompat* and compat*
:?*:catagor::categor  ; Covers subcatagories and catagories.


;------------------------------------------------------------------------------
; Accented English words, from, amongst others, -- word only outside of RStudio
; http://en.wikipedia.org/wiki/List_of_English_words_with_diacritics
; I have included all the ones compatible with reasonable codepages, and placed
; those that may often not be accented either from a clash with an unaccented 
; word (resume), or because the unaccented version is now common (cafe).
;------------------------------------------------------------------------------


#IfWinNotActive



;-------------------------------------------------------------------------------
;  Capitalize dates - set to only work outside of GroupExclude
;-------------------------------------------------------------------------------

#IfWinNotActive ahk_group GroupExclude_capital
:*:A & M Uni::A & M Uni                                                             
:*:Aarif::Aarif                                                                     
:*:Abbey College::Abbey College                                                     
:*:Abdel::Abdel                                                                     
:*:Abdul::Abdul                                                                     
:*:Achille::Achille                                                                 
:*:Ackerman::Ackerman                                                               
:*:Adam::Adam                                                                       
:*:Adan::Adan                                                                       
:*:Addis::Addis                                                                     
:*:Adelfo::Adelfo                                                                   
:*:Adelin::Adelin                                                                   
:*:Adelphi Uni::Adelphi Uni                                                         
:*:Adey::Adey                                                                       
:*:Adila::Adila                                                                     
:*:Adriano::Adriano                                                                 
:*:Adrien::Adrien                                                                   
:*:Aelfric::Aelfric                                                                 
:*:Aengus::Aengus                                                                   
:*:Aeron::Aeron                                                                     
:*:Africa::Africa                                                                   
:*:Agricultural and Mechanical Uni::Agricultural and Mechanical Uni                 
:*:Aho::Aho                                                                         
:*:Aiken::Aiken                                                                     
:*:Ajay::Ajay                                                                       
:*:Ajit::Ajit                                                                       
:*:Alah::Alah                                                                       
:*:Alain::Alain                                                                     
:*:Alamanda::Alamanda                                                               
:*:Alaska::Alaska                                                                   
:*:Alba::Alba                                                                       
:*:Alberic::Alberic                                                                 
:*:Albert::Albert                                                                   
:*:Alex::Alex                                                                       
:*:Algeria::Algeria                                                                 
:*:Alix::Alix                                                                       
:*:Allen Uni::Allen Uni                                                             
:*:Altun::Altun                                                                     
:*:America::America                                                                 
:*:American Uni::American Uni                                                       
:*:Anderson Uni::Anderson Uni                                                       
:*:Andrea::Andrea                                                                   
:*:Andrei::Andrei                                                                   
:*:Andrews Uni::Andrews Uni                                                         
:*:Anwa::Anwa                                                                       
:*:Apara::Apara                                                                     
:*:Aras::Aras                                                                       
:*:Argosy Uni::Argosy Uni                                                           
:*:Arizona::Arizona                                                                 
:*:Arkansas::Arkansas                                                               
:*:Aruba::Aruba                                                                     
:*:Asad::Asad                                                                       
:*:Asbury Uni::Asbury Uni                                                           
:*:Ashland Uni::Ashland Uni                                                         
:*:Asia::Asia                                                                       
:*:Aspen Uni::Aspen Uni                                                             
:*:Atkins::Atkins                                                                   
:*:Atlanta Uni::Atlanta Uni                                                         
:*:Atlantic Uni::Atlantic Uni                                                       
:*:Auburn Uni::Auburn Uni                                                           
:*:Augusta Uni::Augusta Uni                                                         
:*:Aurora Uni::Aurora Uni                                                           
:*:Ave Maria Uni::Ave Maria Uni                                                     
:*:Baker Uni::Baker Uni                                                             
:*:Balkan::Balkan                                                                   
:*:Ball State Uni::Ball State Uni                                                   
:*:Baptist Uni::Baptist Uni                                                         
:*:Barry Uni::Barry Uni                                                             
:*:Basso::Basso                                                                     
:*:Baugulf::Baugulf                                                                 
:*:Baylor Uni::Baylor Uni                                                           
:*:Bellarmine Uni::Bellarmine Uni                                                   
:*:Belmont Uni::Belmont Uni                                                         
:*:Benedictine Uni::Benedictine Uni                                                 
:*:Bethel Uni::Bethel Uni                                                           
:*:Biola Uni::Biola Uni                                                             
:*:Bluffton Uni::Bluffton Uni                                                       
:*:Bohemia::Bohemia                                                                 
:*:Bojan::Bojan                                                                     
:*:Bonaventure Uni::Bonaventure Uni                                                 
:*:Boson::Boson                                                                     
:*:Bostic::Bostic                                                                   
:*:Boston Uni::Boston Uni                                                           
:*:Brandeis Uni::Brandeis Uni                                                       
:*:Brazil::Brazil                                                                   
:*:Breton::Breton                                                                   
:*:Briar Cliff Uni::Briar Cliff Uni                                                 
:*:Broaddus Uni::Broaddus Uni                                                       
:*:Brown Uni::Brown Uni                                                             
:*:Brunhild::Brunhild                                                               
:*:Bucknell Uni::Bucknell Uni                                                       
:*:Bulgar::Bulgar                                                                   
:*:Burma::Burma                                                                     
:*:Byrrnes::Byrrnes                                                                 
:*:California::California                                                           
:*:Capella Uni::Capella Uni                                                         
:*:Capital Uni::Capital Uni                                                         
:*:Carlow Uni::Carlow Uni                                                           
:*:Carls::Carls                                                                     
:*:Carroll Uni::Carroll Uni                                                         
:*:Catholicism::Catholicism                                                         
:*:Cedarville Uni::Cedarville Uni                                                   
:*:Celtic::Celtic                                                                   
:*:Central Michigan Uni::Central Michigan Uni                                       
:*:Chalon::Chalon                                                                   
:*:Chatham Uni::Chatham Uni                                                         
:*:Chesapeake::Chesapeake                                                           
:*:Chester::Chester                                                                 
:*:Christian Uni::Christian Uni                                                     
:*:Clara Uni::Clara Uni                                                             
:*:Clark Uni::Clark Uni                                                             
:*:Clarke Uni::Clarke Uni                                                           
:*:Clarkson Uni::Clarkson Uni                                                       
:*:Clemson Uni::Clemson Uni                                                         
:*:Coatl::Coatl                                                                     
:*:Colgate Uni::Colgate Uni                                                         
:*:Colorado Uni::Colorado Uni                                                       
:*:Columbia Uni::Columbia Uni                                                       
:*:Columbian::Columbian                                                             
:*:Commonwealth Uni::Commonwealth Uni                                               
:*:Concord Uni::Concord Uni                                                         
:*:Concordia Uni::Concordia Uni                                                     
:*:Connell::Connell                                                                 
:*:Cookman Uni::Cookman Uni                                                         
:*:Cornell Uni::Cornell Uni                                                         
:*:Cornwall::Cornwall                                                               
:*:Corsi::Corsi                                                                     
:*:Cristin::Cristin                                                                 
:*:Croatia::Croatia                                                                 
:*:Cuba::Cuba                                                                       
:*:Cuman::Cuman                                                                     
:*:Cumberland Uni::Cumberland Uni                                                   
:*:Cyprian::Cyprian                                                                 
:*:Czar::Czar                                                                       
:*:Czech::Czech                                                                     
:*:Czechoslovakia::Czechoslovakia                                                   
:*:Dalmatia::Dalmatia                                                               
:*:Daniels::Daniels                                                                 
:*:Davis::Davis                                                                     
:*:Dayita::Dayita                                                                   
:*:Delhi::Delhi                                                                     
:*:Denison Uni::Denison Uni                                                         
:*:DePaul Uni::DePaul Uni                                                           
:*:DePauw Uni::DePauw Uni                                                           
:*:Dhanga::Dhanga                                                                   
:*:Dhir::Dhir                                                                       
:*:Dickinson Uni::Dickinson Uni                                                     
:*:Dillard Uni::Dillard Uni                                                         
:*:Dillon::Dillon                                                                   
:*:Dominican Uni::Dominican Uni                                                     
:*:Drake Uni::Drake Uni                                                             
:*:Drew Uni::Drew Uni                                                               
:*:Drexel Uni::Drexel Uni                                                           
:*:Drury Uni::Drury Uni                                                             
:*:Duke Uni::Duke Uni                                                               
:*:Duquesne Uni::Duquesne Uni                                                       
:*:East Carolina Uni::East Carolina Uni                                             
:*:Eastern Michigan Uni::Eastern Michigan Uni                                       
:*:Edward's Uni::Edward's Uni                                                       
:*:Egypt::Egypt                                                                     
:*:Elen::Elen                                                                       
:*:Elis::Elis                                                                       
:*:Ella::Ella                                                                       
:*:Elon Uni::Elon Uni                                                               
:*:Emory Uni::Emory Uni                                                             
:*:Engel::Engel                                                                     
:*:Engli::Engli                                                                     
:*:Enri::Enri                                                                       
:*:Eogan::Eogan                                                                     
:*:Ervin::Ervin                                                                     
:*:Essex::Essex                                                                     
:*:Estep::Estep                                                                     
:*:Estonia::Estonia                                                                 
:*:Ethel::Ethel                                                                     
:*:Ethiopia::Ethiopia                                                               
:*:Etruscan::Etruscan                                                               
:*:Europe::Europe                                                                   
:*:Evangel Uni::Evangel Uni                                                         
:*:Fatim::Fatim                                                                     
:*:Feevale Uni::Feevale Uni                                                         
:*:Feodor::Feodor                                                                   
:*:Fielding Graduate Uni::Fielding Graduate Uni                                     
:*:Fiore::Fiore                                                                     
:*:Fisk Uni::Fisk Uni                                                               
:*:Fleming::Fleming                                                                 
:*:Florida State Uni::Florida State Uni                                             
:*:Fontbonne Uni::Fontbonne Uni                                                     
:*:Fordham Uni::Fordham Uni                                                         
:*:Fox Uni::Fox Uni                                                                 
:*:France::France                                                                   
:*:Frederic::Frederic                                                               
:*:Furman Uni::Furman Uni                                                           
:*:Gaines::Gaines                                                                   
:*:Gannon Uni::Gannon Uni                                                           
:*:Geise::Geise                                                                     
:*:Geng::Geng                                                                       
:*:Georgetown Uni::Georgetown Uni                                                   
:*:Georgian::Georgian                                                               
:*:German::German                                                                   
:*:Gilbert::Gilbert                                                                 
:*:Gonzaga Uni::Gonzaga Uni                                                         
:*:Gopal::Gopal                                                                     
:*:Goran::Goran                                                                     
:*:Graduate Uni::Graduate Uni                                                       
:*:Grand Canyon Uni::Grand Canyon Uni                                               
:*:Grand View Uni::Grand View Uni                                                   
:*:Griffith::Griffith                                                               
:*:Hall Uni::Hall Uni                                                               
:*:Hamline Uni::Hamline Uni                                                         
:*:Harding Uni::Harding Uni                                                         
:*:Harley::Harley                                                                   
:*:Harvard Uni::Harvard Uni                                                         
:*:Hebrew::Hebrew                                                                   
:*:Heidelberg Uni::Heidelberg Uni                                                   
:*:Heights Uni::Heights Uni                                                         
:*:Helen::Helen                                                                     
:*:Hemant::Hemant                                                                   
:*:Henderson::Henderson                                                             
:*:Herbert::Herbert                                                                 
:*:Herramel::Herramel                                                               
:*:High Point Uni::High Point Uni                                                   
:*:Hillsboro::Hillsboro                                                             
:*:Hofstra Uni::Hofstra Uni                                                         
:*:Hollins Uni::Hollins Uni                                                         
:*:Hondura::Hondura                                                                 
:*:Hopkins Uni::Hopkins Uni                                                         
:*:Horne::Horne                                                                     
:*:Howard Uni::Howard Uni                                                           
:*:Huntington Uni::Huntington Uni                                                   
:*:Iceland::Iceland                                                                 
:*:Igor::Igor                                                                       
:*:Iman::Iman                                                                       
:*:Immaculata Uni::Immaculata Uni                                                   
:*:India::India                                                                     
:*:Indiana Uni::Indiana Uni                                                         
:*:Indonesia::Indonesia                                                             
:*:Indra::Indra                                                                     
:*:International Uni::International Uni                                             
:*:iPad::iPad                                                                       
:*:iPhone::iPhone                                                                   
:*:iPod::iPod                                                                       
:*:Iracatiraca::Iracatiraca                                                         
:*:Iran::Iran                                                                       
:*:Iraq::Iraq                                                                       
:*:Irving::Irving                                                                   
:*:Israel::Israel                                                                   
:*:Jamil::Jamil                                                                     
:*:Japan::Japan                                                                     
:*:Jaros::Jaros                                                                     
:*:Jarre::Jarre                                                                     
:*:Jaya::Jaya                                                                       
:*:Jenna::Jenna                                                                     
:*:Jesuit Uni::Jesuit Uni                                                           
:*:Jim::Jim                                                                         
:*:Jiri::Jiri                                                                       
:*:John's Uni::John's Uni                                                           
:*:Jord::Jord                                                                       
:*:Judson Uni::Judson Uni                                                           
:*:Juliett::Juliett                                                                 
:*:June::June                                                                       
:*:Justina::Justina                                                                 
:*:Justinian::Justinian                                                             
:*:Juw::Juw                                                                         
:*:Kaci::Kaci                                                                       
:*:Kadi::Kadi                                                                       
:*:Kafa::Kafa                                                                       
:*:Kahru::Kahru                                                                     
:*:Kaise::Kaise                                                                     
:*:Kalaha::Kalaha                                                                   
:*:Kalev::Kalev                                                                     
:*:Kalyan::Kalyan                                                                   
:*:Kamal::Kamal                                                                     
:*:Kamba::Kamba                                                                     
:*:Kamil::Kamil                                                                     
:*:Kaplan::Kaplan                                                                   
:*:Karam::Karam                                                                     
:*:Karan::Karan                                                                     
:*:Karas::Karas                                                                     
:*:Kardaz::Kardaz                                                                   
:*:Karim::Karim                                                                     
:*:Karluk::Karluk                                                                   
:*:Kate::Kate                                                                       
:*:Kathi::Kathi                                                                     
:*:Kaur::Kaur                                                                       
:*:Kaya::Kaya                                                                       
:*:Kaylee::Kaylee                                                                   
:*:Keene::Keene                                                                     
:*:Kemi::Kemi                                                                       
:*:Kentucky::Kentucky                                                               
:*:Kenya::Kenya                                                                     
:*:Kerner::Kerner                                                                   
:*:Kesh::Kesh                                                                       
:*:Kess::Kess                                                                       
:*:Khan::Khan                                                                       
:*:Khun::Khun                                                                       
:*:Kiel::Kiel                                                                       
:*:Kilic::Kilic                                                                     
:*:King Uni::King Uni                                                               
:*:Kira::Kira                                                                       
:*:Kirk::Kirk                                                                       
:*:Kitti::Kitti                                                                     
:*:Klein::Klein                                                                     
:*:Koba::Koba                                                                       
:*:Koh::Koh                                                                         
:*:Kolb::Kolb                                                                       
:*:Kolon::Kolon                                                                     
:*:Komi::Komi                                                                       
:*:Konrad::Konrad                                                                   
:*:Konstantin::Konstantin                                                           
:*:Koop::Koop                                                                       
:*:Korea::Korea                                                                     
:*:Kornel::Kornel                                                                   
:*:Kott::Kott                                                                       
:*:Kresimir::Kresimir                                                               
:*:Krishna::Krishna                                                                 
:*:Kristi::Kristi                                                                   
:*:Krug::Krug                                                                       
:*:Krysta::Krysta                                                                   
:*:Krystyn::Krystyn                                                                 
:*:Kulacekara::Kulacekara                                                           
:*:Kunwar::Kunwar                                                                   
:*:La Salle Uni::La Salle Uni                                                       
:*:La Sierra Uni::La Sierra Uni                                                     
:*:Lagrang::Lagrang                                                                 
:*:Lahore::Lahore                                                                   
:*:Lalli::Lalli                                                                     
:*:Lamar Uni::Lamar Uni                                                             
:*:Lander Uni::Lander Uni                                                           
:*:Latin::Latin                                                                     
:*:Lawrence Uni::Lawrence Uni                                                       
:*:Lee Uni::Lee Uni                                                                 
:*:LeGrand::LeGrand                                                                 
:*:LeHew::LeHew                                                                     
:*:Lehigh Uni::Lehigh Uni                                                           
:*:Leonor::Leonor                                                                   
:*:Lesley Uni::Lesley Uni                                                           
:*:Levant::Levant                                                                   
:*:Levin::Levin                                                                     
:*:Lexi::Lexi                                                                       
:*:Liao::Liao                                                                       
:*:Liberty Uni::Liberty Uni                                                         
:*:Libya::Libya                                                                     
:*:Licht::Licht                                                                     
:*:Licinia::Licinia                                                                 
:*:Lima::Lima                                                                       
:*:Lincoln Uni::Lincoln Uni                                                         
:*:Lincolnshire::Lincolnshire                                                       
:*:Lindenwood Uni::Lindenwood Uni                                                   
:*:Lipscomb Uni::Lipscomb Uni                                                       
:*:Lithuania::Lithuania                                                             
:*:Llew::Llew                                                                       
:*:Lombard::Lombard                                                                 
:*:London::London                                                                   
:*:Long Island Uni::Long Island Uni                                                 
:*:Loran::Loran                                                                     
:*:Louis Uni::Louis Uni                                                             
:*:Lowell::Lowell                                                                   
:*:Loyola Uni::Loyola Uni                                                           
:*:Lutheran Uni::Lutheran Uni                                                       
:*:Lyons::Lyons                                                                     
:*:Machair::Machair                                                                 
:*:Mackenzi::Mackenzi                                                               
:*:Madonna Uni::Madonna Uni                                                         
:*:Maga::Maga                                                                       
:*:Magda::Magda                                                                     
:*:Maha::Maha                                                                       
:*:Maior::Maior                                                                     
:*:Majid::Majid                                                                     
:*:Malay::Malay                                                                     
:*:Maldiv::Maldiv                                                                   
:*:Malone Uni::Malone Uni                                                           
:*:Malvern::Malvern                                                                 
:*:Manas::Manas                                                                     
:*:Mansfield Uni::Mansfield Uni                                                     
:*:Marco::Marco                                                                     
:*:Marian Uni::Marian Uni                                                           
:*:Marquette Uni::Marquette Uni                                                     
:*:Marquis::Marquis                                                                 
:*:Martin's Uni::Martin's Uni                                                       
:*:Mary Uni::Mary Uni                                                               
:*:Maryland Uni::Maryland Uni                                                       
:*:Marylhurst Uni::Marylhurst Uni                                                   
:*:Mary's Uni::Mary's Uni                                                           
:*:Maryville Uni::Maryville Uni                                                     
:*:Mason Uni::Mason Uni                                                             
:*:Matej::Matej                                                                     
:*:Matild::Matild                                                                   
:*:Matiya::Matiya                                                                   
:*:Matthew::Matthew                                                                 
:*:Matti::Matti                                                                     
:*:Maya::Maya                                                                       
:*:McCarthy::McCarthy                                                               
:*:McKendree Uni::McKendree Uni                                                     
:*:Meeli::Meeli                                                                     
:*:Megan::Megan                                                                     
:*:Megen::Megen                                                                     
:*:Mehri::Mehri                                                                     
:*:Mellet::Mellet                                                                   
:*:Mellon Uni::Mellon Uni                                                           
:*:Memorial Uni::Memorial Uni                                                       
:*:Mepe::Mepe                                                                       
:*:Mercer Uni::Mercer Uni                                                           
:*:Mercy Uni::Mercy Uni                                                             
:*:Mercyhurst Uni::Mercyhurst Uni                                                   
:*:Merya::Merya                                                                     
:*:Meshar::Meshar                                                                   
:*:Mesopota::Mesopota                                                               
:*:Metz::Metz                                                                       
:*:Meyer::Meyer                                                                     
:*:Miami Uni::Miami Uni                                                             
:*:Middle East::Middle East                                                         
:*:Middle Tennessee::Middle Tennessee                                               
:*:Midland Uni::Midland Uni                                                         
:*:Midway Uni::Midway Uni                                                           
:*:Midwestern State Uni::Midwestern State Uni                                       
:*:Mikal::Mikal                                                                     
:*:Millikin Uni::Millikin Uni                                                       
:*:Miro::Miro                                                                       
:*:Misericordia Uni::Misericordia Uni                                               
:*:Missouri::Missouri                                                               
:*:Mongol::Mongol                                                                   
:*:Monnia::Monnia                                                                   
:*:Monongah::Monongah                                                               
:*:Montferrat::Montferrat                                                           
:*:Mordvin::Mordvin                                                                 
:*:Morgan::Morgan                                                                   
:*:Morris Uni::Morris Uni                                                           
:*:Mose::Mose                                                                       
:*:Moye::Moye                                                                       
:*:Muadh::Muadh                                                                     
:*:Mullen::Mullen                                                                   
:*:Munk::Munk                                                                       
:*:Muriel::Muriel                                                                   
:*:Muskingum Uni::Muskingum Uni                                                     
:*:Muza::Muza                                                                       
:*:Naga::Naga                                                                       
:*:Najib::Najib                                                                     
:*:Namen::Namen                                                                     
:*:Nana::Nana                                                                       
:*:Nanda::Nanda                                                                     
:*:Narasimha::Narasimha                                                             
:*:Narayan::Narayan                                                                 
:*:Naropa Uni::Naropa Uni                                                           
:*:Nass::Nass                                                                       
:*:National Louis Uni::National Louis Uni                                           
:*:Navar::Navar                                                                     
:*:Nazarene Uni::Nazarene Uni                                                       
:*:Nebraska::Nebraska                                                               
:*:Neil::Neil                                                                       
:*:Nesr::Nesr                                                                       
:*:Neven::Neven                                                                     
:*:New York Uni::New York Uni                                                       
:*:Newman Uni::Newman Uni                                                           
:*:Newport Uni::Newport Uni                                                         
:*:Nga::Nga                                                                         
:*:Niels::Niels                                                                     
:*:Nigeria::Nigeria                                                                 
:*:Niki::Niki                                                                       
:*:Nikole::Nikole                                                                   
:*:Norris::Norris                                                                   
:*:North America::North America                                                     
:*:North Carolina::North Carolina                                                   
:*:North Dakota::North Dakota                                                       
:*:North Greenville Uni::North Greenville Uni                                       
:*:North Korea::North Korea                                                         
:*:North Park Uni::North Park Uni                                                   
:*:Northcentral Uni::Northcentral Uni                                               
:*:Northeastern Uni::Northeastern Uni                                               
:*:Northern Arizona Uni::Northern Arizona Uni                                       
:*:Northern Colorado::Northern Colorado                                             
:*:Northern Illinois Uni::Northern Illinois Uni                                     
:*:Northern Uni::Northern Uni                                                       
:*:Northumbria::Northumbria                                                         
:*:Northwest Nazarene Uni::Northwest Nazarene Uni                                   
:*:Northwestern Uni::Northwestern Uni                                               
:*:Nova Southeastern Uni::Nova Southeastern Uni                                     
:*:Nura::Nura                                                                       
:*:Nydog::Nydog                                                                     
:*:Nylog::Nylog                                                                     
:*:Oakland Uni::Oakland Uni                                                         
:*:Octavia::Octavia                                                                 
:*:Oglethorpe Uni::Oglethorpe Uni                                                   
:*:Ohio Uni::Ohio Uni                                                               
:*:Old Dominion Uni::Old Dominion Uni                                               
:*:Omar::Omar                                                                       
:*:Ottawa Uni::Ottawa Uni                                                           
:*:Otto::Otto                                                                       
:*:Pacific Uni::Pacific Uni                                                         
:*:Paris::Paris                                                                     
:*:Payne Uni::Payne Uni                                                             
:*:Pearson::Pearson                                                                 
:*:Pepperdine Uni::Pepperdine Uni                                                   
:*:Persia::Persia                                                                   
:*:Peter's Uni::Peter's Uni                                                         
:*:Petr::Petr                                                                       
:*:Phillip::Phillip                                                                 
:*:Phoenician::Phoenician                                                           
:*:Piaget::Piaget                                                                   
:*:Pierce Uni::Pierce Uni                                                           
:*:Pieter::Pieter                                                                   
:*:Point Park Uni::Point Park Uni                                                   
:*:Point Uni::Point Uni                                                             
:*:Princeton Uni::Princeton Uni                                                     
:*:Prithvi::Prithvi                                                                 
:*:Prussia::Prussia                                                                 
:*:Purdue Uni::Purdue Uni                                                           
:*:Quincy Uni::Quincy Uni                                                           
:*:Ragno::Ragno                                                                     
:*:Rahad::Rahad                                                                     
:*:Rahul::Rahul                                                                     
:*:Rainald::Rainald                                                                 
:*:Raja::Raja                                                                       
:*:Ramch::Ramch                                                                     
:*:Randa::Randa                                                                     
:*:Ranjit::Ranjit                                                                   
:*:Rashid::Rashid                                                                   
:*:Rawan::Rawan                                                                     
:*:Raya::Raya                                                                       
:*:Regent Uni::Regent Uni                                                           
:*:Reginar::Reginar                                                                 
:*:Reinhardt Uni::Reinhardt Uni                                                     
:*:Reserve Uni::Reserve Uni                                                         
:*:Rhiwal::Rhiwal                                                                   
:*:Rhodesia::Rhodesia                                                               
:*:Rhos::Rhos                                                                       
:*:Rhufon::Rhufon                                                                   
:*:Rhyne Uni::Rhyne Uni                                                             
:*:Rhys::Rhys                                                                       
:*:Ricca::Ricca                                                                     
:*:Rice Uni::Rice Uni                                                               
:*:Richwin::Richwin                                                                 
:*:Riki::Riki                                                                       
:*:Riku::Riku                                                                       
:*:Rivier Uni::Rivier Uni                                                           
:*:Robert::Robert                                                                   
:*:Rockefeller Uni::Rockefeller Uni                                                 
:*:Rockford Uni::Rockford Uni                                                       
:*:Rocky Mountain::Rocky Mountain                                                   
:*:Rogala::Rogala                                                                   
:*:Roger::Roger                                                                     
:*:Romani::Romani                                                                   
:*:Romano::Romano                                                                   
:*:Romo::Romo                                                                       
:*:Ronald::Ronald                                                                   
:*:Rorgon::Rorgon                                                                   
:*:Rosa::Rosa                                                                       
:*:Rosen::Rosen                                                                     
:*:Ross::Ross                                                                       
:*:Roth::Roth                                                                       
:*:Rowe::Rowe                                                                       
:*:Ruan::Ruan                                                                       
:*:Russia::Russia                                                                   
:*:Rutgers Uni::Rutgers Uni                                                         
:*:Saffari::Saffari                                                                 
:*:Salah::Salah                                                                     
:*:Salama::Salama                                                                   
:*:Sarak::Sarak                                                                     
:*:Saturday::Saturday                                                               
:*:Saxo::Saxo                                                                       
:*:Scandinavia::Scandinavia                                                         
:*:Schmid::Schmid                                                                   
:*:Schreiner Uni::Schreiner Uni                                                     
:*:Scotti::Scotti                                                                   
:*:Seattle Uni::Seattle Uni                                                         
:*:Shenandoah Uni::Shenandoah Uni                                                   
:*:Shepherd Uni::Shepherd Uni                                                       
:*:Siberia::Siberia                                                                 
:*:Slavic::Slavic                                                                   
:*:Smith College::Smith College                                                     
:*:Snyder::Snyder                                                                   
:*:Soimir::Soimir                                                                   
:*:Soka Uni::Soka Uni                                                               
:*:Somali::Somali                                                                   
:*:Sonpal::Sonpal                                                                   
:*:Sonqor::Sonqor                                                                   
:*:South Africa::South Africa                                                       
:*:South America::South America                                                     
:*:South Carolina::South Carolina                                                   
:*:South Dakota::South Dakota                                                       
:*:South Florida::South Florida                                                     
:*:South Korea::South Korea                                                         
:*:Southeastern Uni::Southeastern Uni                                               
:*:Southern California::Southern California                                         
:*:Southern Illinois Uni::Southern Illinois Uni                                     
:*:Southern Methodist Uni::Southern Methodist Uni                                   
:*:Southern Mississippi::Southern Mississippi                                       
:*:Southern Nazarene Uni::Southern Nazarene Uni                                     
:*:Southern Oregon Uni::Southern Oregon Uni                                         
:*:Southern Uni::Southern Uni                                                       
:*:Southern Virginia Uni::Southern Virginia Uni                                     
:*:Southwestern Uni::Southwestern Uni                                               
:*:Soviet::Soviet                                                                   
:*:Spain::Spain                                                                     
:*:Spalding Uni::Spalding Uni                                                       
:*:Sparta::Sparta                                                                   
:*:Sri Lanka::Sri Lanka                                                             
:*:Srichand::Srichand                                                               
:*:Staci::Staci                                                                     
:*:Stanford Uni::Stanford Uni                                                       
:*:Stanislav::Stanislav                                                             
:*:Stanislaw::Stanislaw                                                             
:*:State Uni::State Uni                                                             
:*:Stein::Stein                                                                     
:*:Stepan::Stepan                                                                   
:*:Stephan::Stephan                                                                 
:*:Stetson Uni::Stetson Uni                                                         
:*:Stevenson Uni::Stevenson Uni                                                     
:*:Stony Brook Uni::Stony Brook Uni                                                 
:*:Stritch Uni::Stritch Uni                                                         
:*:Strom::Strom                                                                     
:*:Stuart::Stuart                                                                   
:*:Suebi::Suebi                                                                     
:*:Suffolk Uni::Suffolk Uni                                                         
:*:Summers::Summers                                                                 
:*:Surat::Surat                                                                     
:*:Suray::Suray                                                                     
:*:Susa::Susa                                                                       
:*:Susquehanna Uni::Susquehanna Uni                                                 
:*:Swiss::Swiss                                                                     
:*:Switzer::Switzer                                                                 
:*:Syracuse Uni::Syracuse Uni                                                       
:*:Syria::Syria                                                                     
:*:Talal::Talal                                                                     
:*:Talha::Talha                                                                     
:*:Talib::Talib                                                                     
:*:Tamar::Tamar                                                                     
:*:Taylor Uni::Taylor Uni                                                           
:*:Tech Uni::Tech Uni                                                               
:*:Technological Uni::Technological Uni                                             
:*:Tehran::Tehran                                                                   
:*:Teiste::Teiste                                                                   
:*:Tej::Tej                                                                         
:*:Teka::Teka                                                                       
:*:Tekin::Tekin                                                                     
:*:Telurg::Telurg                                                                   
:*:Temple Uni::Temple Uni                                                           
:*:Teodor::Teodor                                                                   
:*:Teru::Teru                                                                       
:*:Theoderic::Theoderic                                                             
:*:Theodo::Theodo                                                                   
:*:Tiffin Uni::Tiffin Uni                                                           
:*:Timmi::Timmi                                                                     
:*:Tony::Tony                                                                       
:*:Transylvania Uni::Transylvania Uni                                               
:*:Trent::Trent                                                                     
:*:Trifi::Trifi                                                                     
:*:Trinity International Uni::Trinity International Uni                             
:*:Trinity Uni::Trinity Uni                                                         
:*:Troy::Troy                                                                       
:*:Trpimir::Trpimir                                                                 
:*:Trump Uni::Trump Uni                                                             
:*:Tsar::Tsar                                                                       
:*:Tudwal::Tudwal                                                                   
:*:Tufts Uni::Tufts Uni                                                             
:*:Tulane Uni::Tulane Uni                                                           
:*:Tunis::Tunis                                                                     
:*:Tunka::Tunka                                                                     
:*:Turai::Turai                                                                     
:*:Turki::Turki                                                                     
:*:Tusi::Tusi                                                                       
:*:Tywi::Tywi                                                                       
:*:Uganda::Uganda                                                                   
:*:Ukrainian::Ukrainian                                                             
:*:Union Uni::Union Uni                                                             
:*:Urbana Uni::Urbana Uni                                                           
:*:Vanderbilt Uni::Vanderbilt Uni                                                   
:*:Villanova Uni::Villanova Uni                                                     
:*:Virginian::Virginian                                                             
:*:Viscount::Viscount                                                               
:*:Viterbo Uni::Viterbo Uni                                                         
:*:Vlad::Vlad                                                                       
:*:Volk::Volk                                                                       
:*:Wake Forest Uni::Wake Forest Uni                                                 
:*:Walden Uni::Walden Uni                                                           
:*:Wallace Uni::Wallace Uni                                                         
:*:Warner Uni::Warner Uni                                                           
:*:Washburn Uni::Washburn Uni                                                       
:*:Washington Uni::Washington Uni                                                   
:*:Wayland Baptist Uni::Wayland Baptist Uni                                         
:*:Waynesburg Uni::Waynesburg Uni                                                   
:*:Webb Uni::Webb Uni                                                               
:*:Wesleyan Uni::Wesleyan Uni                                                       
:*:Western Michigan Uni::Western Michigan Uni                                       
:*:Western Oregon Uni::Western Oregon Uni                                           
:*:Western Washington Uni::Western Washington Uni                                   
:*:Whitworth Uni::Whitworth Uni                                                     
:*:Widener Uni::Widener Uni                                                         
:*:Willamette Uni::Willamette Uni                                                   
:*:Williams Uni::Williams Uni                                                       
:*:Wilmington Uni::Wilmington Uni                                                   
:*:Wittenberg Uni::Wittenberg Uni                                                   
:*:Wizlaw::Wizlaw                                                                   
:*:Woman's Uni::Woman's Uni                                                         
:*:Women's Uni::Women's Uni                                                         
:*:Wythe Uni::Wythe Uni                                                             
:*:Yale Uni::Yale Uni                                                               
:*:Yeshiva Uni::Yeshiva Uni                                                         
:*:Young Uni::Young Uni                                                             
:*:Zambia::Zambia                                                                   
:*:Zhebeg::Zhebeg                                                                   
:*:Zheng::Zheng                                                                     
:*:Zhong::Zhong                                                                     
:*:Zhuneg::Zhuneg                                                                   
:*:Zion::Zion                                                                       
:*:Zoe::Zoe                                                                         
:*:Zoltan::Zoltan                                                                   
:*:Zuwa::Zuwa                                                                       
::Aaron::Aaron                                                                      
::Abagail::Abagail                                                                  
::Abington::Abington                                                                
::Abu::Abu                                                                          
::Achilles::Achilles                                                                
::Adolphus College::Adolphus College                                                
::Adrian College::Adrian College                                                    
::AFB::AFB                                                                          
::AFQT::AFQT                                                                        
::AFS::AFS                                                                          
::Alabama::Alabama                                                                  
::Albania::Albania                                                                  
::Albion College::Albion College                                                    
::Albion::Albion                                                                    
::Albright College::Albright College                                                
::Alfyn::Alfyn                                                                      
::Algonquin::Algonquin                                                              
::Allegheny College::Allegheny College                                              
::Alma College::Alma College                                                        
::Alverno College::Alverno College                                                  
::Amanda::Amanda                                                                    
::Amherst College::Amherst College                                                  
::Amy::Amy                                                                          
::Anchorage::Anchorage                                                              
::ANCOVA::ANCOVA                                                                    
::Andorra::Andorra                                                                  
::ANOVA::ANOVA                                                                      
::Anselm College::Anselm College                                                    
::Antioch College::Antioch College                                                  
::APA::APA                                                                          
::April::April                                                                      
::APS::APS                                                                          
::Aquinas College::Aquinas College                                                  
::Arys::Arys                                                                        
::Asheville::Asheville                                                              
::Assumption College::Assumption College                                            
::at Buffalo::at Buffalo                                                            
::at Purchase::at Purchase                                                          
::Athyn College::Athyn College                                                      
::Atlanta::Atlanta                                                                  
::Auckland::Auckland                                                                
::Augsburg College::Augsburg College                                                
::August::August                                                                    
::Augusta::Augusta                                                                  
::Augustana College::Augustana College                                              
::Austin College::Austin College                                                    
::Austin::Austin                                                                    
::Australia::Australia                                                              
::Azerbaijan::Azerbaijan                                                            
::B.Mus.::B.Mus.                                                                    
::B.Phil.::B.Phil.                                                                  
::B.S.Th.::B.S.Th.                                                                  
::Bachelor of Arts::Bachelor of Arts                                                
::Bachelor of Laws::Bachelor of Laws                                                
::Bachelor of Philosophy::Bachelor of Philosophy                                    
::Bachelor of Sacred Theology::Bachelor of Sacred Theology                          
::Bacone College::Bacone College                                                    
::Baelor::Baelor                                                                    
::Bahamas::Bahamas                                                                  
::Baldwin College::Baldwin College                                                  
::Baltimore::Baltimore                                                              
::Bangladesh::Bangladesh                                                            
::Barbados::Barbados                                                                
::Bard College::Bard College                                                        
::Barnard College::Barnard College                                                  
::Baroness::Baroness                                                                
::Barton College::Barton College                                                    
::Bates College::Bates College                                                      
::BBQ::BBQ                                                                          
::BCE::BCE                                                                          
::Beirut::Beirut                                                                    
::Belmont::Belmont                                                                  
::Beloit College::Beloit College                                                    
::Beloit::Beloit                                                                    
::Benedict College::Benedict College                                                
::Benedictine College::Benedictine College                                          
::Bennett College::Bennett College                                                  
::Bennington College::Bennington College                                            
::Berea College::Berea College                                                      
::Berlin::Berlin                                                                    
::Berry College::Berry College                                                      
::Bethany College::Bethany College                                                  
::Bethel College::Bethel College                                                    
::Blackburn College::Blackburn College                                              
::BLS::BLS                                                                          
::Blue Mountain College::Blue Mountain College                                      
::Bluefield College::Bluefield College                                              
::Boston College::Boston College                                                    
::Bowdoin College::Bowdoin College                                                  
::Bowdoin::Bowdoin                                                                  
::Brevard College::Brevard College                                                  
::Bridgewater College::Bridgewater College                                          
::Britain::Britain                                                                  
::Brown College::Brown College                                                      
::Brunissenda::Brunissenda                                                          
::Bryce::Bryce                                                                      
::Buddha::Buddha                                                                    
::Buddhist::Buddhist                                                                
::Buffalo State College::Buffalo State College                                      
::Buffalo State::Buffalo State                                                      
::Burlington College::Burlington College                                            
::BYU::BYU                                                                          
::C.V.::C.V.                                                                        
::Caldwell College::Caldwell College                                                
::Cali::Cali                                                                        
::Caltech::Caltech                                                                  
::Calvin College::Calvin College                                                    
::Canisius College::Canisius College                                                
::Carleton College::Carleton College                                                
::Carroll College::Carroll College                                                  
::Carthage College::Carthage College                                                
::Catawba College::Catawba College                                                  
::Catharine College::Catharine College                                              
::Catholic College::Catholic College                                                
::Cazenovia College::Cazenovia College                                              
::CBS::CBS                                                                          
::CBT::CBT                                                                          
::CDC::CDC                                                                          
::Cedar Crest College::Cedar Crest College                                          
::CEFA::CEFA                                                                        
::Centenary College::Centenary College                                              
::Central African Republic::Central African Republic                                
::Central Baptist College::Central Baptist College                                  
::Central College::Central College                                                  
::Centre College::Centre College                                                    
::CEO::CEO                                                                          
::CERN::CERN                                                                        
::CFA::CFA                                                                          
::CFI::CFI                                                                          
::Chad::Chad                                                                        
::Charlotte::Charlotte                                                              
::Chestnut Hill College::Chestnut Hill College                                      
::Christendom College::Christendom College                                          
::Christendom::Christendom                                                          
::Christian College::Christian College                                              
::Christopher::Christopher                                                          
::CI::CI                                                                            
::CIA::CIA                                                                          
::City State::City State                                                            
::City Uni::City Uni                                                                
::CK2::CK2                                                                          
::Claremont Colleges::Claremont Colleges                                            
::Clark College::Clark College                                                      
::Clarkson University::Clarkson University                                          
::Coe College::Coe College                                                          
::Coker College::Coker College                                                      
::Colby College::Colby College                                                      
::College at Wise::College at Wise                                                  
::College Board::College Board                                                      
::College of Liberal Arts::College of Liberal Arts                                  
::College of the Holy Cross::College of the Holy Cross                              
::College of::College of                                                            
::College Station::College Station                                                  
::Collegeville::Collegeville                                                        
::Colorado College::Colorado College                                                
::Columbia College::Columbia College                                                
::Concordia College::Concordia College                                              
::Connecticut College::Connecticut College                                          
::Connecticut::Connecticut                                                          
::Converse College::Converse College                                                
::Cooper Union::Cooper Union                                                        
::Copacabana::Copacabana                                                            
::Cornell College::Cornell College                                                  
::Countess::Countess                                                                
::Covenant College::Covenant College                                                
::Cox::Cox                                                                          
::CSI::CSI                                                                          
::CTT::CTT                                                                          
::Cuban::Cuban                                                                      
::CUNY::CUNY                                                                        
::Curry College::Curry College                                                      
::CV::CV                                                                            
::Cypress::Cypress                                                                  
::Dana College::Dana College                                                        
::Dartmouth College::Dartmouth College                                              
::Davidson College::Davidson College                                                
::Dean College::Dean College                                                        
::December::December                                                                
::Deep Springs College::Deep Springs College                                        
::Defiance College::Defiance College                                                
::Democratic Republic of the::Democratic Republic of the                            
::Denison University::Denison University                                            
::Dhabi::Dhabi                                                                      
::Dickinson College::Dickinson College                                              
::DNA::DNA                                                                          
::Doane College::Doane College                                                      
::Dordt College::Dordt College                                                      
::DPRK::DPRK                                                                        
::Dr.::Dr.                                                                          
::Duchess::Duchess                                                                  
::Earlham College::Earlham College                                                  
::Eastern Nazarene College::Eastern Nazarene College                                
::Eckerd College::Eckerd College                                                    
::Ed.D::Ed.D                                                                        
::Eddard::Eddard                                                                    
::Edgewood College::Edgewood College                                                
::EFA::EFA                                                                          
::Elizabethtown College::Elizabethtown College                                      
::Elkins College::Elkins College                                                    
::Elmhurst College::Elmhurst College                                                
::Elmira College::Elmira College                                                    
::Elms College::Elms College                                                        
::Emerson College::Emerson College                                                  
::Emmanuel College::Emmanuel College                                                
::Emperor::Emperor                                                                  
::Empire State College::Empire State College                                        
::Empress::Empress                                                                  
::Endicott College::Endicott College                                                
::Equatorial Guinea::Equatorial Guinea                                              
::Erskine College::Erskine College                                                  
::Eureka College::Eureka College                                                    
::Evergreen State College::Evergreen State College                                  
::Evergreen State::Evergreen State                                                  
::Faith Militant::Faith Militant                                                    
::Falls College::Falls College                                                      
::Fargo::Fargo                                                                      
::FBI::FBI                                                                          
::FCC::FCC                                                                          
::FDA::FDA                                                                          
::FDCA::FDCA                                                                        
::February::February                                                                
::Federation of::Federation of                                                      
::Fiji::Fiji                                                                        
::Finland::Finland                                                                  
::Fisher College::Fisher College                                                    
::Fitz::Fitz                                                                        
::Flagler College::Flagler College                                                  
::Florence::Florence                                                                
::Florida::Florida                                                                  
::Fort Lewis College::Fort Lewis College                                            
::Frances::Frances                                                                  
::Francis::Francis                                                                  
::Franklin College::Franklin College                                                
::Friday Harbor::Friday Harbor                                                      
::Friday::Friday                                                                    
::FTC::FTC                                                                          
::G.P.A.::G.P.A.                                                                    
::Gambia::Gambia                                                                    
::Garfield::Garfield                                                                
::GDP::GDP                                                                          
::GED::GED                                                                          
::Geneseo::Geneseo                                                                  
::Geneva College::Geneva College                                                    
::Georgetown College::Georgetown College                                            
::Georgia College::Georgia College                                                  
::Georgia::Georgia                                                                  
::Gettysburg College::Gettysburg College                                            
::God::God                                                                          
::Goddard College::Goddard College                                                  
::Goldberg::Goldberg                                                                
::Gordon College::Gordon College                                                    
::Goshen College::Goshen College                                                    
::Goucher College::Goucher College                                                  
::GPA::GPA                                                                          
::Grace College::Grace College                                                      
::Granite State College::Granite State College                                      
::Great Britain::Great Britain                                                      
::Green Mountain College::Green Mountain College                                    
::Greensboro College::Greensboro College                                            
::Greenville College::Greenville College                                            
::GRFP::GRFP                                                                        
::Grinnell College::Grinnell College                                                
::Grove City College::Grove City College                                            
::Guilford College::Guilford College                                                
::Gutenberg College::Gutenberg College                                              
::Gutenberg::Gutenberg                                                              
::Gwyn::Gwyn                                                                        
::Gwyr::Gwyr                                                                        
::H-1B visa::H-1B visa                                                              
::Hamilton College::Hamilton College                                                
::Hampden::Hampden                                                                  
::Hampshire College::Hampshire College                                              
::Hanover College::Hanover College                                                  
::Hartwick College::Hartwick College                                                
::Harvard::Harvard                                                                  
::Hastings College::Hastings College                                                
::Haverford College::Haverford College                                              
::Haverford::Haverford                                                              
::HBO::HBO                                                                          
::Hendrix College::Hendrix College                                                  
::Henry College::Henry College                                                      
::Hill College::Hill College                                                        
::Hillsdale College::Hillsdale College                                              
::Hilter::Hilter                                                                    
::Hiram College::Hiram College                                                      
::HLM::HLM                                                                          
::Holyoke College::Holyoke College                                                  
::Honors College::Honors College                                                    
::Hood College::Hood College                                                        
::Hope College::Hope College                                                        
::Houghton College::Houghton College                                                
::HR::HR                                                                            
::HSD::HSD                                                                          
::Huma::Huma                                                                        
::Hungarian::Hungarian                                                              
::Huntingdon College::Huntingdon College                                            
::Ida College::Ida College                                                          
::Illinois College::Illinois College                                                
::Incarnate Word::Incarnate Word                                                    
::Indian::Indian                                                                    
::Institute of Integral Studies::Institute of Integral Studies                      
::Institute of Technology::Institute of Technology                                  
::Intermont College::Intermont College                                              
::International College::International College                                      
::Iowa::Iowa                                                                        
::Ipanema::Ipanema                                                                  
::IQ::IQ                                                                            
::IQR::IQR                                                                          
::IRB::IRB                                                                          
::Irish::Irish                                                                      
::IRS::IRS                                                                          
::IRT::IRT                                                                          
::Ithaca College::Ithaca College                                                    
::Ithaca::Ithaca                                                                    
::Ivy League::Ivy League                                                            
::Jamestown College::Jamestown College                                              
::Janet::Janet                                                                      
::January::January                                                                  
::Jason::Jason                                                                      
::Jeff::Jeff                                                                        
::Jefferson College::Jefferson College                                              
::Jeffery::Jeffery                                                                  
::Jeffrey::Jeffrey                                                                  
::Jennifer::Jennifer                                                                
::Jeremy::Jeremy                                                                    
::Jesuit::Jesuit                                                                    
::Jewell College::Jewell College                                                    
::JFK::JFK                                                                          
::Joe::Joe                                                                          
::John's College::John's College                                                    
::Johns::Johns                                                                      
::Jon::Jon                                                                          
::Jong Un::Jong Un                                                                  
::Joseph's College::Joseph's College                                                
::Journal of::Journal of                                                            
::JPSP::JPSP                                                                        
::Jr.::Jr.                                                                          
::Judson College::Judson College                                                    
::Juilliard School::Juilliard School                                                
::Juilliard::Juilliard                                                              
::July::July                                                                        
::Jung::Jung                                                                        
::Juniata College::Juniata College                                                  
::Justice Department::Justice Department                                            
::Kalamazoo College::Kalamazoo College                                              
::Kennedy::Kennedy                                                                  
::Kenyon College::Kenyon College                                                    
::Keuka College::Keuka College                                                      
::Keystone College::Keystone College                                                
::King's College::King's College                                                    
::King's::King's                                                                    
::Kleenex::Kleenex                                                                  
::Knox College::Knox College                                                        
::Knox::Knox                                                                        
::Kottounios::Kottounios                                                            
::LaCour::LaCour                                                                    
::Lafayette College::Lafayette College                                              
::Lake Forest College::Lake Forest College                                          
::Lakeland College::Lakeland College                                                
::Landmark College::Landmark College                                                
::Lane College::Lane College                                                        
::Lang College::Lang College                                                        
::Lawrence College::Lawrence College                                                
::Le Moyne College::Le Moyne College                                                
::Lenin::Lenin                                                                      
::Lesley College::Lesley College                                                    
::Lew::Lew                                                                          
::LGB::LGB                                                                          
::LGBT::LGBT                                                                        
::LGBTQ::LGBTQ                                                                      
::LGBTQI::LGBTQI                                                                    
::Liechtenstein::Liechtenstein                                                      
::Likert::Likert                                                                    
::Limestone College::Limestone College                                              
::Linfield College::Linfield College                                                
::LL.B.::LL.B.                                                                      
::Lloyd College::Lloyd College                                                      
::Loras College::Loras College                                                      
::Louisiana College::Louisiana College                                              
::LR::LR                                                                            
::LSD::LSD                                                                          
::Luther College::Luther College                                                    
::Lutheran College::Lutheran College                                                
::Lycoming College::Lycoming College                                                
::Lynchburg College::Lynchburg College                                              
::Lyon College::Lyon College                                                        
::Macalester College::Macalester College                                            
::MacMurray College::MacMurray College                                              
::Macon College::Macon College                                                      
::Magnus College::Magnus College                                                    
::Manhattan College::Manhattan College                                              
::Manhattan::Manhattan                                                              
::Manhattanhenge::Manhattanhenge                                                    
::Manhattanville College::Manhattanville College                                    
::Mann-Whitney::Mann-Whitney                                                        
::MANOVA::MANOVA                                                                    
::Marchioness::Marchioness                                                          
::Marietta College::Marietta College                                                
::Marist College::Marist College                                                    
::Marlboro College::Marlboro College                                                
::Marquess::Marquess                                                                
::Marshall College::Marshall College                                                
::Marshall Islands::Marshall Islands                                                
::Marty College::Marty College                                                      
::Marxism::Marxism                                                                  
::Marxist::Marxist                                                                  
::Mary College::Mary College                                                        
::Marygrove College::Marygrove College                                              
::Maryland::Maryland                                                                
::Marymount::Marymount                                                              
::Mary-of-the-Woods College::Mary-of-the-Woods College                              
::Mary's College::Mary's College                                                    
::Maryville College::Maryville College                                              
::Massachusetts::Massachusetts                                                      
::Master's College::Master's College                                                
::Mauritania::Mauritania                                                            
::Mawr College::Mawr College                                                        
::McAdams::McAdams                                                                  
::McAfee::McAfee                                                                    
::McArdle::McArdle                                                                  
::McAvoy::McAvoy                                                                    
::McCarthyist::McCarthyist                                                          
::McDaniel College::McDaniel College                                                
::McKenna College::McKenna College                                                  
::McKinley::McKinley                                                                
::McKinsey::McKinsey                                                                
::McPherson College::McPherson College                                              
::Mdn::Mdn                                                                          
::Mecca::Mecca                                                                      
::Medaille College::Medaille College                                                
::Mediterranean::Mediterranean                                                      
::Melbourne::Melbourne                                                              
::Menlo College::Menlo College                                                      
::Merced::Merced                                                                    
::Mercy College::Mercy College                                                      
::Meredith College::Meredith College                                                
::Merrimack College::Merrimack College                                              
::Mesa College::Mesa College                                                        
::Messiah College::Messiah College                                                  
::Methodist College::Methodist College                                              
::Methodist::Methodist                                                              
::Mexico::Mexico                                                                    
::MFA::MFA                                                                          
::Miami::Miami                                                                      
::Michael's College::Michael's College                                              
::Micronesia::Micronesia                                                            
::Middle Ages::Middle Ages                                                          
::Middlebury College::Middlebury College                                            
::Middlesex::Middlesex                                                              
::Middletown::Middletown                                                            
::Miles College::Miles College                                                      
::Milligan College::Milligan College                                                
::Mills College::Mills College                                                      
::Millsaps College::Millsaps College                                                
::Mississippi State::Mississippi State                                              
::Mississippian::Mississippian                                                      
::Missourian::Missourian                                                            
::Mitchell College::Mitchell College                                                
::Mizzou::Mizzou                                                                    
::MLA::MLA                                                                          
::MLE::MLE                                                                          
::MLM::MLM                                                                          
::Moldova::Moldova                                                                  
::Monday::Monday                                                                    
::Monmouth College::Monmouth College                                                
::Montreat College::Montreat College                                                
::MOOC::MOOC                                                                        
::Moravian College::Moravian College                                                
::Morehouse College::Morehouse College                                              
::Morningside College::Morningside College                                          
::Morris College::Morris College                                                    
::Mount Union::Mount Union                                                          
::Mr.::Mr.                                                                          
::Mrs.::Mrs.                                                                        
::Ms.::Ms.                                                                          
::MSE::MSE                                                                          
::Mudd College::Mudd College                                                        
::Muhlenberg College::Muhlenberg College                                            
::Muhlenberg::Muhlenberg                                                            
::Munichingi::Munichingi                                                            
::NAACP::NAACP                                                                      
::Nashville::Nashville                                                              
::Nazi::Nazi                                                                        
::NCME::NCME                                                                        
::Neolithic::Neolithic                                                              
::Nevada College::Nevada College                                                    
::New England College::New England College                                          
::New Guinea::New Guinea                                                            
::New Hampshire::New Hampshire                                                      
::New Haven::New Haven                                                              
::New Jersey::New Jersey                                                            
::New Mexico::New Mexico                                                            
::New Orleans::New Orleans                                                          
::New Oxford::New Oxford                                                            
::New York City::New York City                                                      
::New York Times::New York Times                                                    
::New York::New York                                                                
::New Yorker::New Yorker                                                            
::New Zealand::New Zealand                                                          
::Newberry College::Newberry College                                                
::Newfoundland::Newfoundland                                                        
::Niger::Niger                                                                      
::Norbert College::Norbert College                                                  
::Norco College::Norco College                                                      
::North Central College::North Central College                                      
::Northeast Catholic College::Northeast Catholic College                            
::Northern Ireland::Northern Ireland                                                
::Northland College::Northland College                                              
::Northwestern College::Northwestern College                                        
::Northwestern::Northwestern                                                        
::Notre Dame::Notre Dame                                                            
::November::November                                                                
::NSFW::NSFW                                                                        
::Nyack College::Nyack College                                                      
::NYU::NYU                                                                          
::Oberlin College::Oberlin College                                                  
::Oberlin::Oberlin                                                                  
::Occidental College::Occidental College                                            
::Occidental::Occidental                                                            
::October::October                                                                  
::Ohio::Ohio                                                                        
::Olaf College::Olaf College                                                        
::Olive College::Olive College                                                      
::Olivet College::Olivet College                                                    
::Olympic Games::Olympic Games                                                      
::Orange-Nassau::Orange-Nassau                                                      
::Oriel College::Oriel College                                                      
::Otterbein College::Otterbein College                                              
::Oxford Uni::Oxford Uni                                                            
::Oxford::Oxford                                                                    
::Ozarks::Ozarks                                                                    
::Pacific College::Pacific College                                                  
::PDF::PDF                                                                          
::Peabody::Peabody                                                                  
::Peace College::Peace College                                                      
::Penn State::Penn State                                                            
::Pennsylvania::Pennsylvania                                                        
::Penrose::Penrose                                                                  
::Pensacola::Pensacola                                                              
::Peru::Peru                                                                        
::Petersburg::Petersburg                                                            
::Peterson::Peterson                                                                
::Petry::Petry                                                                      
::Ph.D::Ph.D                                                                        
::PhD::PhD                                                                          
::Piedmont College::Piedmont College                                                
::Pine Manor College::Pine Manor College                                            
::Pitzer College::Pitzer College                                                    
::Plantagenet::Plantagenet                                                          
::Plato::Plato                                                                      
::Plattsburgh::Plattsburgh                                                          
::Polynesian::Polynesian                                                            
::Pomona College::Pomona College                                                    
::Presbyterian College::Presbyterian College                                        
::Presbyterian::Presbyterian                                                        
::Prescott College::Prescott College                                                
::Princess::Princess                                                                
::Principia College::Principia College                                              
::Providence College::Providence College                                            
::PS1::PS1                                                                          
::PS2::PS2                                                                          
::PS3::PS3                                                                          
::PsyD::PsyD                                                                        
::Ptolemy::Ptolemy                                                                  
::Puget Sound::Puget Sound                                                          
::Pyongyang::Pyongyang                                                              
::Quaker::Quaker                                                                    
::R1::R1                                                                            
::R2::R2                                                                            
::R3::R3                                                                            
::Ralston College::Ralston College                                                  
::Ramapo College::Ramapo College                                                    
::Randolph College::Randolph College                                                
::Reed College::Reed College                                                        
::Reese::Reese                                                                      
::Regis College::Regis College                                                      
::Reno::Reno                                                                        
::Rensselaer::Rensselaer                                                            
::Rhaegar::Rhaegar                                                                  
::Rhodes College::Rhodes College                                                    
::Rhodes scholar::Rhodes scholar                                                    
::Richardson::Richardson                                                            
::Rico::Rico                                                                        
::Ripon College::Ripon College                                                      
::RMSEA::RMSEA                                                                      
::Roanoke College::Roanoke College                                                  
::Rochester College::Rochester College                                              
::Rocky Mountain College::Rocky Mountain College                                    
::Rodgers::Rodgers                                                                  
::Rollins College::Rollins College                                                  
::Rome::Rome                                                                        
::Rosemont College::Rosemont College                                                
::Rust College::Rust College                                                        
::Sa::Sa                                                                            
::Sacramento::Sacramento                                                            
::Saint Kitts::Saint Kitts                                                          
::Salem College::Salem College                                                      
::San Diego::San Diego                                                              
::Santa Barbara::Santa Barbara                                                      
::Santa Cruz::Santa Cruz                                                            
::SAS::SAS                                                                          
::Satan::Satan                                                                      
::Saturdays::Saturdays                                                              
::Sawyer College::Sawyer College                                                    
::Scott College::Scott College                                                      
::Scottish::Scottish                                                                
::Scottsdale::Scottsdale                                                            
::Scranton::Scranton                                                                
::Scripps College::Scripps College                                                  
::SD::SD                                                                            
::Seaworth::Seaworth                                                                
::SEIU::SEIU                                                                        
::Selma::Selma                                                                      
::SEM::SEM                                                                          
::September::September                                                              
::SES::SES                                                                          
::Sessions College::Sessions College                                                
::Sewanee::Sewanee                                                                  
::Shaefer::Shaefer                                                                  
::Shimer College::Shimer College                                                    
::Siena College::Siena College                                                      
::Silver Lake College::Silver Lake College                                          
::Simmons College::Simmons College                                                  
::Simpson College::Simpson College                                                  
::Sioux Falls::Sioux Falls                                                          
::Skidmore College::Skidmore College                                                
::Skidmore::Skidmore                                                                
::SMEP::SMEP                                                                        
::Southern College::Southern College                                                
::Southern Vermont College::Southern Vermont College                                
::Spelman College::Spelman College                                                  
::SPQR::SPQR                                                                        
::Spring Hill College::Spring Hill College                                          
::SPSP::SPSP                                                                        
::SPSS::SPSS                                                                        
::Stalin::Stalin                                                                    
::Stanford::Stanford                                                                
::State College::State College                                                      
::State Department::State Department                                                
::State of::State of                                                                
::Stephens College::Stephens College                                                
::Sterling College::Sterling College                                                
::Stillman College::Stillman College                                                
::Stockton College::Stockton College                                                
::Stonehill College::Stonehill College                                              
::Styrofoam::Styrofoam                                                              
::Sunday::Sunday                                                                    
::SUNY::SUNY                                                                        
::Swarthmore College::Swarthmore College                                            
::Swaziland::Swaziland                                                              
::Sweet Briar College::Sweet Briar College                                          
::Sydney College::Sydney College                                                    
::Talladega College::Talladega College                                              
::Teachers College::Teachers College                                                
::Technical College::Technical College                                              
::Texan::Texan                                                                      
::Texas::Texas                                                                      
::the Civil War::the Civil War                                                      
::Thiel College::Thiel College                                                      
::Thomas::Thomas                                                                    
::Thursday::Thursday                                                                
::Torah::Torah                                                                      
::Tories::Tories                                                                    
::Tougaloo College::Tougaloo College                                                
::Trinity Christian College::Trinity Christian College                              
::Trinity College::Trinity College                                                  
::Tuesday::Tuesday                                                                  
::TV::TV                                                                            
::U.S.::U.S.                                                                        
::UBC::UBC                                                                          
::UCLA::UCLA                                                                        
::UIUC::UIUC                                                                        
::UK::UK                                                                            
::Union City::Union City                                                            
::Union College::Union College                                                      
::Union Institute::Union Institute                                                  
::United Arab Emirates::United Arab Emirates                                        
::United Arab::United Arab                                                          
::United Kingdom of::United Kingdom of                                              
::United Kingdom::United Kingdom                                                    
::United Nations::United Nations                                                    
::United States::United States                                                      
::Unity College::Unity College                                                      
::University of Art and Design::University of Art and Design                        
::University of Arts and Sciences::University of Arts and Sciences                  
::University of Great Falls::University of Great Falls                              
::University of Phoenix::University of Phoenix                                      
::University of Science and Arts::University of Science and Arts                    
::University of the South::University of the South                                  
::University Park::University Park                                                  
::Ursinus College::Ursinus College                                                  
::US Army::US Army                                                                  
::US Navy::US Navy                                                                  
::USA::USA                                                                          
::USSR::USSR                                                                        
::Utah::Utah                                                                        
::Valley College::Valley College                                                    
::Vanity Fair::Vanity Fair                                                          
::Vassar College::Vassar College                                                    
::Vatican::Vatican                                                                  
::Viking::Viking                                                                    
::Vincent College::Vincent College                                                  
::Virginia::Virginia                                                                
::Virginia's::Virginia's                                                            
::Viscountess::Viscountess                                                          
::vitamin B::vitamin B                                                              
::vitamin C::vitamin C                                                              
::vitamin D::vitamin D                                                              
::VSA::VSA                                                                          
::Wabash College::Wabash College                                                    
::Wagner College::Wagner College                                                    
::Waldorf College::Waldorf College                                                  
::Walmart::Walmart                                                                  
::Warner::Warner                                                                    
::Wartburg College::Wartburg College                                                
::Washington College::Washington College                                            
::Washington Post::Washington Post                                                  
::Washington::Washington                                                            
::Wednesday::Wednesday                                                              
::Wellesley College::Wellesley College                                              
::Wells College::Wells College                                                      
::Wesleyan College::Wesleyan College                                                
::Westminster College::Westminster College                                          
::Westmont College::Westmont College                                                
::Wheaton College::Wheaton College                                                  
::Whitehill::Whitehill                                                              
::Whitman College::Whitman College                                                  
::Whittier College::Whittier College                                                
::Williams College::Williams College                                                
::Wilmington College::Wilmington College                                            
::Wilson College::Wilson College                                                    
::Wofford College::Wofford College                                                  
::Wozniak::Wozniak                                                                  
::WTF::WTF                                                                          
::Xavier::Xavier                                                                    
::Xbox::Xbox                                                                        
::Yale::Yale                                                                        
::Yesha::Yesha                                                                      
::Yeti::Yeti                                                                        
::York College::York College                                                        
::York::York                                                                        
::Young Harris College::Young Harris College                                        
::Youville College::Youville College                                                
::Zelda::Zelda                                                                      
#IfWinNotActive
;-------------------------------------------------------------------------------
;  Short Hand
;-------------------------------------------------------------------------------

; Shorthand
;; Generic
:*:w/::with
::b/c::because

;; Personalized Shorthand
:*:@@g::s.mason.garrison@gmail.com
:*:@@v::sarah.m.garrison@vanderbilt.edu

; Email Expander
:*:@ao::@aol.com
:*:@at::@att.net
:*:@co::@comcast.net
:*:@em::@email.com
:*:@fa::@facebook.com
:*:@ga::@games.com
:*:@gma::@gmail.com
:*:@gmx::@gmx.com
:*:@google.::@google.com
:*:@googlem::@googlemail.com
:*:@ho::@hotmail
:*:@hush.::@hush.com
:*:@hushm::hushmail.com
:*:@mac::@mac.com
:*:@mai::@mail.com
:*:@me::@me.com
:*:@ms::@msn.com
:*:@sb::@sbcglobal.net
:*:@va::@vanderbilt.edu
:*:@ve::@verizon.net
:*:@ya::@yahoo.com

; Math expander
::(/)::
:*:_alpha::a
:*:_Alpha::?
:*:_beta::�
:*:_Beta::?
:*:_gamma::?
:*:_Gamma::G
:*:_delta::d
:*:_Delta::?
:*:_epsilon::e
:*:_Epsilon::?
:*:_zeta_::?
:*:_Zeta::?
:*:_eta::?
:*:_Eta::?
:*:_theta::?
:*:_Theta::T
:*:_iota::?
:*:_Iota::?
:*:_kappa::?
:*:_Kappa::?
:*:_lambda::?
:*:_Lambda::?
:*:_mu::�
:*:_Mu::?
:*:_nu::?
:*:_Nu::?
:*:_xi::?
:*:_Xi::?
:*:_omicron::?
:*:_Omicron::?
:*:_pi::p
:*:_Pi::?
:*:_rho::?
:*:_Rho::?
:*:_sigma::s
:*:_Sigma::S
:*:_tau::t
:*:_Tau::?
:*:_upsilon::?
:*:_Upsilon::?
:*:_phi::f
:*:_Phi::F
:*:_chi::?
:*:_Chi::?
:*:_psi::?
:*:_Psi::?
:*:_omega::?
:*:_Omega::O
;------------------------------------------------------------------------------
; Common Misspellings - the main list
;------------------------------------------------------------------------------
