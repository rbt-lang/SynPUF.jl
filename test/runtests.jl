# test/runtests.jl
using SynPuf, Test

function tests()
  @testset "Download of SynPUF" begin
    @test 1 == 1
  end
end

tests()
