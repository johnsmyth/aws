include_recipe 'aws::default'

aws_elastic_lb 'elastic_lb_register' do
  aws_access_key node['aws_test']['key_id']
  aws_secret_access_key node['aws_test']['access_key']
  name node['aws_test']['elb_name']
  action :register
end
