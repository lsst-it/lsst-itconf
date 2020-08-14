require 'spec_helper'

describe 'test1.dev.lsst.org' do
  lsst_roles.each do |role|
    context "role #{role}" do
      lsst_sites.each do |site|
        context "site #{site}" do
          let(:node_params) do
            {
              org: 'lsst',
              site: site,
              role: role,
              ipa_force_join: false, # easy_ipa
            }
          end

          it { is_expected.to compile.with_all_deps }
        end
      end # site
    end
  end # role
end
