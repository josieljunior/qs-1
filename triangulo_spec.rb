require 'rspec'
require_relative 'triangulo'

RSpec.describe 'Testes para funções de triângulo' do
  describe '#eh_triangulo' do
    it 'retorna verdadeiro para lados que formam um triângulo' do
      expect(eh_triangulo(2, 2, 3)).to be true
    end

    it 'retorna falso para lados que não formam um triângulo' do
      expect(eh_triangulo(1, 2, 3)).to be false
    end
  end

  describe '#tipo_triangulo' do
    context 'quando é um triângulo' do
      it 'identifica um triângulo equilátero' do
        expect(tipo_triangulo(2, 2, 2)).to eq('Equilátero')
      end

      it 'identifica um triângulo isósceles' do
        expect(tipo_triangulo(2, 2, 3)).to eq('Isósceles')
      end

      it 'identifica um triângulo escaleno' do
        expect(tipo_triangulo(2, 3, 4)).to eq('Escaleno')
      end
    end

    context 'quando não é um triângulo' do
      it 'retorna Não é Triângulo' do
        expect(tipo_triangulo(1, 2, 3)).to eq('Não é Triângulo')
      end
    end
  end
end
