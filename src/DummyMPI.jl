module DummyMPI

typealias comm_type Int64

const COMM_WORLD = (comm_type)(0)

# Administrative functions

function Abort(comm, errocode)
end

function Comm_dup(comm, new_comm)
end

function Comm_free(comm)
end

function Comm_rank(comm)
    return 0
end

function Comm_size(comm)
    return 1
end

function Finalize()
end

function Finalized()
    return true
end

function Init()
end

function Initialized()
    return true
end

# Point-to-point communication

function Cancel!()
end

function Get_count()
end

function Iprobe()
end

function Irecv!()
end

function Isend()
end

function Probe()
end

function Recv!()
end

function Send()
end

function Test!()
end

function Testall!()
end

function Testany!()
end

function Testsome!()
end

function Wait!()
end

function Waitall!()
end

function Waitany!()
end

function Waitsome!()
end

# Collective communication

function Allgather(values, num_values, comm)
    return values
end

function Allgatherv()
end

function Alltoall()
end

function Alltoallv()
end

function Barrier(comm)
end

function Bcast!()
end

function Exscan()
end

function Gather()
end

function Gatherv()
end

function Reduce()
end

function Scan()
end

function Scatter()
end

function Scatterv()
end

end # module
