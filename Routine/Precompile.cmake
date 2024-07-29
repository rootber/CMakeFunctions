function(precompile ProjectName HeaderFileName type)
    if(type STREQUAL PRIVATE)
        set(CompileType PRIVATE)
    elseif(type STREQUAL PUBLIC)
        set(CompileType PUBLIC)
    endif ()
    target_precompile_headers(${ProjectName} ${CompileType} ${HeaderFileName} )
endfunction()