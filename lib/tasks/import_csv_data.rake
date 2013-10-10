namespace :csvimport do

  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = 'data/shareholders.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Shareholder.create!({
          :uid => row[0],
          :name => row[1],
          :shares => row[2]
        }
      )

    end

  end

end