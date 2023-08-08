cask "stickerdocs" do
  version "1.0.0.16"
  sha256 "99395cdb0c4760a1333ebe201c280b4550831307349db94ea405adb826a4e0f1"

  url "https://stickerdocs.com/download/StickerDocs-macOS-#{version}.zip"
  name "StickerDocs"
  desc "Secure and affordable file and photo sharing for families"
  homepage "https://stickerdocs.com/"

  livecheck do
    url "https://stickerdocs.com/download/latest_versions.json"
    strategy :page_match
    regex(/macOS.*\n.*zip.*\n.*version": "(\d+(?:\.\d+)*)"/i)
  end

  app "StickerDocs.app"
end
