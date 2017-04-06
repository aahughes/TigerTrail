#Courses: Subject and number (IST 110), name (Information, People and Technology), building (IST), room (113), Instructor, semester (Spring 2017), section (eg 001), status (closed,open, or waitlist) days & times, credits



#Semester Campus Subject CourseNumber Section Name Days&Times Building Room Instructor Status Credits
courses = Course.create!([
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @IST.id, course_number: '110', section: '001', name:'Information, People and Technology', building_id: @ISTBldg.id, room_number: '113', instructor_id: @JKropczynski.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @IST.id, course_number: '110', section: '002', name:'Information, People and Technology', building_id: @ISTBldg.id, room_number: '113', instructor_id: @AMurphy.id, status_id: @closed.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @IST.id, course_number: '110', section: '003', name:'Information, People and Technology', building_id: @ISTBldg.id, room_number: '210', instructor_id: @AGarbrick.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @IST.id, course_number: '140', section: '001', name:'Introduction to Application Development', building_id: @ISTBldg.id, room_number: '208', instructor_id: @SHaynes.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @KINES.id, course_number: '83', section: '001', name:'Exercise for Stress Management', building_id: @ISTBldg.id, room_number: '203', instructor_id: @MDuffey.id, status_id: @open.id, credits: 1.5},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @KINES.id, course_number: '485', section: '001', name:'Science of Training Athletes', building_id: @Willard.id, room_number: '160', instructor_id: @SChallis.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @KINES.id, course_number: '77', section: '001', name:'Yoga 1', building_id: @White.id, room_number: '106', instructor_id: @SFrance.id, status_id: @open.id, credits: 1.5},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @KINES.id, course_number: '77A', section: '001', name:'Advanced Yoga', building_id: @White.id, room_number: '106', instructor_id: @SFrance.id, status_id: @open.id, credits: 1.5},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '100A', section: '005', name:'Effective Speech', building_id: @Thomas.id, room_number: '121', instructor_id: @EBrady.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '100A', section: '007', name:'Effective Speech', building_id: @Willard.id, room_number: '271', instructor_id: @KMarin.id, status_id: @closed.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '100A', section: '016', name:'Effective Speech', building_id: @Willard.id, room_number: '302', instructor_id: @EBrady.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '101', section: '001', name:'Introduction to Human Communication', building_id: @Osmond.id, room_number: '101', instructor_id: @DBrinker.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '201', section: '001', name:'Rhetorical Theory', building_id: @Sparks.id, room_number: '309', instructor_id: @DManthey.id, status_id: @closed.id, credits: 3},
{semester_id:@Spring.id, campus_id:@UP.id, subject_id: @CAS.id, course_number: '202', section: '001', name:'Introduction to Communication Theory', building_id: @Willard.id, room_number: '062', instructor_id: @JNussbaum.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ENGL.id, course_number: '15', section: '001', name:'Rhetoric and Composition', building_id: @BWMain.id, room_number: '205', instructor_id: @EWomack.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ENGL.id, course_number: '15', section: '002', name:'Rhetoric and Composition', building_id: @BWMain.id, room_number: '205', instructor_id: @EWomack.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ENGL.id, course_number: '50', section: '001', name:'Introduction to Creative Writing', building_id: @BWMain.id, room_number: '216', instructor_id: @TFitts.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ENGL.id, course_number: '416', section: '401', name:'Science Writing', building_id: @BWMain.id, room_number: '216', instructor_id: @EWomack.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ART.id, course_number: '20', section: '002', name:'Introduction to Drawing', building_id: @VLib.id, room_number: '112', instructor_id: @AVega.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@BW.id, subject_id:@ART.id, course_number: '50', section: '001', name:'Introduction to Painting', building_id: @VLib.id, room_number: '112', instructor_id: @AVega.id, status_id: @closed.id, credits: 3},
{semester_id:@Fall.id, campus_id:@UP.id, subject_id: @MATH.id, course_number: '110', section: '901', name:'Techniques of Calculus I', building_id: @Thomas.id, room_number: '113', instructor_id: @AMuir.id, status_id: @open.id, credits: 3},
{semester_id:@Fall.id, campus_id:@UP.id, subject_id: @MATH.id, course_number: '4', section: '902', name:'Intermediate Algebra', building_id: @Thomas.id, room_number: '222', instructor_id: @AMuir.id, status_id: @open.id, credits: 3},
{semester_id:@Fall.id, campus_id:@UP.id, subject_id: @CHEM.id, course_number: '101', section: '001', name:'Introductory Chemistry', building_id: @Forum.id, room_number: '102', instructor_id: @WCampbell.id, status_id: @open.id, credits: 3},
{semester_id:@Fall.id, campus_id:@UP.id, subject_id: @CHEM.id, course_number: '101', section: '901', name:'Introductory Chemistry', building_id: @Osmond.id, room_number: '117', instructor_id: @WCampbell.id, status_id: @open.id, credits: 3},
{semester_id:@Fall.id, campus_id:@UP.id, subject_id: @CHEM.id, course_number: '202', section: '901', name:'Fundamentals of Organic Chemistry I', building_id: @Osmond.id, room_number: '101', instructor_id: @WCampbell.id, status_id: @open.id, credits: 3},
{semester_id:@Spring.id, campus_id:@Al.id, subject_id: @BIO.id, course_number: '133', section: '001', name:'Genetics and Evolution of the Human Species', building_id: @Hawthorn.id, room_number: '254', instructor_id: @MKananen.id, status_id: @open.id, credits: 3},



])




