namespace :jackassets do
  namespace :update do

    desc "Copies JackAssets the public directory"
    task :assets
      ["images", "stylesheets","javascripts"].each do |asset|
        src_dir = File.join(File.dirname(__FILE__), '..', asset)
        dest_dir = File.join(RAILS_ROOT, 'public')
        FileUtils.cp_r(src_dir, dest_dir)      
      end      
  end
  
	namespace :install do
		desc "Installs the JackAssets to public"
		task :assets do
			Rake::Task['jackassets:update:assets'].invoke
		end
	end
  
end
