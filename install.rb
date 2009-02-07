puts "Copying Javascript Files"
dir = "javascripts"
["ddsmoothmenu.js", "jquery.js", "jquery.ui.js", "jquery.form.js"].each do |js_file|
	dest_file = File.join(RAILS_ROOT, "public", dir, js_file)
	src_file = File.join(File.dirname(__FILE__) , dir, js_file)
	FileUtils.cp_r(src_file, dest_file)
end

puts "Copying Image Files"
dir = "images"
["ajax-loader.gif", "bg.gif", "bluePin.png", "down.gif","indicator.gif",
  "nobody.jpg","right.gif","slider-images-handle.png","slider-images-track-left.png","slider-images-track-right.png"].each do |img_file|
	dest_file = File.join(RAILS_ROOT, "public", dir, img_file)
	src_file = File.join(File.dirname(__FILE__) , dir, img_file)
	FileUtils.cp_r(src_file, dest_file)
end

puts "Copying Stylesheet Files"
dir = "stylesheets"
["aaplication.css", "ddsmoothmenu.css", "ui.accordion.css", "ui.all.css",
  "ui.allplugins.css","ui.carousel.css","ui.core.css",
  "ui.datepicker.css","ui.dialog.css","ui.progressbar.css", "ui.resizable.css",
  "ui.slider.css","ui.tabs.css","ui.theme.css"].each do |img_file|
	dest_file = File.join(RAILS_ROOT, "public", dir, img_file)
	src_file = File.join(File.dirname(__FILE__) , dir, img_file)
	FileUtils.cp_r(src_file, dest_file)
end

puts "Coping BluePrint Files"
dir = "stylesheets"
# FileUtils.mkdir(File.join("#{RAILS_ROOT}","public","stylesheets","blueprint"))
dest_file = File.join(RAILS_ROOT, "public", dir, "blueprint")
src_file = File.join(File.dirname(__FILE__) , dir, "blueprint")
FileUtils.cp_r(src_file, dest_file)

puts "Coping JQuery Images Files"
dir = "stylesheets"
# FileUtils.mkdir(File.join("#{RAILS_ROOT}","public","stylesheets","blueprint"))
dest_file = File.join(RAILS_ROOT, "public", dir, "images")
src_file = File.join(File.dirname(__FILE__) , dir, "images")
FileUtils.cp_r(src_file, dest_file)





puts "Files copied - Installation complete!"