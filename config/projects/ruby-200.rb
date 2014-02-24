name "ruby-200"
maintainer "Anichols"
homepage "github.com/adnichols/omnibus-rubies"

replaces        "ruby-200"
install_path    "/opt/ruby-200"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

dependency "ruby-200"
# ruby 2.0 comes with rubygems 2.0

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"

# Force the umask because something in rbenv is resetting it to 0000
File.umask(0022)
