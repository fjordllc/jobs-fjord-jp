def body_attrs
  if post?
    {:class => @theme_types.join(' ') + ' ' + @entry.slug + ' ' + @entry.category.slug}
  elsif category?
    {:class => @theme_types.join(' ') + ' ' + @category.slug}
  elsif page? and @entry.category.nil?
    {:class => @theme_types.join(' ') + ' ' + @page.slug}
  elsif page?
    {:class => @theme_types.join(' ') + ' ' + @page.slug + ' ' + @entry.category.slug}
  else
    {:class => @theme_types.join(' ')}
  end
end