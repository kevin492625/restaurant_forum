module ApplicationHelper
  def show_restaurant_img(img, css_class = "img-responsive center-block")
    for img_id in 0..18
      include_path = '/'+img_id.to_s+'.jpg'
      return image_tag(('/seed_img'+include_path), class: css_class) if image_path(img).include?(include_path)
    end
    '<span class="glyphicon glyphicon-picture"></span>[沒有圖片]'.html_safe
  end

end


