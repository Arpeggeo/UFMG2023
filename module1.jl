### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ b519490a-ef45-4816-9d03-c9cf765dedef
begin
	using PlutoTeachingTools
	import PlutoUI

	# add table of contents to the side
	PlutoUI.TableOfContents(title="Contents")
end

# ╔═╡ 570aeb30-1e02-4f7b-8046-24e607d0dfea
using CSV

# ╔═╡ 0fdbcd2c-46e4-42d0-89cb-f3c5845527dd
using DataFrames

# ╔═╡ 4f97ab93-077b-4a77-9b02-0930f765c4aa
html"""
<div style="
position: absolute;
width: calc(100% - 30px);
border: 50vw solid #444444;
border-top: 500px solid #048282;
border-bottom: none;
box-sizing: content-box;
left: calc(-50vw + 15px);
top: -500px;
height: 500px;
pointer-events: none;
"></div>
<div style="
height: 500px;
width: 100%;
background: #444444;
color: #fff;
padding-top: 68px;
">
<span style="
font-family: Rubik, serif;
font-weight: 700;
font-feature-settings: 'lnum', 'pnum';
"> <p style="
font-size: 1.5rem;
opacity: .8;
"><em>Minicurso:</em></p>
<p style="text-align: center; font-size: 2rem;">
<em>Geociência de dados na mineração</em>
</p>
<p style="
font-size: 1.5rem;
text-align: center;
opacity: .8;
"><em>preparado por Arpeggeo® Technologies</em></p>
<center>
<a href="https://arpeggeo.tech"><img src="https://i.imgur.com/xgq72Z7.png" height=200></a>
</center>
<style>
body {
overflow-x: hidden;
}
</style>"""

# ╔═╡ 66387fc3-d61f-4558-9b35-b812176dc7d7
md"""
# Módulo I

**Instrutor:** [Júlio Hoffimann](https://juliohm.github.io)
**E-mail:** [juliohm@arpeggeo.tech](mailto:juliohm@arpeggeo.tech)
"""

# ╔═╡ db5cef13-5089-4039-a1dd-20292a82af5e
html"""
<head>
    <style>
    {
        box-sizing: border-box;
    }
    /* Set additional styling options for the columns*/
    .column {
    float: left;
    width: 50%;
    }

    .row:after {
    content: "";
    display: table;
    clear: both;
    }
    </style>
</head>
<body>
<div class="row">
        <div class="column";">
            <h4>Objetivos</h4>
            <ol>
  				<li>Introduzir o básico da linguagem Julia</li>
  				<li>Aprender a utilizar notebooks Pluto</li>
  				<li>Aprender a manipular dados tabulares</li>
				<li>Preparar participantes para o Módulo II</li>
			</ol>
        </div>
        <div class="column";">
            <img src="https://i.imgur.com/0Y2bG17.jpg" width=120>
        </div>
</div>
</body>
"""

# ╔═╡ d54bab7b-61ea-49a1-b745-865f5638e442
md"""
## Primeiros passos em Julia 👣

### Variáveis e funções
"""

# ╔═╡ 63f75b8c-be98-4782-b549-42dc4eb34622
md"""
No [Pluto](https://github.com/fonsp/Pluto.jl) cada cécula se refere a uma única expressão, e.g. definição de variável:
"""

# ╔═╡ 5201f165-10b4-491e-b2ea-7dfb16951b26
name = "Vanessa"

# ╔═╡ 21d29bb0-9d3c-432d-8ce6-7a4507e063c5
country = "🇧🇷"

# ╔═╡ cb882f97-f986-40c0-8341-d72ddf535ce6
age = 25

# ╔═╡ ae039617-9b7d-4906-855b-25215fbcea7a
md"""
Essas variáveis podem ser utilizadas em qualquer outra célula para customizar o notebook:
"""

# ╔═╡ 0f3324c7-fb7c-424f-a7c7-1570bb68a151
"Bem-vinda $name $(country)! Me disseram que você tem $age anos!"

# ╔═╡ d63990c4-19df-43db-a0f3-b3cea4661088
md"""
Para definir múltiplas variáveis em uma única célula, podemos fazer uso de `begin`/`end` ou `let`/`end`:
"""

