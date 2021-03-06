/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package les.controle;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import les.aplicacao.Resultado;
import les.dominio.Cultura;
import les.dominio.Doenca;
import les.dominio.Endereco;
import les.dominio.EntidadeDominio;
import les.dominio.Grupo;
import les.dominio.Propriedade;
import les.dominio.Talhao;

/**
 *
 * @author gustavo
 */
class TalhaoVH extends AbstractVH {

    public TalhaoVH(){
		super("Grupo");
	}
	
	
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		
		operacao = request.getParameter("OPERACAO");		
		int id=0;
                int doenca_id = 0;
                int propriedade_id=0;
		String descricao =null;	
                Doenca doenca = new Doenca();
                
		
                
		if(operacao.equals("SALVAR")){
			
                    descricao = request.getParameter("txtDescricao");
                   
                    
                
		}else if(operacao.equals("EXCLUIR")){		
                    id  = Integer.parseInt(request.getParameter("txtID"));
                }else if(operacao.equals("CONSULTAR") ){		
                    if (request.getParameter("txtPropriedade_ID") != null){
                        
                        propriedade_id  = Integer.parseInt(request.getParameter("txtPropriedade_ID"));
                        id  = Integer.parseInt(request.getParameter("txtPropriedade_ID"));
                    }
                    
                    if (request.getParameter("txtTalhao_ID") != null){
                        id = Integer.parseInt(request.getParameter("txtTalhao_ID"));
                    }
                    
		}else if(operacao.equals("EDITAR")){
                    if (request.getParameter("txtID") != null){
                        id  = Integer.parseInt(request.getParameter("txtID"));
                    }
 
                    descricao = request.getParameter("txtDescricao");
                   

                    
                }else if(operacao.equals("NOVO")){
                    if (request.getParameter("txtTalhao_ID") != null){
                        id = Integer.parseInt(request.getParameter("txtTalhao_ID"));
                        doenca_id = Integer.parseInt(request.getParameter("txtDoenca_id"));
                        doenca.setId(doenca_id);
                    }
                    
                }	
		
		Talhao talhao = new Talhao();
                Cultura cultura = new Cultura();
                
                talhao.setCultura(cultura);
		talhao.setId(id);
                ArrayList<Doenca> doencas = new ArrayList<Doenca>();
                doencas.add(doenca);
                talhao.getCultura().setDoencas(doencas);
                Propriedade propriedade = new Propriedade();
                propriedade.setId(propriedade_id);
                talhao.setPropriedade(propriedade);
		talhao.setDescricao(descricao);
                
		return talhao;
	}
        
     public void setView(Object resultado, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        operacao = request.getParameter("OPERACAO");		
        Servlet servlet = new Servlet();
        
        if(operacao.equals("SALVAR")){
 
            request.setAttribute("ConsultaPropriedade", resultado);
            RequestDispatcher rd = request.getRequestDispatcher("IndexPropriedade.jsp");	
            
            servlet.init(request);
            rd.forward(request, response);
        } else if(operacao.equals("EXCLUIR")){
            
            request.setAttribute("ConsultaPropriedade", resultado);
            RequestDispatcher rd = request.getRequestDispatcher("IndexPropriedade.jsp");		

            servlet.init(request);
            rd.forward(request, response);
        } else if(operacao.equals("EDITAR")){
            request.setAttribute("ConsultaPropriedade", resultado);
            RequestDispatcher rd = request.getRequestDispatcher("/Propriedade?OPERACAO=CONSULTAR&txtID=0");		
        
            servlet.init(request);
            rd.forward(request, response);
        } else if(operacao.equals("NOVO")){
            request.setAttribute("ConsultaTalhao", resultado);
            RequestDispatcher rd = request.getRequestDispatcher("NewDiario.jsp");		

            rd.forward(request, response);
        }else {
            
            String uri = request.getRequestURI();
            request.setAttribute("SelectTalhao", resultado);
            RequestDispatcher rd;
            Resultado result = (Resultado)resultado;
            List<EntidadeDominio> ls = result.getEntidades();
            
            
            if (uri.equals("/CRUD-web/SelectTalhao")){//se trazer apenas um objeto, manda para tela de editar
                rd = request.getRequestDispatcher("IndexDiario2.jsp");		
            }else if(uri.equals("/CRUD-web/SelectTalhao2")) {
                rd = request.getRequestDispatcher("NewDiario.jsp");	
                request.getRequestURI();
            }else {
                rd = request.getRequestDispatcher("IndexPropriedade.jsp");		
            }
            
            rd.forward(request, response);
        }
    }
}
