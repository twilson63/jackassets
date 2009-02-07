puts "Copying Javascript Files"

["images", "stylesheets","javascripts"].each do |asset|
  src_dir = File.join(File.dirname(__FILE__), asset)
  dest_dir = File.join(RAILS_ROOT, 'public')
  FileUtils.cp_r(src_dir, dest_dir)      
end

puts "Files copied - Installation complete!"