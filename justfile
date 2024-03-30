_default:
  @just --list

output_dir := "dist"
src_dir := "src"

_create_output_dir:
  mkdir {{output_dir}}

# Remove output directory
clean:
  rm -rfv {{output_dir}}

_zip flavor:
  cd {{src_dir}} ; zip -r ../{{output_dir}}/catppuccin-{{flavor}}.zip catppuccin-{{flavor}}

# Generate zips
zip: _create_output_dir (_zip "latte") (_zip "frappe") (_zip "macchiato") (_zip "mocha")