# ╔═╡ 17e63207-b8d7-48d0-8790-2f26351550c0
let
	👍🏻 = +1

	👎🏻 = -1

	👍🏻 + 👎🏻
end

# ╔═╡ 3fb2c15d-d6df-404a-9007-4f8dcedc25d0
md"""
Podemos utilizar símbolos matemáticos para as nossas variáveis:
"""

# ╔═╡ 38e030b9-f510-4a82-987b-292a7be5f629
α, β, τ = 1.5, 2.6, 0.5

# ╔═╡ fcc434e5-6bdf-4f19-bf7e-9d2a660213c8
md"""
E definir funções de forma bastante conveniente:
"""

# ╔═╡ 21d46980-798d-4849-8b0f-a977290b7b23
f(α, β) = 2α + β

# ╔═╡ 6f4599e8-d90b-42e3-980e-83b2804bfb05
function g(τ)
	return τ^2
end

# ╔═╡ 34ce2637-dd89-4237-9e4e-e6043c534ea2
h = α -> √α

# ╔═╡ 949cff2b-21ae-4f05-be74-b067ef77ec05
f(1, 2) + g(3) + h(4)

# ╔═╡ 3fc345b8-c4f2-4a6a-9c79-b7afc5061eee
md"""
#### Exercício

Escreva uma função `volume` que retorna o volume da esfera de raio `r`:
"""

# ╔═╡ a9df6406-90c1-4a91-bd8d-d317c3ab84ed
volume(r) = missing

# ╔═╡ 93792e34-3244-466d-b675-cf20e42ef52c
begin
	scored1 = false
	_vol = volume(3)
	if ismissing(_vol)
		still_missing()
	elseif _vol ≈ (4/3)*π*3^3
		scored1 = true
		correct()
	elseif _vol isa Number
		almost(md"A fórmula não está certa...")
	else
		keep_working()
	end
end

# ╔═╡ 506f63e1-4727-462e-bb0d-61038dc7e227
hint(md"A fórmula é $\frac{4}{3}\pi r^3$...")

# ╔═╡ e342f13c-d8f5-4d1d-a947-9367df08e40a
md"""
### Tipos de coleções

Vários tipos de coleções estão disponíveis para armazenar um conjunto de valores: tuplas, vetores, matrizes, tensores, dicionários, etc.
"""

# ╔═╡ 040b86ac-a03e-4a24-a512-c5ffb78cef51
tuple = (1, 2, 3)

# ╔═╡ c0bb1438-55f2-4aac-8f7d-213988660e32
vector = [1, 2, 3]

# ╔═╡ d05364f3-8874-4a98-83fa-e5b1652f7b0f
matrix = [
	1 2
	3 4
]

# ╔═╡ 421baabb-01b6-4f38-97d2-d76a26ffba20
tensor = ones(3, 3, 2)

# ╔═╡ 94615abb-4e6b-488e-b4ea-2e721d275d2a
dict = Dict(:a => 1, :b => 2)

# ╔═╡ cbddc36e-bed8-44f2-b851-e2f659cae7e8
namedtuple = (a = 1, b = 2)

# ╔═╡ 00b998ff-dc64-481e-b5de-5686cba1e274
md"""
As coleções mais utilizadas em aplicações científicas são os vetores, matrizes, tensores, ou mais geralmente o que chamamos de `Array` em Julia. Arrays podem ser construídos com notação de lista, o que também é bastante conveniente:
"""

# ╔═╡ f4dce9bd-d7fb-43cd-a38a-84a6524b1769
[i for i in 1:5]

# ╔═╡ f2fbcfec-2441-42a2-a533-8d497e7e2176
[i for i in 1:5 if isodd(i)]

# ╔═╡ 1fa656f9-d72e-4eeb-8e8f-e05dc7101d02
[i+j for i in 1:3, j in 1:4]

# ╔═╡ a7db8808-b58a-4202-a10b-86bba4da97fb
[i+j for i in 1:3 for j in 1:4]

