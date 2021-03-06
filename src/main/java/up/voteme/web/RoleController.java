package up.voteme.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import up.voteme.domain.Role;
import up.voteme.service.RoleService;


@Controller
@RequestMapping("/api/roles")
public class RoleController {

	private static final Logger logger = LoggerFactory
			.getLogger(RoleController.class);
	@Autowired
	RoleService roleService;
	
	@RequestMapping(method = RequestMethod.GET)
    public @ResponseBody List<Role> getRolesInJSON() {   
        List<Role> roles = roleService.findAll();
        return roles; 
    }
}
