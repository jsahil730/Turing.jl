module Core

using DistributionsAD, Bijectors
using Libtask, ForwardDiff, Random
using Distributions, LinearAlgebra
using ..Utilities, Reexport
using Tracker: Tracker
using ..Turing: Turing
using DynamicPPL: Model, AbstractSampler, Sampler, SampleFromPrior
using LinearAlgebra: copytri!
using Bijectors: PDMatDistribution
import Bijectors: link, invlink
using AdvancedVI
using StatsFuns: logsumexp, softmax
@reexport using DynamicPPL
using Requires

import ZygoteRules
using ReverseDiff, Memoization

include("container.jl")
include("ad.jl")
include("deprecations.jl")

export  @model,
        @varname,
        generate_observe,
        translate_tilde!,
        get_vars,
        get_data,
        get_default_values,
        ParticleContainer,
        Particle,
        Trace,
        fork,
        forkr,
        current_trace,
        getweights,
        getweight,
        effectiveSampleSize,
        sweep!,
        ResampleWithESSThreshold,
        ADBackend,
        setadbackend,
        setadsafe,
        ForwardDiffAD,
        TrackerAD,
        ZygoteAD,
        value,
        gradient_logp,
        CHUNKSIZE,
        ADBACKEND,
        setchunksize,
        verifygrad,
        @logprob_str,
        @prob_str

export ReverseDiffAD, getrdcache, setrdcache, emptyrdcache
end # module
