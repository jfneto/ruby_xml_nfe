require 'nokogiri'

module RubyXmlNfe
  class EnderEmit
    attr_reader :xml, :xLgr, :nro, :xCpl, :xBairro, :cMun, :xMun, :uf, :cep, :cPais, :xPais, :fone

    def initialize(xml, params)
      @xml = xml
      @xLgr = params[:xLgr]
      @nro = params[:nro]
      @xCpl = params[:xCpl]
      @xBairro = params[:xBairro]
      @cMun = params[:cMun]
      @xMun = params[:xMun]
      @uf = params[:UF]
      @cep = params[:CEP]
      @cPais = params[:cPais]
      @xPais = params[:xPais]
      @fone = params[:fone]
    end

    def build
      xml.enderEmit do
        xml.xLgr xLgr
        xml.nro nro
        xml.xCpl xCpl
        xml.xBairro xBairro
        xml.cMun cMun
        xml.xMun xMun
        xml.UF uf
        xml.CEP cep
        xml.cPais cPais
        xml.xPais xPais
        xml.fone fone
      end
    end
  end
end
