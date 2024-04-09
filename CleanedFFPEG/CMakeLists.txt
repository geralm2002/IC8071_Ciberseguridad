cmake_minimum_required(VERSION 3.27)
project(CleanedFFPEG C)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 11)

add_library(CleanedFFPEG STATIC
        opt.c
        opt.h
        rational.h
        attributes.h
        avutil.h
        common.h
        mem.h
        macros.h
        version.h
        mathematics.h
        intfloat.h
        log.h
        pixfmt.h
        channel_layout.h
        dict.h
        samplefmt.h
        avassert.h
        avstring.h
        eval.h
        parseutils.h
        pixdesc.h
        error.h)
