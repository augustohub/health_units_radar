require 'csv'

module ImportUbsCsvService
  class << self

    def run
      filename = File.join(Rails.root, 'ubs.csv')
      counter = 0

      CSV.foreach(filename, headers: true) do |row|
        ubs = BasicHealthUnit.create(name: row['nom_estab'],
                                     address: [row['dsc_endereco'], row['dsc_bairro']].join(' - '),
                                     city: row['dsc_cidade'],
                                     phone: row['dsc_telefone'],
                                     latitude: row['vlr_latitude'],
                                     longitude: row['vlr_longitude'],
                                     size_score: fetch_score(row['dsc_estrut_fisic_ambiencia']),
                                     adaptation_for_seniors_score: fetch_score(row['dsc_adap_defic_fisic_idosos']),
                                     medical_equipment_score: fetch_score(row['dsc_equipamentos']),
                                     medicine_score: fetch_score(row['dsc_medicamentos']))

        puts "LINE #{$NR} - #{ubs.errors.full_messages.join(', ')}" if ubs.errors.any?
        counter += 1 if ubs.persisted?
      end

      puts "FINISHED. #{counter} UBSs imported!"
    end

    private

    def fetch_score(text)
      BasicHealthUnit::SCORE_TRANSLATION.key(text)
    end
  end
end