# This is for IST110 section 1
CourseDay.create(course_id: courses[0].id, day_id: @tuesday.id, start: '9:05', end:'10:20')
CourseDay.create(course_id: courses[0].id, day_id: @thursday.id, start: '9:05', end:'10:20')
# IST110 section 2
CourseDay.create(course_id: courses[1].id, day_id: @monday.id, start: '16:00', end:'17:15')
CourseDay.create(course_id: courses[1].id, day_id: @wednesday.id, start: '16:00', end:'17:15')
#IST110 section 3
CourseDay.create(course_id: courses[2].id, day_id: @monday.id, start: '10:10', end:'11:00')
CourseDay.create(course_id: courses[2].id, day_id: @wednesday.id, start: '10:10', end:'11:00')
CourseDay.create(course_id: courses[2].id, day_id: @friday.id, start: '10:10', end:'11:00')
#IST140
CourseDay.create(course_id: courses[3].id, day_id: @tuesday.id, start: '10:35', end:'11:50')
CourseDay.create(course_id: courses[3].id, day_id: @thursday.id, start: '10:35', end:'11:50')
#KINES83
CourseDay.create(course_id: courses[4].id, day_id: @monday.id, start: '10:10', end:'11:00')
CourseDay.create(course_id: courses[4].id, day_id: @wednesday.id, start: '10:10', end:'11:00')
#KINES485
CourseDay.create(course_id: courses[5].id, day_id: @tuesday.id, start: '10:35', end:'11:50')
CourseDay.create(course_id: courses[5].id, day_id: @thursday.id, start: '10:35', end:'11:50')
#KINES77
CourseDay.create(course_id: courses[6].id, day_id: @tuesday.id, start: '9:05', end:'10:20')
CourseDay.create(course_id: courses[6].id, day_id: @thursday.id, start: '9:05', end:'10:20')
#KINES77A
CourseDay.create(course_id: courses[7].id, day_id: @tuesday.id, start: '10:35', end:'11:50')
CourseDay.create(course_id: courses[7].id, day_id: @thursday.id, start: '10:35', end:'11:50')
#CAS100A section 5 MoWeFr 9:05AM-9:55AM
CourseDay.create(course_id: courses[8].id, day_id: @monday.id, start: '9:05', end:'9:55')
CourseDay.create(course_id: courses[8].id, day_id: @wednesday.id, start: '9:05', end:'9:55')
CourseDay.create(course_id: courses[8].id, day_id: @friday.id, start: '9:05', end:'9:55')
#CAS100A section 7 MoWeFr 9:05AM-9:55AM, 
CourseDay.create(course_id: courses[9].id, day_id: @monday.id, start: '9:05', end:'9:55')
CourseDay.create(course_id: courses[9].id, day_id: @wednesday.id, start: '9:05', end:'9:55')
CourseDay.create(course_id: courses[9].id, day_id: @friday.id, start: '9:05', end:'9:55')
#CAS100A section 16 MoWeFr 12:20PM-1:10PM,
CourseDay.create(course_id: courses[10].id, day_id: @monday.id, start: '12:20', end:'13:10')
CourseDay.create(course_id: courses[10].id, day_id: @wednesday.id, start: '12:20', end:'13:10')
CourseDay.create(course_id: courses[10].id, day_id: @friday.id, start: '12:20', end:'13:10')
#CAS101 , MoWeFr 12:20PM-1:10PM
CourseDay.create(course_id: courses[11].id, day_id: @monday.id, start: '12:20', end:'13:10')
CourseDay.create(course_id: courses[11].id, day_id: @wednesday.id, start: '12:20', end:'13:10')
CourseDay.create(course_id: courses[11].id, day_id: @friday.id, start: '12:20', end:'13:10')
#CAS201  MoWeFr 11:15AM-12:05PM,
CourseDay.create(course_id: courses[12].id, day_id: @monday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[12].id, day_id: @wednesday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[12].id, day_id: @friday.id, start: '11:15', end:'12:05')
#CAS202 , MoWe 9:05AM-9:55AM
CourseDay.create(course_id: courses[13].id, day_id: @monday.id, start: '9:05', end:'9:55')
CourseDay.create(course_id: courses[13].id, day_id: @wednesday.id, start: '9:05', end:'9:55')
#ENGL15 section 1
CourseDay.create(course_id: courses[14].id, day_id: @monday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[14].id, day_id: @wednesday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[14].id, day_id: @friday.id, start: '11:15', end:'12:05')
#ENGL15 section 2
CourseDay.create(course_id: courses[15].id, day_id: @monday.id, start: '13:25', end:'14:15')
CourseDay.create(course_id: courses[15].id, day_id: @wednesday.id, start: '13:25', end:'14:15')
CourseDay.create(course_id: courses[15].id, day_id: @friday.id, start: '13:25', end:'14:15')
#ENGL50
CourseDay.create(course_id: courses[16].id, day_id: @tuesday.id, start: '15:05', end:'16:20')
CourseDay.create(course_id: courses[16].id, day_id: @thursday.id, start: '15:05', end:'16:20')
#ENGL416
CourseDay.create(course_id: courses[17].id, day_id: @wednesday.id, start: '14:30', end:'17:30')
#ART20 sec 2
CourseDay.create(course_id: courses[18].id, day_id: @tuesday.id, start: '13:25', end:'15:55')
CourseDay.create(course_id: courses[18].id, day_id: @thursday.id, start: '13:25', end:'15:55')
#ART50 sec 1
CourseDay.create(course_id: courses[19].id, day_id: @tuesday.id, start: '9:05', end:'11:35')
CourseDay.create(course_id: courses[19].id, day_id: @thursday.id, start: '9:05', end:'11:35')
#MATH110 sec 901
CourseDay.create(course_id: courses[20].id, day_id: @monday.id, start: '18:00', end:'19:55')
CourseDay.create(course_id: courses[20].id, day_id: @wednesday.id, start: '18:00', end:'19:55')
#MATH4 sec 902
CourseDay.create(course_id: courses[21].id, day_id: @tuesday.id, start: '18:00', end:'21:00')
#CHEM101 sec 001
CourseDay.create(course_id: courses[22].id, day_id: @monday.id, start: '12:20', end:'13:10')
CourseDay.create(course_id: courses[22].id, day_id: @wednesday.id, start: '12:20', end:'13:10')
#CHEM101 sec 901
CourseDay.create(course_id: courses[23].id, day_id: @tuesday.id, start: '18:00', end:'21:00')
#CHEM202 sec 901
CourseDay.create(course_id: courses[24].id, day_id: @monday.id, start: '18:00', end:'19:15')
CourseDay.create(course_id: courses[24].id, day_id: @wednesday.id, start: '18:00', end:'19:15')
#BIOL133
CourseDay.create(course_id: courses[25].id, day_id: @monday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[25].id, day_id: @wednesday.id, start: '11:15', end:'12:05')
CourseDay.create(course_id: courses[25].id, day_id: @friday.id, start: '11:15', end:'12:05')
