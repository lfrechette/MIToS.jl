using Pkg

if haskey(Pkg.installed(), "GaussDCA")

    println("Information.gaussdca")
    msa = map(Residue, rand(1:21,100,20))
    dca = gaussdca(msa, min_separation=2)

    @test  isnan(dca[1,1])
    @test  isnan(dca[1,2])
    @test !isnan(dca[1,3])
end
