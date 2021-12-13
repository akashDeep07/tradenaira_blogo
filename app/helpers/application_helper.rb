module ApplicationHelper
  def rand_banner category
    banner = nil
    banners = Blogo::Banner.send(category)
    if banners.present?
      randval = rand(banners.count+1)-1
      banner = banners[randval]
    end
    banner
  end
end
