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
GroupAdd, GroupExclude, ahk_exe rstudio.exe
;GroupAdd, GroupName, ahk_class WorkerW

;------------------------------------------------------------------------------
; Fix for -ign instead of -ing.
; Words to exclude: (could probably do this by return without rewrite)
; From: http://www.morewords.com/e nds-with/gn/
;------------------------------------------------------------------------------
#Hotstring B0 ; Turns off automatic backspacing for the following hotstrings.
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

return ; This makes the above hotstrings do nothing so that they override the ign->ing rule below.

#Hotstring B ; Turn back on automatic backspacing for all subsequent hotstrings.
:?:ign::ing

;------------------------------------------------------------------------------
; Word endings
;------------------------------------------------------------------------------
:?:bilites::bilities
:?:bilties::bilities
:?:blities::bilities
:?:bilty::bility
:?:blity::bility
:?:, btu::, but ; Not just replacing "btu", as that is a unit of heat.
:?:; btu::; but
:?:n;t::n't
:?:n`t::n't
:?:;ll::'ll
:?:`ll::'ll
:?:;re::'re
:?:`re::'re
:?:`ve::'ve
:?:;ve::'ve
:?:`s::'s
:?:s`::s'
::sice::since ; Must precede the following line!
:?:sice::sive
:?:t eh:: the
:?:t hem:: them

;------------------------------------------------------------------------------
; Word beginnings
;------------------------------------------------------------------------------
::htp:::http:
    ::http:\\::http://
::httpL::http:
    ::herf::href
:*:htp:::http:
    :*:http:\\::http://
:*:httpL::http:
    :*:herf::href
    :*:abondon::abandon
    :*:abreviat::abbreviat
    :*:accomadat::accommodat
    :*:accomodat::accommodat
    :*:acheiv::achiev
    :*:achievment::achievement
    :*:acquaintence::acquaintance
    :*:adquir::acquir
    :*:aquisition::acquisition
    :*:agravat::aggravat
    :*:allign::align
    :*:ameria::America
    :*:archaelog::archaeolog
    :*:archtyp::archetyp
    :*:archetect::architect
    :*:arguement::argument
    :*:assasin::assassin
    :*:asociat::associat
    :*:assymetr::asymmet
    :*:atempt::attempt
    :*:atribut::attribut
    :*:avaialb::availab
    :*:comision::commission
    :*:contien::conscien
    :*:critisi::critici
    :*:crticis::criticis
    :*:critiz::criticiz
    :*:desicant::desiccant
    :*:desicat::desiccat
    ::develope::develop ; Omit asterisk so that it doesn't disrupt the typing of developed/developer.
    :*:dissapoint::disappoint
    :*:divsion::division
    :*:dcument::document
    :*:embarass::embarrass
    :*:emminent::eminent
    :*:empahs::emphas
    :*:enlargment::enlargement
    :*:envirom::environm
    :*:enviorment::environment
    :*:excede::exceed
    :*:exilerat::exhilarat
    :*:extraterrestial::extraterrestrial
    :*:faciliat::facilitat
    :*:garantee::guaranteed
    :*:guerrila::guerrilla
    :*:guidlin::guidelin
    :*:girat::gyrat
    :*:harasm::harassm
    :*:immitat::imitat
    :*:imigra::immigra
    :*:impliment::implement
    :*:inlcud::includ
    :*:indenpenden::independen
    :*:indisputib::indisputab
    :*:isntall::install
    :*:insitut::institut
    :*:knwo::know
    :*:lsit::list
    :*:mountian::mountain
    :*:nmae::name
    :*:necassa::necessa
    :*:negociat::negotiat
    :*:neigbor::neighbour
    :*:noticibl::noticeabl
    :*:ocasion::occasion
    :*:occuranc::occurrence
    :*:priveledg::privileg
    :*:recie::recei
    :*:recived::received
    :*:reciver::receiver
    :*:recepient::recipient
    :*:reccomend::recommend
    :*:recquir::requir
    :*:requirment::requirement
    :*:respomd::respond
    :*:repons::respons
    :*:ressurect::resurrect
    :*:seperat::separat
    :*:sevic::servic
    :*:smoe::some
    :*:supercede::supersede
    :*:superceed::supersede
    :*:weild::wield

    ;------------------------------------------------------------------------------
    ; Word middles
    ;------------------------------------------------------------------------------
    :?*:compatab::compatib ; Covers incompat* and compat*
    :?*:catagor::categor ; Covers subcatagories and catagories.

