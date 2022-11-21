<%@page import ="Clases.Doctores" %>
<%@page import ="Clases.Pacientes" %>
<%@page import ="java.sql.*" %>
<%!Doctores doc;
String Cedula,Curp,Nombre,Apellidos;
ResultSet rs;
Pacientes pa;%>
<%doc = new Doctores();
rs = doc.pacientesSoli();
pa = new Pacientes();
Cedula = request.getParameter("CEDULA");
doc = doc.obtenerD(Cedula);%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/verPacientesDoctor.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
    <div class="sidebar">
        <div class="logo-details">
          <i class='bx bxl-c-plus-plus icon'></i>
            <div class="logo_name">Glucky</div>
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
          <li>
            <a>
              <i class='bx bx-grid-alt'></i>
              <span class="links_name">Panel de control</span>
            </a>
            <!-- Inicio del form-->

            <form action="dashboardDoctores.jsp" method="post" class="forminvi">
                    
              <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
            
            
              <input type="submit" value="Enviarcurp" class="forminvibu">
              
            </form> 

  <!-- Final del form-->
             <span class="tooltip">Centro de información</span>
          </li>
          <li>
           <a>
             <i class='bx bx-user' ></i>
             <span class="links_name">Pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi" method="post">
                    
            <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Buscar pacientes</span>
         </li>
         <li>
           <a>
             <i class='bx bx-chat' ></i>
             <span class="links_name">Chateo con pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi" method="post">
                    
            <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Chatear con pacientes</span>
         </li>
       
         <li>
           <a>
             <i class='bx bx-circle' ></i>
             <span class="links_name">Peticiones</span>
           </a>
           <span class="tooltip">Ver peticiones</span>
         </li>
         <li>
           <a href="#">
             <i class='bx bx-book-bookmark' ></i>
             <span class="links_name">Citas</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi" method="post">
                    
               <input type="text" name="CEDULA" value="<%=Cedula%>" class="forminvitex"><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver mi agenda de citas</span>
         </li>
         
        
         <li class="profile">
             <div class="profile-details">
               <!--<img src="profile.jpg" alt="profileImg">-->
               <div class="name_job">
                 <div class="name">Nombre <%=doc.getNombre()%></div>
                 <div class="job">Doctor</div>
               </div>
             </div>
                 <a href="../index.html"><i class='bx bx-log-out' id="log_out" ></i></a>
         </li>
        </ul>
      </div>
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias <%=doc.getNombre()%> <%=doc.getApellidos()%></div>
      <div class="content">

        <br>
        <div class=textoarriba>
            Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimientos de tu diabetes en remoto.
        </div> 
          <br>
          <!-- Aquí va el contenido de todo lo que quieran poner -->
        
         <br>
        

    <!-- Aquí abre el div de contenido de un doctor -->
    <%while (rs.next()==true){
        if(rs.getString("Cedula").equals(Cedula)){
        Curp =rs.getString("Curp");
        pa=pa.obtenerPa(Curp);
        if(pa!=null){
        Nombre = pa.getNombre();
        Apellidos =pa.getApellidos();
    %>
        <div class=doctoresmenu>
            <div class="doctores">
                <div class=cuadradoblanco>
                </div> 
                <div class="puestodoc">
                    <div class="puesto">
                        Paciente 
                    </div>
                    <div class="nombredoc">
                    Nombre <%=Nombre%> <%=Apellidos%> 
                    </div>  
                    Paciente disponible
                </div>
            </div>
        </div> 
        <div class=cuadradoblancodos>
            <form action="Aceptarpaciente.jsp" class="formu">
              <input type="text"  name="CURP" value="<%=Curp%>" class="forminvitexDOS"   ><br>
              <input type="text"  name="CEDULA" value="<%=Cedula%>" class="forminvitexDOS"   ><br>
            <input type="submit" value="Aceptar" class="formi">
            </form>

        <br>

        <div> ㅤㅤㅤㅤ </div>

            <form action="#" class="formu3">
              <input type="text" id="CURP" name="CURP" value="#" class="forminvitexDOS" disabled  ><br>
              <input type="text"  name="CEDULA" value="<%=Cedula%>" class="forminvitexDOS"   ><br>
            <input type="submit" value="X" class="formi">
            </form>
        </div> 
    <%}
    }
   }%>
    <!-- Aquí cierra un div entero de contenido de doctor -->
        


        <br>
      </div>
  </div>

    
</section>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
</html>