require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: ENV["CLOUDINARY_CLOUD_NAME"],
  api_key:    ENV["CLOUDINARY_API_KEY"],
  api_secret: ENV["CLOUDINARY_API_SECRET"],
)


Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
# require "shrine"
# require "shrine/storage/file_system"
#
# Shrine.storages = {
#   cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
#   store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"), # permanent
# }
#
# Shrine.plugin :activerecord
# Shrine.plugin :cached_attachment_data # for forms
