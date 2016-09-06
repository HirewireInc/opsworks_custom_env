if node[:opsworks][:instance][:layers].include?('rails-app') or node[:opsworks][:instance][:layers].include?('tools')

  include_recipe "opsworks_custom_env::restart_command"
  include_recipe "opsworks_custom_env::write_config"

end
