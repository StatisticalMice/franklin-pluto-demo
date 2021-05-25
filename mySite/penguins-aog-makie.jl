### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ f36196a2-bd8a-11eb-35d3-77b0357b31b6
begin
    import Pkg
    Pkg.activate(mktempdir())
	
    Pkg.add([
        Pkg.PackageSpec(name="CairoMakie", version="0.5"),
        Pkg.PackageSpec(name="DataFrames", version="1"),
        Pkg.PackageSpec(name="PalmerPenguins", version="0.1"),
        Pkg.PackageSpec(name="AlgebraOfGraphics", version="0.4"),
    ])
	
    using CairoMakie, DataFrames, PalmerPenguins, AlgebraOfGraphics
	set_aog_theme!()
end

# ╔═╡ a75244d9-3db4-4f0e-ac6d-e21ce3d2e742
begin
	penguins = dropmissing(DataFrame(PalmerPenguins.load()))
	first(penguins, 6)
end

# ╔═╡ f901fd37-2ee0-49fc-8714-a487c35cff0e
begin
	axis = (width = 225, height = 225)
	penguin_frequency = data(penguins) * frequency() * mapping(:species)
	
	draw(penguin_frequency; axis)
end

# ╔═╡ 6efedce7-d3c6-42cc-a5a3-a8ac2c78ea8c
begin
	plt = penguin_frequency * mapping(color = :island, stack = :island)
	draw(plt; axis)
end

# ╔═╡ 134afff2-6ee9-40ff-8d88-213d67f5938d


# ╔═╡ Cell order:
# ╠═f36196a2-bd8a-11eb-35d3-77b0357b31b6
# ╠═a75244d9-3db4-4f0e-ac6d-e21ce3d2e742
# ╠═f901fd37-2ee0-49fc-8714-a487c35cff0e
# ╠═6efedce7-d3c6-42cc-a5a3-a8ac2c78ea8c
# ╠═134afff2-6ee9-40ff-8d88-213d67f5938d