# ╔═╡ 33c935f0-082f-4db7-8e42-01ad92609d78
md"""
##### Exercício

Dado um ângulo `θ` em radianos, escreva uma função `rotation` que retorna a matriz de rotação 2D dada por $R(θ) = \begin{bmatrix}cos(θ) & -sin(θ)\\ sin(θ) & cos(θ)\end{bmatrix}$.
"""

# ╔═╡ 0700407f-d849-4818-a1e6-ab0196fb660c
function rotation(θ)
	missing
end

# ╔═╡ 1b2eb2b2-3c9a-4858-b622-2a563e45b966
begin
	scored2 = false
	_rot = rotation(π)
	if ismissing(_rot)
		still_missing()
	elseif _rot ≈ [cos(π) -sin(π); sin(π) cos(π)]
		scored2 = true
		correct()
	elseif _rot isa Matrix
		almost(md"Trocou `sin` e `cos` talvez?")
	else
		keep_working()
	end
end

# ╔═╡ 7c8bea50-98d6-46d8-b4e0-8618dcf07d17
hint(md"Escreva \theta e pressione TAB para escrever o símbolo θ")

# ╔═╡ 73332d09-5344-4418-aed8-20effc1fce5a
md"""
Escreva a função `square` que retorna todos os elementos da coleção `xs` ao quadrado:
"""

# ╔═╡ c15f4ed1-c23c-419d-99d9-997abae628df
square(xs) = missing

# ╔═╡ 82760c5c-0fd4-46b4-82f1-2bc95a3b0250
begin
	scored3 = false
	_sqr = square([1 2; 3 4])
	if ismissing(_sqr)
		still_missing()
	elseif _sqr == [1 4; 9 16]
		scored3 = true
		correct()
	elseif _sqr == [1, 9, 4, 16]
		almost(md"Tente usar a dica")
	else
		keep_working()
	end
end

# ╔═╡ 1c9230eb-ae28-40bf-8384-189d4fd57eca
hint(md"A notação de lista `[f(x) for x in xs]` pode ser bem útil!")

# ╔═╡ facafb3e-0996-40dd-b555-d2ef7b6dcc1b
md"""
### Controle de fluxo

A linguagem oferece os controles de fluxo tradicionais:

```julia
if a > 0 # caso 1
  b = 2b
elseif a < 0 # caso 2
  b = b + 1
else # outros casos
  b = rand()
end
```

e diferentes formas de iteração:

```julia
for x in xs
  # do something with x
end

for i in 1:length(xs)
  # do something with x[i]
end

while condition
  # modify condition
end
```
"""

# ╔═╡ 37574f51-9e07-4a09-9580-618af5d81e84
md"""
#### Exercício

Escreva uma função `emoji` que recebe o nome de um emoji e retorna o símbolo do emoji:

- "diamond" --> 💎
- "tool" --> ⛏️
- "tractor" --> 🚜

Você pode copiar e colar o símbolo de um emoji dentro de uma string `"🚜"` usando `Ctrl+C` e `Ctrl+V` dentro da sua função.
"""

# ╔═╡ 3c806a3a-8636-4a98-87ee-96a926b0ea4e
function emoji(name)
	missing
end

# ╔═╡ 2a2581d3-60cc-4656-8016-0fa58ed6bb6b
begin
	scored4 = false
	_emj = emoji.(["diamond","tool","tractor"])
	if all(ismissing.(_emj))
		still_missing()
	elseif all(_emj .== ["💎","⛏️","🚜"])
		scored4 = true
		correct()
	elseif _emj ⊆ ["💎","⛏️","🚜"]
		almost(md"Cheque os emojis novamente...")
	else
		keep_working()
	end
end

# ╔═╡ 5be7c2b4-9e59-4dcb-b6e8-3a3dcf814c60
hint(md"Basta escrever uma sequência de `if name == \"diamond\" return \"💎\" end`")

# ╔═╡ 54777db4-a19e-4c04-9da7-a8e14b2c5494
md"""
## Dados tabulares 📑

Investigaremos o conjunto de dados [GeoMet](https://zenodo.org/record/7051975) curado em parceria com a Vale.

Neste notebook faremos apenas o download do arquivo `drillholes.csv`:
"""

