# TODO_01: Should accept String or Array
#          Verify contents

class Chef
  class Resource
    class DockerService < Chef::Resource::LWRPBase
      # Manually set the resource name because we're creating the classes
      # manually instead of letting the resource/ and providers/
      # directories auto-name things.
      self.resource_name = :docker_service

      # resource actions
      actions :create, :delete, :start, :stop, :restart, :enable
      default_action :create

      # register with the resource resolution system
      provides :docker_service

      # service installation
      attribute :source
      attribute :version
      attribute :checksum

      # service runtime properties
      attribute :api_cors_header, kind_of: String, default: nil
      attribute :bridge, kind_of: String, regex: [IPV4_ADDR, IPV6_ADDR], default: nil
      attribute :bip, kind_of: String, regex: IPV4_ADDR,  default: nil
      attribute :debug, kind_of: [TrueClass, FalseClass], default: false
      attribute :daemon, kind_of: [TrueClass, FalseClass], default: true
      attribute :dns, kind_of: String, default: nil
      attribute :dns_search, kind_of: Array, default: nil
      attribute :exec_driver, equal_to: %w(native lxc), default: 'native'
      attribute :fixed_cidr, kind_of: String, default: nil
      attribute :fixed_cidr_v6, kind_of: String, default: nil
      attribute :group, kind_of: String, default: 'docker'
      attribute :graph, kind_of: String, default: nil # TODO_01
      attribute :host, kind_of: String, default: nil  # TODO_01
      attribute :icc, kind_of: [TrueClass, FalseClass], default: true
      attribute :insecure_registry, kind_of: String, default: nil # TODO_01
      attribute :ip, kind_of: String, regex: [IPV4_ADDR, IPV6_ADDR], default: '0.0.0.0'
      attribute :ip_forward, kind_of: [TrueClass, FalseClass], default: true
      attribute :ip_masq, kind_of: [TrueClass, FalseClass], default: true
      attribute :iptables, kind_of: [TrueClass, FalseClass], default: true
      attribute :ipv6, kind_of: [TrueClass, FalseClass], default: false
      attribute :log_level, equal_to: %w( debug info warn error fatal ), default: 'info'
      attribute :label, kind_of: String, default: nil # TODO_01
      attribute :log_driver, equal_to: %w( json-file syslog none ), default: 'json-file'
      attribute :mtu, kind_of: String, default: nil
      attribute :pidfile, kind_of: String, default: nil
      attribute :registry_mirror, kind_of: String, default: nil # TODO_01
      attribute :storage_driver, kind_of: String, default: nil
      attribute :selinux_enabled, kind_of: [TrueClass, FalseClass], default: false
      attribute :storage_opt, kind_of: String, default: nil # TODO_01
      attribute :tls, kind_of: [TrueClass, FalseClass], default: false
      attribute :tlscacert, kind_of: String, default: nil
      attribute :tlscert, kind_of: String, default: nil
      attribute :tlskey, kind_of: String, default: nil
      attribute :tlsverify, kind_of: [TrueClass, FalseClass], default: false
      attribute :default_ulimit, kind_of: String, default: nil
    end
  end
end