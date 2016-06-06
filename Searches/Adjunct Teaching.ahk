;----- IES list of accredited colleges -- http://nces.ed.gov/collegenavigator/?s=TN

;-----  Nashville (Tried to limit within an hour drive
^n::
	; Aquinas College (9 minutes)
run http://www.aquinascollege.edu/administration/career-opportunities/
	
	; American Baptist College
		; Religious Studies/ Bible College
		
	; Austin Peay State University
run https://apsu.peopleadmin.com/postings/search?query=&query_v0_posted_at_date=&314=&query_position_type_id=2&commit=Search
		
	; Belmont University (10 minutes)
run https://jobs.belmont.edu/postings/search?;query=&query_v0_posted_at_date=&query_organizational_tier_3_id=any&1329=6&commit=Search
		
	; Bethel (Satellite campus 6 mins)
run http://www.bethelu.edu/about/human_resources/employment/

	; Columbia State Community College
run https://jobs.tbr.edu/postings/search?utf8=%E2%9C%93&query=&query_v0_posted_at_date=&435=&query_organizational_tier_3_id=any&642=3&225=&commit=Search

	; Cumberland (41 mins)
run http://www.cumberland.edu/jobs

	; Fisk (7 mins)
run http://www.fisk.edu/about/administration/office-of-human-resources/employment-opportunities-at-fisk

	; Lincoln College of Technology-Nashville
		; automotive training
		
	; Lipscomb (16 minutes)
run https://secure.lipscomb.edu/hr/faculty

	; Middle T State (61 minutes)
run https://mtsujobs.mtsu.edu/postings/search?;query=&query_v0_posted_at_date=&query_position_type_id=2&commit=Search

	; Nashville Community College (13 mins)
run http://www.nscc.edu/jobs/jobs-listings/c/faculty/

	; New College Franklin
		; one degree in "moral philosophy"; very religious 
		
	; Meharry Medical College (6 minutes)
run https://mmc-openhire.silkroad.com/epostings/index.cfm?fuseaction=app.jobsearch

	; Remington College
		; Seems very DeVry University
		
	; Tennessee College of Applied Technology - Murfreesboro
run http://www.tcatmurfreesboro.edu/employment-opportunities-tcat-murfreesboro

	; Tennessee College of Applied Technology - Nashville
run http://www.tcatnashville.edu/tcat-nashville-employment-opportunities

	; Tennessee State University 
run https://jobs.tnstate.edu/applicants/jsp/shared/frameset/Frameset.jsp?time=1459567103247

	; Tennessee Technological University
run https://jobs.tntech.edu/postings/search?utf8=%E2%9C%93&query=&query_v0_posted_at_date=&query_position_type_id=3&435=&query_organizational_tier_3_id=any&commit=Search

	; Trevecca (12 mins)
run http://www.trevecca.edu/offices-services/current-job-opportunities

	; Volunteer State Community College
run https://jobs.tbr.edu/postings/search?;query=&query_v0_posted_at_date=&225=&query_organizational_tier_3_id=any&435=&642=14&commit=Search

	; Welch College
		; religious college

return

;----- Rochester
^r::
	; Cayuga County Community College
run http://www.cayuga-cc.edu/about/human-resources/

	; Finger Lakes Community College
run http://www.flcc.edu/jobs/staff.cfm

	; Genesee Community College
run https://genesee.interviewexchange.com/static/clients/374GCM1/index.jsp

	; Hobart William Smith Colleges
run http://www.hws.edu/offices/hr/employment/Faculty.aspx

	; Keuka College
run https://keuka.peopleadmin.com/postings/search?utf8=%E2%9C%93&query=&query_v0_posted_at_date=&481=1&commit=Search

	; Monroe Community College
run https://jobs.monroecc.edu/postings/search

	; Nazareth College
run https://www2.naz.edu/human-resources/employment-opportunities/faculty/

	; Roberts Wesleyan College
run https://www.roberts.edu/employment.aspx

	; Rochester Institute of Technology
run https://sjobs.brassring.com/TGWebHost/searchresults.aspx?SID=^g5Wt1QMApg_slp_rhc_ncMsYly_slp_rhc_A82EKfOJ3HXdaudYd0wEPumcRXhwXxzA2zwzPTj_slp_rhc_9nQGk

	; Saint John Fisher College
run https://jobs.sjfc.edu/applicants/jsp/shared/frameset/Frameset.jsp?time=1459571283941
	
	; SUNY College at Brockport
run https://www.brockportrecruit.org/applicants/jsp/shared/search/SearchResults_css.jsp

	; SUNY College at Geneseo
run https://jobs.geneseo.edu/postings/search
	
	; SUNY College at Oswego
run https://oswego.interviewexchange.com/static/clients/313OSM1/index.jsp
	
	; University of Rochester
run https://www.urmc.rochester.edu/smd/academic-affairs/faculty-job-openings.cfm
run https://ps.its.rochester.edu/psp/PSApplyOnline/EMPLOYEE/HRMS/c/HRS_HRAM.HRS_APP_SCHJOB.GBL?Page=HRS_APP_SCHJOB&Action=U&FOCUS=Applicant&SiteId=1

	; Wells College
run https://www.wells.edu/employment
retun