# ╔═╡ 5e2d428b-dc3c-4566-9b3b-b3b506bd3dc9
fname = download("https://zenodo.org/record/7051975/files/drillholes.csv?download=1")

# ╔═╡ 75a6cdec-e9c1-416f-b57e-18cd25369c3e
md"""
Utilizaremos o pacote [CSV.jl](https://csv.juliadata.org/stable) para carregar os dados no notebook, e o pacote [DataFrames.jl](https://dataframes.juliadata.org/stable) para manipular esses dados de forma mais eficiente:
"""

# ╔═╡ fe082269-cfd1-4ea9-a030-e19c8699b2ae
md"""
Passamos o nome do arquivo para o `CSV.File`, depois enviamos os dados para o `DataFrame` usando o operador `|>` em Julia, conhecido como operador "pipe":
"""

# ╔═╡ dd9d4a52-e752-403d-820e-b392f4fc06b1
df = CSV.File(fname) |> DataFrame

# ╔═╡ 3edb534f-835a-413e-8481-1e5aea4286b9
md"""
Podemos obter estatísticas básicas de cada coluna da tabela com a função `describe`:
"""

# ╔═╡ eb230563-c6fc-4931-b9a6-521b05fa27ca
describe(df)

# ╔═╡ 8e232bbf-e740-433c-9974-fd88bb81cada
md"""
Notamos que cada coluna tem um tipo de elemento `eltype` ("element type"). Como o conjunto de dados foi curado, não existem valores faltantes `nmissing` ("number of missing").
"""

# ╔═╡ 3fef96cc-6596-4b00-a2b2-94fba2ea89c9
md"""
### Linhas e colunas

Um `DataFrame` tem linhas e colunas que podem ser acessadas de diferentes maneiras. Antes de acessar esses dados, vejamos como podemos acessar o número de linhas e colunas:
"""

# ╔═╡ 180ca8bb-8ad9-4603-a4fe-c7d3b8923cc1
nrow(df), ncol(df)

# ╔═╡ 35ad6ee8-e54c-450d-9bfd-2c50bbc6f0d0
md"""
Podemos acessar o nome das colunas como uma lista de `String`:
"""

# ╔═╡ 7a70a3be-b842-4de6-83cc-3f78a092f0f7
names(df)

# ╔═╡ 60f182ae-29e0-4521-b924-b916af2aa654
md"""
ou como uma lista de `Symbol`:
"""

# ╔═╡ 11383ff7-22fd-4536-9ded-096e1eddbeb3
propertynames(df)

# ╔═╡ 5e47e02e-5bf6-4ff0-9243-0f0f126b125f
md"""
A linguagem Julia diferencia esses dois tipos, e é bom ter isso em mente. Agora que sabemos como obter o número de linhas e colunas e os nomes das colunas, podemos acessar os dados:
"""

# ╔═╡ ce5471e2-cb59-42f3-b906-9e9b62470fcf
df[1, "Au ppm"]

# ╔═╡ ecfa2738-741e-43e0-83ae-8055b21e8190
df[1:3, "Au ppm"]

# ╔═╡ cd9bc5a0-a018-4582-8c0d-e6ac847ba01a
df[1:3, ["Au ppm", "Cu ppm"]]

# ╔═╡ 88925725-0e98-4004-8ddb-e5d05df40c4e
df."Au ppm"

# ╔═╡ 700cc439-ed4b-4fdb-82a6-c7ae3ddfc4a7
df.HOLEID

# ╔═╡ 2280d22c-4170-4cbe-af70-86f070dfc5aa
md"""
O símbolo `:` pode ser utilizado para manter todas as linhas ou todas as colunas:
"""

# ╔═╡ 2c261ce1-2ab8-47e2-a0cf-26e74746c69b
df[:, "Au ppm"]

# ╔═╡ 801bdaf7-e29a-4b1a-9e3a-f21fd9f5cf72
df[1, :]

# ╔═╡ d432c62b-8b7b-4ca7-805a-100cda5a94c2
md"""
Podemos comparar uma coleção de valores com um único valor usando o operador `.` na frente de qualquer operação ou função. Por exemplo, podemos encontrar todas as linhas com teor de `Au ppm` acima de `0.5`:
"""

