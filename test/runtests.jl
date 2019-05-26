#!/usr/bin/env julia

using SynPUF, Test

function tests()
  @testset "Download of SynPUF" begin
    using DataDeps
    using SynPUF
    SynPUF.register()
    path = datadep"synpuf_01"
    @test path == endswith(path, "datadeps/synpuf_01")
  end
end

tests()
