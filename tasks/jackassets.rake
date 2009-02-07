namespace :jackassets do
  namespace :update do

    desc "Copies Jack Assets the public directory"
    task :assets
      ["images", "stylesheets","javascripts"].each do |asset|
        src_dir = File.join(File.dirname(__FILE__), '..', asset)
        dest_dir = File.join(RAILS_ROOT, 'public', asset)
        FileUtils.cp_r(src_dir, dest_dir)      
      end      
  end
  
	namespace :install do
		desc "Installs the jQuery and jRails javascripts to public/javascripts"
		task :assets do
			Rake::Task['jrails:update:assets'].invoke
		end
	end
  
end