;------------------------------------------------------------------------------
; Accented English words, from, amongst others, -- word only outside of RStudio
; http://en.wikipedia.org/wiki/List_of_English_words_with_diacritics
; I have included all the ones compatible with reasonable codepages, and placed
; those that may often not be accented either from a clash with an unaccented
; word (resume), or because the unaccented version is now common (cafe).
;------------------------------------------------------------------------------
#IfWinNotActive ahk_group GroupExclude
    ::aesop::�sop
    ::a bas::� bas
    ::a la::� la
    ::ancien regime::Ancien R�gime
    ::angstrom::�ngstr�m
    ::angstroms::�ngstr�ms
    ::anime::anim�
    ::animes::anim�s
    ::ao dai::�o d�i
    ::apertif::ap�rtif
    ::apertifs::ap�rtifs
    ::applique::appliqu�
    ::appliques::appliqu�s
    ::apres::apr�s
    ::arete::ar�te
    ::attache::attach�
    ::attaches::attach�s
    ::auto-da-fe::auto-da-f�
    ::belle epoque::belle �poque
    ::bete noire::b�te noire
    ::betise::b�tise
    ::Bjorn::Bj�rn
    ::blase::blas�
    ::boite::bo�te
    ::boutonniere::boutonni�re
    ::canape::canap�
    ::canapes::canap�s
    ::celebre::c�l�bre
    ::celebres::c�l�bres
    ::chaines::cha�n�s
    ::cinema verite::cin�ma v�rit�
    ::cinemas verite::cin�mas v�rit�
    ::cinema verites::cin�ma v�rit�s
    ::champs-elysees::Champs-�lys�es
    ::charge d'affaires::charg� d'affaires
    ::chateau::ch�teau
    ::chateaux::ch�teaux
    ::chateaus::ch�teaus
    ::cliche::clich�
    ::cliched::clich�d
    ::cliches::clich�s
    ::cloisonne::cloisonn�
    ::consomme::consomm�
    ::consommes::consomm�s
    ::communique::communiqu�
    ::communiques::communiqu�s
    ::confrere::confr�re
    ::confreres::confr�res
    ::continuum::continu�m
    ::coopt::co�pt
    ::cortege::cort�ge
    ::corteges::cort�ges
    ::coup d'etat::coup d'�tat
    ::coup d'etats::coup d'�tats
    ::coup de tat::coup d'�tat
    ::coup de tats::coup d'�tats
    ::coup de grace::coup de gr�ce
    ::creche::cr�che
    ::creches::cr�ches
    ::creme::cr�me
    ::coulee::coul�e
    ::coulees::coul�es
    ::creme brulee::cr�me br�l�e
    ::creme brulees::cr�me br�l�es
    ::creme caramel::cr�me caramel
    ::creme caramels::cr�me caramels
    ::creme de cacao::cr�me de cacao
    ::creme de menthe::cr�me de menthe
    ::crepe::cr�pe
    ::crepes::cr�pes
    ::creusa::Cre�sa
    ::crouton::cro�ton
    ::croutons::cro�tons
    ::crudites::crudit�s
    ::curacao::cura�ao
    ::dais::da�s
    ::daises::da�ses
    ::debacle::d�b�cle
    ::debacles::d�b�cles
    ::debutante::d�butante
    ::debutants::d�butants
    ::declasse::d�class�
    ::decolletage::d�colletage
    ::decollete::d�collet�
    ::decor::d�cor
    ::decors::d�cors
    ::decoupage::d�coupage
    ::degage::d�gag�
    ::deja vu::d�j� vu
    ::demode::d�mod�
    ::denoument::d�noument
    ::derailleur::d�railleur
    ::derriere::derri�re
    ::deshabille::d�shabill�
    ::detente::d�tente
    ::diamante::diamant�
    ::discotheque::discoth�que
    ::discotheques::discoth�ques
    ::divorcee::divorc�e
    ::divorcees::divorc�es
    ::doppelganger::doppelg�nger
    ::doppelgangers::doppelg�ngers
    ::eclair::�clair
    ::eclairs::�clairs
    ::eclat::�clat
    ::el nino::El Ni�o
    ::elan::�lan
    ::emigre::�migr�
    ::emigres::�migr�s
    ::entree::entr�e
    ::entrees::entr�es
    ::entrepot::entrep�t
    ::entrecote::entrec�te
    ::epee::�p�e
    ::epees::�p�es
    ::etouffee::�touff�e
    ::facade::fa�ade
    ::facades::fa�ades
    ::fete::f�te
    ::fetes::f�tes
    ::faience::fa�ence
    ::fiance::fianc�
    ::fiances::fianc�s
    ::fiancee::fianc�e
    ::fiancees::fianc�es
    ::filmjolk::filmj�lk
    ::fin de siecle::fin de si�cle
    ::flambe::flamb�
    ::flambes::flamb�s
    ::fleche::fl�che
    ::Fohn wind::F�hn wind
    ::folie a deux::folie � deux
    ::folies a deux::folies � deux
    ::fouette::fouett�
    ::frappe::frapp�
    ::frappes::frapp�s
    :?*:fraulein::fr�ulein
    :?*:fuhrer::F�hrer
    ::garcon::gar�on
    ::garcons::gar�ons
    ::gateau::g�teau
    ::gateaus::g�teaus
    ::gateaux::g�teaux
    ::gemutlichkeit::gem�tlichkeit
    ::glace::glac�
    ::glogg::gl�gg
    ::gewurztraminer::Gew�rztraminer
    ::gotterdammerung::G�tterd�mmerung
    ::grafenberg spot::Gr�fenberg spot
    ::habitue::habitu�
    ::ingenue::ing�nue
    ::jager::j�ger
    ::jalapeno::jalape�o
    ::jalapenos::jalape�os
    ::jardiniere::jardini�re
    ::krouzek::krou�ek
    ::kummel::k�mmel
    ::kaldolmar::k�ldolmar
    ::landler::l�ndler
    ::langue d'oil::langue d'o�l
    ::la nina::La Ni�a
    ::litterateur::litt�rateur
    ::lycee::lyc�e
    ::macedoine::mac�doine
    ::macrame::macram�
    ::maitre d'hotel::ma�tre d'h�tel
    ::malaguena::malague�a
    ::manana::ma�ana
    ::manege::man�ge
    ::manque::manqu�
    ::materiel::mat�riel
    ::matinee::matin�e
    ::matinees::matin�es
    ::melange::m�lange
    ::melee::m�l�e
    ::melees::m�l�es
    ::menage a trois::m�nage � trois
    ::menages a trois::m�nages � trois
    ::mesalliance::m�salliance
    ::metier::m�tier
    ::minaudiere::minaudi�re
    ::mobius strip::M�bius strip
    ::mobius strips::M�bius strips
    ::moire::moir�
    ::moireing::moir�ing
    ::moires::moir�s
    ::motley crue::M�tley Cr�e
    ::motorhead::Mot�rhead
    ::naif::na�f
    ::naifs::na�fs
    ::naive::na�ve
    ::naiver::na�ver
    ::naives::na�ves
    ::naivete::na�vet�
    ::nee::n�e
    ::negligee::neglig�e
    ::negligees::neglig�es
    ::neufchatel cheese::Neufch�tel cheese
    ::nez perce::Nez Perc�
    ::no�l::No�l
    ::no�ls::No�ls
    ::n�mero uno::n�mero uno
    ::objet trouve::objet trouv�
    ::objets trouve::objets trouv�
    ::ombre::ombr�
    ::ombres::ombr�s
    ::omerta::omert�
    ::opera bouffe::op�ra bouffe
    ::operas bouffe::op�ras bouffe
    ::opera comique::op�ra comique
    ::operas comique::op�ras comique
    ::outre::outr�
    ::papier-mache::papier-m�ch�
    ::passe::pass�
    ::piece de resistance::pi�ce de r�sistance
    ::pied-a-terre::pied-�-terre
    ::plisse::pliss�
    ::pina colada::Pi�a Colada
    ::pina coladas::Pi�a Coladas
    ::pinata::pi�ata
    ::pinatas::pi�atas
    ::pinon::pi�on
    ::pinons::pi�ons
    ::pirana::pira�a
    ::pique::piqu�
    ::piqued::piqu�d
    ::pi�::pi�
    ::plie::pli�
    ::precis::pr�cis
    ::polsa::p�lsa
    ::pret-a-porter::pr�t-�-porter
    ::protoge::prot�g�
    ::protege::prot�g�
    ::proteged::prot�g�d
    ::proteges::prot�g�s
    ::protegee::prot�g�e
    ::protegees::prot�g�es
    ::protegeed::prot�g�ed
    ::puree::pur�e
    ::pureed::pur�ed
    ::purees::pur�es
    ::Quebecois::Qu�b�cois
    ::raison d'etre::raison d'�tre
    ::recherche::recherch�
    ::reclame::r�clame
    ::r�sume::r�sum�
    ::resum�::r�sum�
    ::r�sumes::r�sum�s
    ::resum�s::r�sum�s
    ::retrousse::retrouss�
    ::risque::risqu�
    ::riviere::rivi�re
    ::roman a clef::roman � clef
    ::roue::rou�
    ::saute::saut�
    ::sauted::saut�d
    ::seance::s�ance
    ::seances::s�ances
    ::senor::se�or
    ::senors::se�ors
    ::senora::se�ora
    ::senoras::se�oras
    ::senorita::se�orita
    ::senoritas::se�oritas
    ::sinn fein::Sinn F�in
    ::smorgasbord::sm�rg�sbord
    ::smorgasbords::sm�rg�sbords
    ::smorgastarta::sm�rg�st�rta
    ::soigne::soign�
    ::soiree::soir�e
    ::soireed::soir�ed
    ::soirees::soir�es
    ::souffle::souffl�
    ::souffles::souffl�s
    ::soupcon::soup�on
    ::soupcons::soup�ons
    ::surstromming::surstr�mming
    ::tete-a-tete::t�te-�-t�te
    ::tete-a-tetes::t�te-�-t�tes
    ::touche::touch�
    ::tourtiere::tourti�re
    ::ubermensch::�bermensch
    ::ubermensches::�bermensches
    ::ventre a terre::ventre � terre
    ::vicuna::vicu�a
    ::vin rose::vin ros�
    ::vins rose::vins ros�
    ::vis a vis::vis � vis
    ::vis-a-vis::vis-�-vis
    ::voila::voil�
