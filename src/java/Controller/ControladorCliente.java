package Controller;

import Config.Conexion;
import Modelo.cliente;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorCliente {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView mv = new ModelAndView();

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView getLogin() {
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.GET)
    public ModelAndView Registrar() {
        mv.addObject(new cliente());
        mv.setViewName("registro");
        return mv;
    }

    @RequestMapping(value = "bienvenido.htm", method = RequestMethod.GET)
    public ModelAndView bienvenido() {
        mv.setViewName("bienvenido");
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.POST)
    public ModelAndView Registrar(cliente c) {
        String sql = "insert into cliente(usuario,mail,password)values(?,?,?)";
        try {
            this.jdbcTemplate.update(sql, c.getUsuario(), c.getMail(), c.getPassword());
            return new ModelAndView("redirect:/index.htm");
        } catch (DataAccessException e) {
            e.getMessage();
        }
        return mv;
    }

    @RequestMapping(value = "index.htm", method = RequestMethod.POST)
    public ModelAndView Login(cliente c) {
        String sql = "select usuario from cliente where usuario = ? and password = ?";
        try {
            String usuario = this.jdbcTemplate.queryForObject(sql, new Object[]{c.getUsuario(), c.getPassword()}, String.class);
            return new ModelAndView("redirect:/bienvenido.htm");

        } catch (DataAccessException e) {
            e.getMessage();
        }
        return mv;
    }
}
