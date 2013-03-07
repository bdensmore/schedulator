namespace :erb do
	namespace :to do
		task :haml do
			files = `find . -name *.html.erb`
			files.each_line do |file|
				file.strip!
				puts "starting task on #{file}"
				`bundle exec html2haml #{file} | cat > #{file.gsub(/\.erb$/, ".haml")}`
				`rm "#{file}"`
			end
		end
	end
end