#IfWinNotActive

;-------------------------------------------------------------------------------
;  Capitalize dates - set to only work outside of GroupExclude
;-------------------------------------------------------------------------------

#IfWinNotActive ahk_group GroupExclude
    ;auto
    ::april::April
    ::august::August
    ::december::December
    ::february::February
    ::friday::Friday
    ::goldberg::Goldberg
    ::january::January
    ::joe::Joe
    ::july::July
    ::june::June
    ::lew::Lew
    ::lewis::Lewis
    ::michelle::Michelle
    ::monday::Monday
    ::nashville::Nashville
    ::november::November
    ::october::October
    ::peabody::Peabody
    ::rodgers::Rodgers
    ::sarah::Sarah
    ::saturday::Saturday
    ::september::September
    ::sunday::Sunday
    ::thursday::Thursday
    ::tuesday::Tuesday
    ::vanderbilt::Vanderbilt
    ::wednesday::Wednesday
#IfWinNotActive

;-------------------------------------------------------------------------------
;  Short Hand
;-------------------------------------------------------------------------------
;auto
::@@g::s.mason.garrison@gmail.com
::@@v::sarah.m.garrison@vanderbilt.edu
::@gm::@gmail.com
::@va::@vanderbilt.edu
::b/c::because
::brb::be right back
::diags::diagonals
::dnd::do not disturb
::eta::estimated time of arrival
::faq::frequently asked questions
::fyi::for your information
::hr::human resources
::idk::I don't know
::iirc::if I remember correctly
::imo::in my opinion
::tba::to be announced
::tbc::to be continued
::ttyl::talk to you later
::w/::with
::w/in::within
::w/out::without

;------------------------------------------------------------------------------
; Common Misspellings - the main list
;------------------------------------------------------------------------------

