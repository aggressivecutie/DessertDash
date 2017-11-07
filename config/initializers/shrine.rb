require "shrine"
require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: ENV["cloud_shrine_name"],
  api_key:    ENV["cloud_shrine_api"],
  api_secret: ENV["cloud_shrine_secret"],
)


Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
