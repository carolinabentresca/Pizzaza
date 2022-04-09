package Controller;

import Config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorPedido {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView mv = new ModelAndView();
    List datos;
    int id;

    @RequestMapping(value = "menú.htm", method = RequestMethod.GET)
    public ModelAndView ListarMenú() {
        String sql = "select * from pedido";
        datos = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", datos);
        mv.setViewName("menú");
        return mv;
    }

    @RequestMapping(value = "tupedido.htm", method = RequestMethod.GET)
    public ModelAndView mostraPedido(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select id,menú,precio from pedido where id = " + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", datos);
        mv.setViewName("tupedido");
        return mv;
    }

    @RequestMapping(value = "aceptar.htm", method = RequestMethod.GET)
    public ModelAndView getAceptar() {
        mv.setViewName("aceptar");
        return mv;
    }

    @RequestMapping(value = "cancelar.htm", method = RequestMethod.GET)
    public ModelAndView getCancelar() {
        mv.setViewName("cancelar");
        return mv;
    }
}
