# DummyMPI

The idea here is to mimic the interfaces in [MPI.jl](https://github.com/JuliaParallel/MPI.jl).

This package can then be imported instead of MPI.jl when MPI is not available.

Use like so:

```julia
import DummyMPI
MPI = DummyMPI

println(MPI.Comm_rank(MPI.COMM_WORLD))
```