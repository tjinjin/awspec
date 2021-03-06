Aws.config[:iam] = {
  stub_responses: {
    list_policies: {
      policies: [
        {
          attachment_count: 1,
          arn: 'arn:aws:iam::aws:policy/my-iam-policy',
          is_attachable: true,
          policy_id: 'PABCDEFGHI123455689',
          policy_name: 'my-iam-policy',
          update_date: Time.new(2015, 1, 2, 10, 00, 00, '+00:00')
        },
        {
          attachment_count: 1,
          arn: 'arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator',
          is_attachable: true,
          policy_id: 'PABCDEFGHI123455688',
          policy_name: 'AmazonAPIGatewayAdministrator',
          update_date: Time.new(2015, 7, 9, 17, 34, 45, '+00:00')
        },
        {
          attachment_count: 1,
          arn: 'arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforDataPipelineRole',
          is_attachable: true,
          policy_id: 'PABCDEFGHI123455687',
          policy_name: 'AmazonEC2RoleforDataPipelineRole',
          update_date: Time.new(2015, 3, 19, 19, 21, 14, '+00:00')
        }
      ]
    },
    list_entities_for_policy: {
      policy_roles: [
        { role_name: 'HelloIAmGodRole' }
      ],
      policy_users: [
        { user_name: 'my-iam-user' }
      ],
      policy_groups: [
        { group_name: 'my-iam-group' }
      ]
    }
  }
}
