package online

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'Online', action: 'index')
        "500"(controller: 'error')
        "404"(controller: 'error')
        "409"(view:'/notFound')
    }
}