# ╔═╡ b1db9bb3-bdac-483a-bbba-c4ca882e94ae
df."Au ppm" .> 0.5

# ╔═╡ 8ea2c1a6-5f5f-4ba9-8d2c-c4ebffc49d53
md"""
ou todas as linhas com `HOLEID` igual a `1`:
"""

# ╔═╡ 201f8de5-7ff8-424b-b86a-da7fa3b834ee
df.HOLEID .== 1

# ╔═╡ 11bc894d-1767-4886-90fd-b2f5dcca832f
md"""
### Filtragem de dados

Para responder qualquer pergunta com dados tabulares, nós precisamos saber filtrar as linhas da tabela que são relevantes para o cálculo da resposta. Por exemplo, podemos filtrar todas as amostras para as quais `Au ppm > 0.5`:
"""

# ╔═╡ 0cc47f35-15f8-46ae-8277-e29b2cf189ff
df[df."Au ppm" .> 0.5, :]

# ╔═╡ e1328a1e-0a57-4cfb-aa57-c77ab3c91414
md"""
#### Exercício

Encontre todas as amostras onde a soma dos teores de `Au` e `Cu` é superior a `0.5`.

Salve o resultado na variável `q1`:
"""

# ╔═╡ 9ef6a603-a46b-4073-a9c7-1ce3fedd2079
res = missing

# ╔═╡ 1173edca-db9d-4642-bfe5-fc50cc745f8e
begin
	scored5 = false
	if ismissing(res)
		still_missing()
	elseif res == df[df."Au ppm" .+ df."Cu ppm" .> 0.5, :]
		scored5 = true
		correct()
	else
		keep_working()
	end
end

# ╔═╡ dca7dcb5-f36b-4963-9eb7-6ce2166db750
hint(md"Use o último exemplo como ponto de partida.")

# ╔═╡ d49a66e0-d244-4c85-90be-1ad6e4340609
md"""
### Agrupamento de dados

Para responder perguntas mais avançadas com os dados, precisamos saber agrupar informações que estão dispersas na tabela, mas que fazem parte de um mesmo grupo (e.g. litologia).

As funções `groupby` e `combine` podem ser utilizadas para agrupar as linhas de um mesmo grupo e para combinar as linhas de cada grupo, respectivamente:
"""

# ╔═╡ 7ecbd139-b81c-4952-a37b-ec9ec1a218df
groups = groupby(df, :HOLEID)

# ╔═╡ c7f6304d-28e5-483e-96b4-e41c447e5187
combine(groups, "Au ppm" => sum)

# ╔═╡ c2e99329-a3d7-4da0-8c9d-967ad7dbd820
md"""
Podemos renomear o resultado da seguinte forma:
"""

# ╔═╡ f69dd630-c0f6-4d2f-b7db-41ab1e410025
combine(groups, "Au ppm" => sum => "Total")

