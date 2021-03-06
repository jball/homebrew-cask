cask 'pycharm' do
  version '2016.3.3'
  sha256 'ef00da2b09ee958b3ed716f821feaaa049835f0009e322abd43b65df782c90aa'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release',
          checkpoint: '2d24de2c33630c2110c95e05d840c32d5098b6a527a32e1d6478e46fdc36d863'
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true
  conflicts_with cask: 'pycharm-eap'

  app 'PyCharm.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]
end
