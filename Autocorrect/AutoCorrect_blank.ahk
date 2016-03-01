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
::sice::since  ; Must precede the following line!
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
::develope::develop  ; Omit asterisk so that it doesn't disrupt the typing of developed/developer.
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
:?*:compatab::compatib  ; Covers incompat* and compat*
:?*:catagor::categor  ; Covers subcatagories and catagories.


;------------------------------------------------------------------------------
; Accented English words, from, amongst others, -- word only outside of RStudio
; http://en.wikipedia.org/wiki/List_of_English_words_with_diacritics
; I have included all the ones compatible with reasonable codepages, and placed
; those that may often not be accented either from a clash with an unaccented 
; word (resume), or because the unaccented version is now common (cafe).
;------------------------------------------------------------------------------
#IfWinNotActive ahk_group GroupExclude
::aesop::Æsop
::a bas::à bas
::a la::à la
::ancien regime::Ancien Régime
::angstrom::Ångström
::angstroms::Ångströms
::anime::animé
::animes::animés
::ao dai::ào dái
::apertif::apértif
::apertifs::apértifs
::applique::appliqué
::appliques::appliqués
::apres::après
::arete::arête
::attache::attaché
::attaches::attachés
::auto-da-fe::auto-da-fé
::belle epoque::belle époque
::bete noire::bête noire
::betise::bêtise
::Bjorn::Bjørn
::blase::blasé
::boite::boîte
::boutonniere::boutonnière
::canape::canapé
::canapes::canapés
::celebre::célèbre
::celebres::célèbres
::chaines::chaînés
::cinema verite::cinéma vérité
::cinemas verite::cinémas vérité
::cinema verites::cinéma vérités
::champs-elysees::Champs-Élysées
::charge d'affaires::chargé d'affaires
::chateau::château
::chateaux::châteaux
::chateaus::châteaus
::cliche::cliché
::cliched::clichéd
::cliches::clichés
::cloisonne::cloisonné
::consomme::consommé
::consommes::consommés
::communique::communiqué
::communiques::communiqués
::confrere::confrère
::confreres::confrères
::continuum::continuüm
::coopt::coöpt
::cortege::cortège
::corteges::cortèges
::coup d'etat::coup d'état
::coup d'etats::coup d'états
::coup de tat::coup d'état
::coup de tats::coup d'états
::coup de grace::coup de grâce
::creche::crèche
::creches::crèches
::creme::crème
::coulee::coulée
::coulees::coulées
::creme brulee::crème brûlée
::creme brulees::crème brûlées
::creme caramel::crème caramel
::creme caramels::crème caramels
::creme de cacao::crème de cacao
::creme de menthe::crème de menthe
::crepe::crêpe
::crepes::crêpes
::creusa::Creüsa
::crouton::croûton
::croutons::croûtons
::crudites::crudités
::curacao::curaçao
::dais::daïs
::daises::daïses
::debacle::débâcle
::debacles::débâcles
::debutante::débutante
::debutants::débutants
::declasse::déclassé
::decolletage::décolletage
::decollete::décolleté
::decor::décor
::decors::décors
::decoupage::découpage
::degage::dégagé
::deja vu::déjà vu
::demode::démodé
::denoument::dénoument
::derailleur::dérailleur
::derriere::derrière
::deshabille::déshabillé
::detente::détente
::diamante::diamanté
::discotheque::discothèque
::discotheques::discothèques
::divorcee::divorcée
::divorcees::divorcées
::doppelganger::doppelgänger
::doppelgangers::doppelgängers
::eclair::éclair
::eclairs::éclairs
::eclat::éclat
::el nino::El Niño
::elan::élan
::emigre::émigré
::emigres::émigrés
::entree::entrée
::entrees::entrées
::entrepot::entrepôt
::entrecote::entrecôte
::epee::épée
::epees::épées
::etouffee::étouffée
::facade::façade
::facades::façades
::fete::fête
::fetes::fêtes
::faience::faïence
::fiance::fiancé
::fiances::fiancés
::fiancee::fiancée
::fiancees::fiancées
::filmjolk::filmjölk
::fin de siecle::fin de siècle
::flambe::flambé
::flambes::flambés
::fleche::flèche
::Fohn wind::Föhn wind
::folie a deux::folie à deux
::folies a deux::folies à deux
::fouette::fouetté
::frappe::frappé
::frappes::frappés
:?*:fraulein::fräulein
:?*:fuhrer::Führer
::garcon::garçon
::garcons::garçons
::gateau::gâteau
::gateaus::gâteaus
::gateaux::gâteaux
::gemutlichkeit::gemütlichkeit
::glace::glacé
::glogg::glögg
::gewurztraminer::Gewürztraminer
::gotterdammerung::Götterdämmerung
::grafenberg spot::Gräfenberg spot
::habitue::habitué
::ingenue::ingénue
::jager::jäger
::jalapeno::jalapeño
::jalapenos::jalapeños
::jardiniere::jardinière
::krouzek::kroužek
::kummel::kümmel
::kaldolmar::kåldolmar
::landler::ländler
::langue d'oil::langue d'oïl
::la nina::La Niña
::litterateur::littérateur
::lycee::lycée
::macedoine::macédoine
::macrame::macramé
::maitre d'hotel::maître d'hôtel
::malaguena::malagueña
::manana::mañana
::manege::manège
::manque::manqué
::materiel::matériel
::matinee::matinée
::matinees::matinées
::melange::mélange
::melee::mêlée
::melees::mêlées
::menage a trois::ménage à trois
::menages a trois::ménages à trois
::mesalliance::mésalliance
::metier::métier
::minaudiere::minaudière
::mobius strip::Möbius strip
::mobius strips::Möbius strips
::moire::moiré
::moireing::moiréing
::moires::moirés
::motley crue::Mötley Crüe
::motorhead::Motörhead
::naif::naïf
::naifs::naïfs
::naive::naïve
::naiver::naïver
::naives::naïves
::naivete::naïveté
::nee::née
::negligee::negligée
::negligees::negligées
::neufchatel cheese::Neufchâtel cheese
::nez perce::Nez Percé
::noël::Noël
::noëls::Noëls
::número uno::número uno
::objet trouve::objet trouvé
::objets trouve::objets trouvé
::ombre::ombré
::ombres::ombrés
::omerta::omertà
::opera bouffe::opéra bouffe
::operas bouffe::opéras bouffe
::opera comique::opéra comique
::operas comique::opéras comique
::outre::outré
::papier-mache::papier-mâché
::passe::passé
::piece de resistance::pièce de résistance
::pied-a-terre::pied-à-terre
::plisse::plissé
::pina colada::Piña Colada
::pina coladas::Piña Coladas
::pinata::piñata
::pinatas::piñatas
::pinon::piñon
::pinons::piñons
::pirana::piraña
::pique::piqué
::piqued::piquéd
::più::più
::plie::plié
::precis::précis
::polsa::pölsa
::pret-a-porter::prêt-à-porter
::protoge::protégé
::protege::protégé
::proteged::protégéd
::proteges::protégés
::protegee::protégée
::protegees::protégées
::protegeed::protégéed
::puree::purée
::pureed::puréed
::purees::purées
::Quebecois::Québécois
::raison d'etre::raison d'être
::recherche::recherché
::reclame::réclame
::résume::résumé
::resumé::résumé
::résumes::résumés
::resumés::résumés
::retrousse::retroussé
::risque::risqué
::riviere::rivière
::roman a clef::roman à clef
::roue::roué
::saute::sauté
::sauted::sautéd
::seance::séance
::seances::séances
::senor::señor
::senors::señors
::senora::señora
::senoras::señoras
::senorita::señorita
::senoritas::señoritas
::sinn fein::Sinn Féin
::smorgasbord::smörgåsbord
::smorgasbords::smörgåsbords
::smorgastarta::smörgåstårta
::soigne::soigné
::soiree::soirée
::soireed::soiréed
::soirees::soirées
::souffle::soufflé
::souffles::soufflés
::soupcon::soupçon
::soupcons::soupçons
::surstromming::surströmming
::tete-a-tete::tête-à-tête
::tete-a-tetes::tête-à-têtes
::touche::touché
::tourtiere::tourtière
::ubermensch::Übermensch
::ubermensches::Übermensches
::ventre a terre::ventre à terre
::vicuna::vicuña
::vin rose::vin rosé
::vins rose::vins rosé
::vis a vis::vis à vis
::vis-a-vis::vis-à-vis
::voila::voilà 
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

