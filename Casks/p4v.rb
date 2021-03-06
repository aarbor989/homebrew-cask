cask 'p4v' do
  version '2017.2'
  sha256 'b24a68eaac73003c252ccfc235d8191c58dc3a0aa1abe035081ed8b76f834dd3'

  url "http://cdist2.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  appcast "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/SHA256SUMS",
          checkpoint: 'bcb6d54ab29c9f90b64518a85ecb7fa4dcdcedda4f80bc1fbb280bacf203525c'
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v'

  app 'p4v.app'
  app 'p4admin.app'
  app 'p4merge.app'
  binary 'p4vc'

  zap delete: '~/Library/Saved Application State/com.perforce.p4v.savedState',
      trash:  [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
              ]
end
