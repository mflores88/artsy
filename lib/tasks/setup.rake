# Sets database
namespace :db do
  task :setup => :environment do
    puts '=' * 80
    puts 'Setting up database...'
    puts '=' * 80

    Rake::Task['db:create'].invoke
    puts 'Created database.'

    Rake::Task['db:migrate'].invoke
    puts 'Migrated database.'

    Rake::Task['db:seed'].invoke
    puts 'Seeded database.'

    puts 'Database setup completed.'
  end
end
