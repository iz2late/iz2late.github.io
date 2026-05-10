$ErrorActionPreference = "Stop"

$RubyBin = "C:\Users\danya\tools\Ruby31-x64\bin"
if (-not (Test-Path (Join-Path $RubyBin "ruby.exe"))) {
    throw "Ruby 3.1 was not found at $RubyBin. Install RubyInstaller with DevKit first."
}

$env:Path = "$RubyBin;$env:Path"

bundle install
bundle exec jekyll serve --host 127.0.0.1 --port 4000
