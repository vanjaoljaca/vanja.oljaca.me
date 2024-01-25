Jekyll::Hooks.register :site, :post_write do |site|
  system("sh ./post_build.sh")
end