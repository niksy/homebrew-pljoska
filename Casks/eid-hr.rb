cask "eid-hr" do
  version "3.3-20210801"
  sha256 "5d98a35058ea8781836d796db751b6183bcf0ba3f6dfee083ee4ca803b7c35b3"

  url "https://www.eid.hr/datastore/filestore/10/eIDMiddleware-#{version}.pkg"
  name "AKD eID Middleware"
  desc "AKD eID Middleware for eOI"
  homepage "https://www.eid.hr/"

  pkg "eIDMiddleware-#{version}.pkg"

  uninstall script: [
                       executable: "/Applications/EidClient/uninstall.command",
                       input:      ['y'],
                       sudo:       true,
                     ]
end
