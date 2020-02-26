project1 = Project.new(
  category: "Marketing",
  description: "Invitation pour un petit déjeuner professionel via mailing & Emailing",
  client: "2FPCO",
  priority: 1,
  date: Date.new(2013, 8, 20)
)

filepaths = [
  'app/assets/images/Brabra/mailing/mailing_1.jpg',
  'app/assets/images/Brabra/mailing/mailing_2.jpg'
]

filepaths.each do |filepath|
  project1.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project1.category}#{project1.client}"
project1.save!
