class Generate
  class Layout < Thor::Group
    desc 'generate a layout named [NAME]'
    include Thor::Actions

    argument :name

    class_option :css, :default => true, :type => :boolean

    def self.source_root
      File.dirname(__FILE__)
    end

    def create_view_file
      template('lib/tasks/templates/layout.rb.erb', "views/#{ name }.rb")
    end

    def create_mustache_template
      template('lib/tasks/templates/layout.html.erb', "templates/#{ name }.mustache")
    end

    def create_less
      template('lib/tasks/templates/layout.less.erb', "public/stylesheets/#{ name }.less")
    end
  end


  # # Define arguments and options
  #
  # class_option :test_framework, :default => :test_unit
  #

  #
  # def create_lib_file
  #   template('templates/newgem.tt', "#{name}/lib/#{name}.rb")
  # end
  #
  # def create_test_file
  #   test = options[:test_framework] == "rspec" ? :spec : :test
  #   create_file "#{name}/#{test}/#{name}_#{test}.rb"
  # end
  #
  # def copy_licence
  #   if yes?("Use MIT license?")
  #     # Make a copy of the MITLICENSE file at the source root
  #     copy_file "MITLICENSE", "#{name}/MITLICENSE"
  #   else
  #     say "Shame on you…", :red
  #   end
  # end
end
