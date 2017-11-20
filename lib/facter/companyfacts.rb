[:role, :product, :env, :dc, :provider, :certname].each do |code|
    Facter.add(code) do
        setcode do
             Facter::Core::Execution.exec("grep #{code} /etc/company.facts | awk '{print $3}'")
        end
    end
end
