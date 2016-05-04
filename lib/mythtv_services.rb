require 'mythtv_services/version'
require 'savon'

module MythtvServices

  def self.service_names
    [
      'Capture',
      'Channel',
      'Content',
      'Dvr',
      'Frontend',
      'Guide',
      'Myth',
      'Video'
    ]
  end

  def self.client(host, port, service_name)
    Savon.client(wsdl: "http://#{host}:#{port}/#{service_name}/wsdl")
  end

end