# ╔═╡ 9cc5c401-8a3d-443a-a55a-ee4a2b750e5d
md"""
## Perguntas? 🔍

No próximo módulo do minicurso aprenderemos a lidar com dados geoespaciais utilizando o framework [GeoStats.jl](https://juliaearth.github.io/GeoStats.jl/stable). Se algo não ficou claro neste primeiro módulo, não hesite em perguntar!

![questions](https://media2.giphy.com/media/wH4rY2nPnEnp6/giphy.gif)
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
CSV = "~0.10.11"
DataFrames = "~1.6.1"
PlutoTeachingTools = "~0.2.12"
PlutoUI = "~0.7.52"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "9e718abcfe58e4455687100fd319de56f6e4ec7f"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "PrecompileTools", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings", "WorkerUtilities"]
git-tree-sha1 = "44dbf560808d49041989b8a96cae4cffbeb7966a"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.11"

[[deps.CodeTracking]]
deps = ["InteractiveUtils", "UUIDs"]
git-tree-sha1 = "a1296f0fe01a4c3f9bf0dc2934efbf4416f5db31"
uuid = "da1fd8a2-8d9e-5ec2-8556-3022fb5608a2"
version = "1.3.4"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "02aa26a4cf76381be7f66e020a3eddeb27b0a092"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.2"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.Compat]]
deps = ["UUIDs"]
git-tree-sha1 = "e460f044ca8b99be31d35fe54fc33a5c33dd8ed7"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.9.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "DataStructures", "Future", "InlineStrings", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrecompileTools", "PrettyTables", "Printf", "REPL", "Random", "Reexport", "SentinelArrays", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "04c738083f29f86e62c8afc341f0967d8717bdb8"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.6.1"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3dbd312d370723b6bb43ba9d02fc36abade4518d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.15"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FilePathsBase]]
deps = ["Compat", "Dates", "Mmap", "Printf", "Test", "UUIDs"]
git-tree-sha1 = "e27c4ebe80e8699540f2d6c805cc12203b614f12"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.20"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "9cc2baf75c6d09f9da536ddf58eb2f29dedaf461"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InvertedIndices]]
git-tree-sha1 = "0dc7b50b8d436461be01300fd8cd45aa0274b038"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.3.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JuliaInterpreter]]
deps = ["CodeTracking", "InteractiveUtils", "Random", "UUIDs"]
git-tree-sha1 = "e8ab063deed72e14666f9d8af17bd5f9eab04392"
uuid = "aa1ae85d-cabe-5617-a682-6adf51b2e16a"
version = "0.9.24"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Printf", "Requires"]
git-tree-sha1 = "f428ae552340899a935973270b8d98e5a31c49fe"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.16.1"

    [deps.Latexify.extensions]
    DataFramesExt = "DataFrames"
    SymEngineExt = "SymEngine"

    [deps.Latexify.weakdeps]
    DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
    SymEngine = "123dc426-2d89-5057-bbad-38513e3affd8"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoweredCodeUtils]]
deps = ["JuliaInterpreter"]
git-tree-sha1 = "60168780555f3e663c536500aa790b6368adc02a"
uuid = "6f1432cf-f94c-5a45-995e-cdbf5db27b0b"
version = "2.3.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "9ee1618cbf5240e6d4e0371d6f24065083f60c48"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.11"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "716e24b21538abc91f6205fd1d8363f39b442851"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.PlutoHooks]]
deps = ["InteractiveUtils", "Markdown", "UUIDs"]
git-tree-sha1 = "072cdf20c9b0507fdd977d7d246d90030609674b"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0774"
version = "0.0.5"

[[deps.PlutoLinks]]
deps = ["FileWatching", "InteractiveUtils", "Markdown", "PlutoHooks", "Revise", "UUIDs"]
git-tree-sha1 = "8f5fa7056e6dcfb23ac5211de38e6c03f6367794"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0420"
version = "0.1.6"

[[deps.PlutoTeachingTools]]
deps = ["Downloads", "HypertextLiteral", "LaTeXStrings", "Latexify", "Markdown", "PlutoLinks", "PlutoUI", "Random"]
git-tree-sha1 = "542de5acb35585afcf202a6d3361b430bc1c3fbd"
uuid = "661c6b06-c737-4d37-b85c-46df65de6f69"
version = "0.2.13"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e47cd150dbe0443c3a3651bc5b9cbd5576ab75b7"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.52"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "a6062fe4063cdafe78f4a0a81cfffb89721b30e7"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.2"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.PrettyTables]]
deps = ["Crayons", "LaTeXStrings", "Markdown", "Printf", "Reexport", "StringManipulation", "Tables"]
git-tree-sha1 = "ee094908d720185ddbdc58dbe0c1cbe35453ec7a"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "2.2.7"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Revise]]
deps = ["CodeTracking", "Distributed", "FileWatching", "JuliaInterpreter", "LibGit2", "LoweredCodeUtils", "OrderedCollections", "Pkg", "REPL", "Requires", "UUIDs", "Unicode"]
git-tree-sha1 = "1e597b93700fa4045d7189afa7c004e0584ea548"
uuid = "295af30f-e4ad-537b-8983-00126c2a3abe"
version = "3.5.3"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "04bdff0b09c65ff3e06a05e3eb7b120223da3d39"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.4.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "c60ec5c62180f27efea3ba2908480f8055e17cee"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.1"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.StringManipulation]]
git-tree-sha1 = "46da2434b41f41ac3594ee9816ce5541c6096123"
uuid = "892a3eda-7b42-436c-8928-eab12a02cf0e"
version = "0.3.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "9a6ae7ed916312b41236fcef7e0af564ef934769"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.13"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.URIs]]
git-tree-sha1 = "b7a5e99f24892b6824a954199a45e9ffcc1c70f0"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "b1be2855ed9ed8eac54e5caff2afcdb442d52c23"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.2"

[[deps.WorkerUtilities]]
git-tree-sha1 = "cd1659ba0d57b71a464a29e64dbc67cfe83d54e7"
uuid = "76eceee3-57b5-4d4a-8e66-0e911cebbf60"
version = "1.6.1"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─b519490a-ef45-4816-9d03-c9cf765dedef
# ╟─4f97ab93-077b-4a77-9b02-0930f765c4aa
# ╟─66387fc3-d61f-4558-9b35-b812176dc7d7
# ╟─db5cef13-5089-4039-a1dd-20292a82af5e
# ╟─d54bab7b-61ea-49a1-b745-865f5638e442
# ╟─63f75b8c-be98-4782-b549-42dc4eb34622
# ╠═5201f165-10b4-491e-b2ea-7dfb16951b26
# ╠═21d29bb0-9d3c-432d-8ce6-7a4507e063c5
# ╠═cb882f97-f986-40c0-8341-d72ddf535ce6
# ╟─ae039617-9b7d-4906-855b-25215fbcea7a
# ╠═0f3324c7-fb7c-424f-a7c7-1570bb68a151
# ╟─d63990c4-19df-43db-a0f3-b3cea4661088
# ╠═17e63207-b8d7-48d0-8790-2f26351550c0
# ╟─3fb2c15d-d6df-404a-9007-4f8dcedc25d0
# ╠═38e030b9-f510-4a82-987b-292a7be5f629
# ╟─fcc434e5-6bdf-4f19-bf7e-9d2a660213c8
# ╠═21d46980-798d-4849-8b0f-a977290b7b23
# ╠═6f4599e8-d90b-42e3-980e-83b2804bfb05
# ╠═34ce2637-dd89-4237-9e4e-e6043c534ea2
# ╠═949cff2b-21ae-4f05-be74-b067ef77ec05
# ╟─3fc345b8-c4f2-4a6a-9c79-b7afc5061eee
# ╠═a9df6406-90c1-4a91-bd8d-d317c3ab84ed
# ╟─93792e34-3244-466d-b675-cf20e42ef52c
# ╟─506f63e1-4727-462e-bb0d-61038dc7e227
# ╟─e342f13c-d8f5-4d1d-a947-9367df08e40a
# ╠═040b86ac-a03e-4a24-a512-c5ffb78cef51
# ╠═c0bb1438-55f2-4aac-8f7d-213988660e32
# ╠═d05364f3-8874-4a98-83fa-e5b1652f7b0f
# ╠═421baabb-01b6-4f38-97d2-d76a26ffba20
# ╠═94615abb-4e6b-488e-b4ea-2e721d275d2a
# ╠═cbddc36e-bed8-44f2-b851-e2f659cae7e8
# ╟─00b998ff-dc64-481e-b5de-5686cba1e274
# ╠═f4dce9bd-d7fb-43cd-a38a-84a6524b1769
# ╠═f2fbcfec-2441-42a2-a533-8d497e7e2176
# ╠═1fa656f9-d72e-4eeb-8e8f-e05dc7101d02
# ╠═a7db8808-b58a-4202-a10b-86bba4da97fb
# ╟─33c935f0-082f-4db7-8e42-01ad92609d78
# ╠═0700407f-d849-4818-a1e6-ab0196fb660c
# ╟─1b2eb2b2-3c9a-4858-b622-2a563e45b966
# ╟─7c8bea50-98d6-46d8-b4e0-8618dcf07d17
# ╟─73332d09-5344-4418-aed8-20effc1fce5a
# ╠═c15f4ed1-c23c-419d-99d9-997abae628df
# ╟─82760c5c-0fd4-46b4-82f1-2bc95a3b0250
# ╟─1c9230eb-ae28-40bf-8384-189d4fd57eca
# ╟─facafb3e-0996-40dd-b555-d2ef7b6dcc1b
# ╟─37574f51-9e07-4a09-9580-618af5d81e84
# ╠═3c806a3a-8636-4a98-87ee-96a926b0ea4e
# ╟─2a2581d3-60cc-4656-8016-0fa58ed6bb6b
# ╟─5be7c2b4-9e59-4dcb-b6e8-3a3dcf814c60
# ╟─54777db4-a19e-4c04-9da7-a8e14b2c5494
# ╠═5e2d428b-dc3c-4566-9b3b-b3b506bd3dc9
# ╟─75a6cdec-e9c1-416f-b57e-18cd25369c3e
# ╠═570aeb30-1e02-4f7b-8046-24e607d0dfea
# ╠═0fdbcd2c-46e4-42d0-89cb-f3c5845527dd
# ╟─fe082269-cfd1-4ea9-a030-e19c8699b2ae
# ╠═dd9d4a52-e752-403d-820e-b392f4fc06b1
# ╟─3edb534f-835a-413e-8481-1e5aea4286b9
# ╠═eb230563-c6fc-4931-b9a6-521b05fa27ca
# ╟─8e232bbf-e740-433c-9974-fd88bb81cada
# ╟─3fef96cc-6596-4b00-a2b2-94fba2ea89c9
# ╠═180ca8bb-8ad9-4603-a4fe-c7d3b8923cc1
# ╟─35ad6ee8-e54c-450d-9bfd-2c50bbc6f0d0
# ╠═7a70a3be-b842-4de6-83cc-3f78a092f0f7
# ╟─60f182ae-29e0-4521-b924-b916af2aa654
# ╠═11383ff7-22fd-4536-9ded-096e1eddbeb3
# ╟─5e47e02e-5bf6-4ff0-9243-0f0f126b125f
# ╠═ce5471e2-cb59-42f3-b906-9e9b62470fcf
# ╠═ecfa2738-741e-43e0-83ae-8055b21e8190
# ╠═cd9bc5a0-a018-4582-8c0d-e6ac847ba01a
# ╠═88925725-0e98-4004-8ddb-e5d05df40c4e
# ╠═700cc439-ed4b-4fdb-82a6-c7ae3ddfc4a7
# ╟─2280d22c-4170-4cbe-af70-86f070dfc5aa
# ╠═2c261ce1-2ab8-47e2-a0cf-26e74746c69b
# ╠═801bdaf7-e29a-4b1a-9e3a-f21fd9f5cf72
# ╟─d432c62b-8b7b-4ca7-805a-100cda5a94c2
# ╠═b1db9bb3-bdac-483a-bbba-c4ca882e94ae
# ╟─8ea2c1a6-5f5f-4ba9-8d2c-c4ebffc49d53
# ╠═201f8de5-7ff8-424b-b86a-da7fa3b834ee
# ╟─11bc894d-1767-4886-90fd-b2f5dcca832f
# ╠═0cc47f35-15f8-46ae-8277-e29b2cf189ff
# ╟─e1328a1e-0a57-4cfb-aa57-c77ab3c91414
# ╠═9ef6a603-a46b-4073-a9c7-1ce3fedd2079
# ╟─1173edca-db9d-4642-bfe5-fc50cc745f8e
# ╟─dca7dcb5-f36b-4963-9eb7-6ce2166db750
# ╟─d49a66e0-d244-4c85-90be-1ad6e4340609
# ╠═7ecbd139-b81c-4952-a37b-ec9ec1a218df
# ╠═c7f6304d-28e5-483e-96b4-e41c447e5187
# ╟─c2e99329-a3d7-4da0-8c9d-967ad7dbd820
# ╠═f69dd630-c0f6-4d2f-b7db-41ab1e410025
# ╟─9cc5c401-8a3d-443a-a55a-ee4a2b750e5d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
