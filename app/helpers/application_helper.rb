module ApplicationHelper
  def menu
    items = [home, alagamento, desmatamento, mananciais, poluicao, temperatura, transito, sobre, informativo]
    content_tag :ul, :class => "nav" do
      items.collect { |item| concat item}
    end
  end

  def home
    link_to "Início \n", root_path
  end

  def alagamento
    link_to "Alagamentos \n", alagamentos_index_path
  end

  def desmatamento
    link_to "Desmatamento \n", desmatamento_index_path
  end

  def mananciais
    link_to "Mananciais \n", mananciais_index_path
  end

  def poluicao
    link_to "Poluição \n", poluicao_index_path
  end

  def temperatura
    link_to "Temperatura \n", temperatura_index_path
  end

  def transito
    link_to "Trânsito \n", transito_index_path
  end

  def sobre
    link_to "Sobre \n", sobre_index_path
  end

  def informativo
    link_to "Informativo \n", informativos_url
  end
end
