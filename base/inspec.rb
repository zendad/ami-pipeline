describe command('uname -r | tr "\n" " "') do
    its('stdout') {should match /3.10.0-693.*/ }
end
