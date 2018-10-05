namespace :import do

  desc "Import 'Unidades Básicas de Saúde' (UBS) from csv"
  task basic_health_units: :environment do
    BasicHealthUnit.transaction do
      ImportUbsCsvService.run
    end
  end
end
