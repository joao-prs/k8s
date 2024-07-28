# k8s

<p align="center">
  <img src="https://skillicons.dev/icons?i=kubernetes"/>
</p>

<table>
  <tr>
    <td width=45%>
      Sobre este repositório, ele tem como intuito ser um uma espécie de documentação pessoal, não visa ser intuitivo ou ensinar da maneira correta sobre a ferramenta, é apenas guia de estudo e curiosidades que descobri com meus colegas ao longo de muitos e muitos testes.
    </td>
    <td>
      Kubernetes , também conhecido como K8s, é um sistema de código aberto para automatizar a implantação, dimensionamento e gerenciamento de aplicativos em contêineres. Ele agrupa contêineres que compõem um aplicativo em unidades lógicas para facilitar o gerenciamento e a descoberta. O Kubernetes se baseia em 15 anos de experiência na execução de cargas de trabalho de produção no Google, combinadas com as melhores ideias e práticas da <a href="https://kubernetes.io/community/">comunidade</a>. 
    </td>
  </tr>
</table>

| Nota | Observação |
| --- | --- |
| CRI v1alpha2 | A partir da versão 1.30 do Kubernetes, foi removido o suporte ao CRI v1alpha2 e ao Containerd 1.7. |

Siga os passos simples do arquivo `history.sh` corretamente e terá um cluster kubernetes pronto para testes. Link do meu guia de instalação rápida no medium.

### A seguir os requisitos mínimos nossos testes:

- Máquina Linux (aqui no caso vou utilizar Ubuntu 22.04)
- 2 GB de memória RAM (mínimo do mínimo)
- 2 CPUs 
- Conexão de rede entre as máquinas
- Hostname, endereço MAC e product_uuid únicos pra cada nó.
- Swap desabilitado

> [!NOTE]
> Esses requisitos são o suficiente para os testes, todavia para criar pods e ambientes mais recursos serão necessários. 

### Sumário
- <a href="https://github.com/joao-prs/kubernetes/blob/main/doc/kubernetes1.30.md">Guia de instalação.</a>
- <a href="https://github.com/joao-prs/kubernetes/blob/main/doc/kubernetes.concepts.md">Conceitos básicos.</a>
- <a href="https://github.com/joao-prs/kubernetes/blob/main/doc/kubernetes.manifest.md">Sobre o arquivo de manifesto.</a>
- <a href="https://github.com/joao-prs/kubernetes/blob/main/doc/kubernetes.some.manifest.md">Exemplo de manifesto.</a>
- <a href="https://github.com/joao-prs/kubernetes/blob/main/doc/kubernetes.extras.md">Conteúdo extra.</a>

> [!TIP]
> Este repositório está sendo constantemente atualizado, por favor desconsidere a desorganização. Navegue entre os READMEs deste repositório para mais guias. 😊

<a target="_blank" href="https://github-readme-medium-recent-article.vercel.app/medium/@joao-prs/1"><img src="https://github-readme-medium-recent-article.vercel.app/medium/@joao-prs/1" alt="Recent Article 1">

> Repositório em construção ⚙️