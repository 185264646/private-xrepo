package("libcrc")
    set_description("The libcrc package")

    add_urls("https://github.com/185264646/libcrc.git")
    add_versions("1.0", "a5d133f50014ae849d429793ce4757a08a4b9e11")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
