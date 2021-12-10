class FileUploader < CarrierWave::Uploader::Base
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  def extension_white_list
    %w(jpg jpeg gif png pdf)
  end

  version :thumb do
    #process resize_to_fill: [250,250]
  end

  version :icone do
    #process resize_to_fill: [100,100]
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
