Apiculture.register_template do |builder|
  builder.configure_options do |template_options|
    template_options["package_name"] = ask("Java package name?",
                                           :default => template_options["package_name"])
  end

  builder.generate do |outputter, destination|
    create_file("Manifest.java") do
      "public class Manifest {}"
    end
  end
end
