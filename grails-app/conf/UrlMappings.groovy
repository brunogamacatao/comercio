class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"site")
		"/admin"(view:"/index")
		"500"(view:'/error')
	}
}
