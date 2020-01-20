# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users 

user1 = User.create!(first_name: "Cindy", last_name: "Tong", email: "tongcindyy@gmail.com", over_age_13: true, password: '111111')

user2 = User.create!(first_name: "Luke", last_name: "Skywalker", email: "user2@whenworking.com", over_age_13: true, password: '111111')

user3 = User.create!(first_name: "Harry", last_name: "Styles", email: "user3@whenworking.com", over_age_13: true, password: '111111')

user4 = User.create!(first_name: "Mark", last_name: "Ruffalo", email: "user4@whenworking.com", over_age_13: true, password: '111111')

user5 = User.create!(first_name: "Alice", last_name: "Smith", email: "user5@whenworking.com", over_age_13: true, password: '111111')


## Coaches 
coach1 = Coach.create!(first_name: 'Sarah', last_name: 'Lee', email: "coach1@whenworking.com", password: '111111', bio: "Sarah has coached 1000+ professionals in 30+ industries. Originally assisting students from college-to-career, she now helps various tech startups and has assisted hundreds of professionals in tech.", degree: "Certified Professional Resume Writer (CPRW), Professional Association of Resume Writers and Career Coaches (PARW/CC)", img_url: 'coach1URL')

coach2 = Coach.create!(first_name: 'Rebecca', last_name: 'Yel', email: "coach2@whenworking.com", password: '111111', bio: "Rebecca is a nationally recognized career and life coach, speaker and author who empowers individuals to make lasting professional and personal changes aligned with their true passions and talents while fulfilling their role in the world at large. With a holistic and personal growth-oriented approach, she has helped hundreds of men and women over the past decade improve their job performance, enter or re-enter the job force, change careers, better manage their time and stress, and live happier, more meaningful, balanced lives.", degree: "MBA; Master of Science in Student Affairs in Higher Education; NACE Career Coaching Intensive", img_url: 'coach2URL')


coach3 = Coach.create!(first_name: 'Chloe', last_name: 'Finn', email: "coach3@whenworking.com", password: '111111', bio: "Chloe is an experienced career development instructor, employer relations professional, and training developer. She has contributed to the careers of over 1000+ young professionals by evoking a coaching philosophy centered on relationship building and storytelling. ", degree: "Coaches Training Institute Certified, International Coach Federation (ICF) Member", img_url: 'coach3URL')


coach4 = Coach.create!(first_name: 'Jason', last_name: 'Ryder', email: "coach4@whenworking.com", password: '111111', bio: "Jason is an executive career coach and vet of Microsoft Corporation where he led product management and marketing teams for various global software products. As a coach, Jason has helped countless clients, including management consultants, technology startup executives, and Fortune 500 company leaders unlock higher performance and build careers they can be proud of.", degree: "Associate Certified Coach - International Coaching Federation, Myers-Briggs Type Instrument Certified", img_url: 'coach4URL')


coach5 = Coach.create!(first_name: 'Michael', last_name: 'Bolt', email: "coach5@whenworking.com", password: '111111', bio: "Michael knows that when it comes to advancing your career, you are so much more than your last job title. Drawing on over a decade of Brand Marketing and Product Development experience with Tech Startups and Fortune 500 companies, Michael helps you refine your story and stand out from the crowd. His specialty is helping you dig deep and discover the unique set of skills that will set you apart from the crowd and find your dream job. Get unstuck today!", degree: "International Coach Federation (ICF) Accreditation, The Coaches Training Institute (CTI) Certified Professional Co-Active Coach, General Assembly Product Management Certification", img_url: 'coach5URL')

coach6 = Coach.create!(first_name: 'Andrew', last_name: 'Garvy', email: "coach6@whenworking.com", password: '111111', bio: "Andrew has coached and led emerging data scientists and web developers at Hack Reactor and Galvanize, helping them achieve over a 90% hiring rate. As an Instructional Coach, Andrew has partnered with subject matter experts to develop top-notch learning experiences for immersive learning students in web development and data science. He is uniquely equipped to coach “the next generation of tech” towards successful outcomes. He understands what it takes to get hired in the field and is very familiar with the hiring process. ", degree: "Member of International Coach Federation, ACC, Master of Divinity", img_url: 'coach6URL')


# Qhat do you need your career coach to help you with? 
topics = [
    'Interview prep', 
    'Find a new job',
    'Grow in current role',
    'Change careers',
    'Improve leadership skills',
    'Improve networking skills',
    'Create healthier work-life balance',
    'Create career roadmap',
    'Return to work after an absence'
]

# Where are you in your career? 
stages = [
    "In school",
    "Recent graduate",
    "Early career",
    "Mid career",
    "Late career" 
]

# What are your goals in seeking a career coach? Please share anything the coch should know.  

# Coaches can specialize in:
specialties = [
    "Resume writing",
    "Executive coach",
    "Life coach",
    "Public speaking",
    "Interview development",
    "Interview coaching",
    "Startups",
    "New Managers", 
    "Tech", 
    "Women", 
    "Education", 
    "International Job Seekers",
    "Relocating",
    "Confidence Coaching",
    "Remote Job Seekers",
    "Non-Profit"
]