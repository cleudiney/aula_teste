# Portal AMIFRET

Protótipo web institucional para a AMIFRET, com landing page, vitrine pública de associados, formulário de interesse, área simulada do associado e painel administrativo demonstrativo.

## Como ver localmente

Este projeto é estático no momento. Não precisa de Node, build, Composer ou banco de dados para visualizar.

```bash
python3 -m http.server 8000
```

Abra no navegador:

```text
http://127.0.0.1:8000/index.html
```

## Como subir na InfinityFree / hospedagem PHP + MySQL

Para publicar a versão atual, envie estes arquivos para a pasta pública da hospedagem, normalmente `htdocs`:

- `index.html` obrigatório: já contém HTML, CSS e JavaScript inline para evitar tela sem estilo quando algum asset não é enviado ou não é servido pela hospedagem.
- `.htaccess` recomendado: configura charset, arquivo inicial e headers simples.
- `style.css` opcional: cópia de manutenção do CSS.
- `script.js` opcional: cópia de manutenção do JavaScript.

A versão atual não usa PHP nem MySQL ainda. Ela funciona como front-end estático e todos os dados são simulados no navegador. Se aparecer sem estilo, confirme que você subiu o `index.html` atualizado desta versão, pois ele agora é autocontido.

Depois do upload, acesse o domínio da hospedagem. Exemplos:

```text
https://seudominio.infinityfreeapp.com/
https://seudominio.infinityfreeapp.com/index.html
```

## Rotas/áreas do protótipo

Como o protótipo é estático, a navegação usa hash no navegador:

- Home: `/#home`
- Vitrine de associados: `/#associados`
- Formulário de interesse: `/#associe-se`
- Login do associado: `/#login`
- Área do associado: `/#portal`
- Painel administrativo: `/#admin`

## Próximo passo para PHP/MySQL

O arquivo `database/schema.sql` contém uma estrutura inicial demonstrativa para evoluir o protótipo para backend PHP/MySQL, incluindo tabelas para associados, documentos, comunicados e mensalidades.

Em uma próxima etapa, o ideal é criar endpoints PHP para:

1. Salvar solicitações do formulário no MySQL.
2. Autenticar associados.
3. Listar associados reais na vitrine pública.
4. Publicar documentos e comunicados pelo admin.
5. Integrar boleto, Pix e WhatsApp Business API.

## Arquivos principais

- `index.html`: estrutura das telas e seções.
- `style.css`: identidade visual e responsividade.
- `script.js`: navegação, dados fictícios e interações simuladas.
- `.htaccess`: configuração simples para Apache/PHP.
- `database/schema.sql`: referência inicial para futura integração MySQL.
