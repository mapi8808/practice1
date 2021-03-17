# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end

Refile.secret_key = '9c8185cc752cfc10c62c8ee6e96324c55c59f61c80d7003601b7a10ff62d09a27b86024185fef8d231079c74bbe15cf54b835b359d93ad3338d93d3c67cc24b7'
# 画像投稿の際にエラーが発生されるが、Refile〜の内容をコピーして、この中に貼り付けする。→写真表示