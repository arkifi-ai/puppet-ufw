# frozen_string_literal: true

require 'puppet/resource_api/simple_provider'

# Implementation for the ufw_allow type using the Resource API.
class Puppet::Provider::UfwAllow::UfwAllow < Puppet::ResourceApi::SimpleProvider
  def get(context)
    context.debug('Returning pre-canned ufw allow data')
    [
      {
        name: 'foo',
        ensure: 'present',
      },
      {
        name: 'bar',
        ensure: 'present',
      },
    ]
  end

  def create(context, name, should)
    context.notice("Creating '#{name}' with #{should.inspect}")
  end

  def update(context, name, should)
    context.notice("Updating '#{name}' with #{should.inspect}")
  end

  def delete(context, name)
    context.notice("Deleting '#{name}'")
  end
end
