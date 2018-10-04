namespace :import do

  desc "Import 'Unidades Básicas de Saúde' (UBS) from csv"
  task basic_health_units: :environment do
    ImportUbsCsvService.run
  end
end
