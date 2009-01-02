namespace :pretty_flash do
  desc "Copies assets to proper application directories"
  task :install do
    ASSETS = File.join(File.dirname(__FILE__), '..', 'assets')
    Dir.glob("#{ASSETS}/*").each do |folder|
      folder_name = folder.gsub(/\/.+\//, '')
      destination = File.join(Rails.public_path, folder_name)

      FileUtils.mkpath(destination) unless File.directory?(destination)
      
      Dir[File.join(folder, '/*')].select { |a| File.file?(a) }.each do |asset|
        file_to_copy = File.join(destination, '/', File.basename(asset))
        puts " - copying %s to %s" % [File.basename(asset), destination.gsub(Rails.root, '')]
        FileUtils.cp asset, destination
      end
    end
    
    puts " - done."
  end
end