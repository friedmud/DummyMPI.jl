import DummyMPI
MPI = DummyMPI

using Base.Test

@testset "DummyMPI" begin
    # Administrative Functions
    @test MPI.COMM_WORLD == 0
    @test MPI.Comm_rank(MPI.COMM_WORLD) == 0
    @test MPI.Comm_size(MPI.COMM_WORLD) == 1
    @test MPI.Finalize() == nothing
    @test MPI.Finalized() == true
    @test MPI.Init() == nothing
    @test MPI.Initialized() == true

    # Collective Communication
    @test MPI.Allgather([1,2], 2, MPI.COMM_WORLD) == [1,2]
    @test MPI.Barrier(MPI.COMM_WORLD) == nothing
end
