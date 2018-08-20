module ApplicationHelper
  def menu
    items = [inicio, temperatura, poluicao, transito, sobre]
    content_tag :ul, :class => "navpils navbar-nav navbar-center" do
    #content_tag :ul, :class => "nav nav-tabs nav-justified" do
      items.collect { |item| concat item}
    end
  end

  def inicio
    link_to "Home | ", poluicao_index_path
  end

  def poluicao
    link_to "Poluição | ", poluicao_index_path
  end

  def temperatura
    link_to "Temperatura | ", temperatura_index_path
  end

  def transito
    link_to "Trânsito | ", transito_index_path
  end

  def sobre
    link_to "Sobre", sobre_index_path
  end

  def buttons
    items = [voltar]
    content_tag :ul, :class => "nav" do
      items.collect { |item| concat item}
    end
  end

    def voltar
      link_to "Voltar |", root_path
    end
end
