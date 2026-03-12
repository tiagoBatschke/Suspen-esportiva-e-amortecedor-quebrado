# 🏎️ Simulação de Suspensão Automotiva (Quarter Car Model)

![Octave](https://img.shields.io/badge/Octave-DarkBlue?style=for-the-badge&logo=octave&logoColor=white)
![Status](https://img.shields.io/badge/Status-Conclu%C3%ADdo-brightgreen?style=for-the-badge)

Este repositório contém a modelagem e simulação de um sistema de suspensão veicular de dois graus de liberdade (2-DOF). O projeto analisa como diferentes parâmetros de rigidez e amortecimento impactam a estabilidade do chassi e o contato da roda com o solo.

## 📊 Cenários Simulados

O projeto compara o comportamento dinâmico em três condições:
1. **Suspensão Original:** Parâmetros de fábrica para equilíbrio conforto/estabilidade.
2. **Suspensão Esportiva:** Configuração de alta performance com maior rigidez.
3. **Amortecedor Quebrado:** Simulação de falha crítica (baixa dissipação de energia).

## 📂 Estrutura do Repositório

* **`suspensao_esportiva.m`**: Script para simulação do setup esportivo (K e C elevados).
* **`_quebrado.m`**: Script para simulação de amortecedor com perda de carga.
* **`README.md`**: Documentação do projeto.

## ⚙️ Modelagem Matemática

A simulação utiliza a representação em **Espaço de Estados**:

$$\dot{x} = Ax + Bu$$
$$y = Cx + Du$$

Onde consideramos as massas suspensa ($m_2$) e não suspensa ($m_1$), além da constante de rigidez do pneu ($k_t$).

## 🚀 Como Executar

Certifique-se de ter o pacote `control` instalado no seu ambiente Octave:

```matlab
pkg load control
