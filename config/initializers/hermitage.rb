# Configuration file for hermitage gem

# Default config is used as base options hash for every gallery.
# You can configure any of its options and they will be applied for every rendering.
#
Hermitage.configure :images do
  original -> item { item.image.url }
  thumbnail -> item { item.image.thumb.url }
  title -> item { item.category.name }
  list_tag :ul
  item_tag :li
  list_class 'thumbnails'
  item_class 'span4'
  link_class 'thumbnail'
  image_class nil
  each_slice nil
end

# Also you can create your own configs that will be merged with default config to overwrite default options.
#
# E.g. when you write
#
#   render_gallery_for @images
#
# :images config will be used.
#
# All available options are listed in default config above.
#
# Hermitage.configure :images do
#
# end