class HuaweiCloud
  module Identity
    def self.get_tenant_id(identity)
      ENV['OPENSTACK_TENANT_NAME'] || identity.list_tenants.body['tenants'].first['id']
    end

    def self.get_user_id(identity)
      ENV['OPENSTACK_USER_ID'] || identity.list_users.body['users'].first['id']
    end
  end
end
