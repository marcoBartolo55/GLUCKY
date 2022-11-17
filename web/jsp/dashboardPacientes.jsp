<%-- 
    Document   : dashboardPacientes
    Created on : 17 nov 2022, 00:21:08
    Author     : Gonzalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../images/iconoglucky.ico">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/dashboardPacientes.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
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
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Buscar...">
         <span class="tooltip">Buscar en la página</span>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Panel de control</span>
        </a>
         <span class="tooltip">Centro de información</span>
      </li>
      <li>
       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">Doctores</span>
       </a>
       <span class="tooltip">Buscar doctores</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-chat' ></i>
         <span class="links_name">Chateo con doctor</span>
       </a>
       <span class="tooltip">Mensajes de mi doctor</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <span class="links_name">Niveles</span>
       </a>
       <span class="tooltip">Estado</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-food-menu' ></i>
         <span class="links_name">Dietas</span>
       </a>
       <span class="tooltip">Ver dietas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-book-bookmark' ></i>
         <span class="links_name">Citas</span>
       </a>
       <span class="tooltip">Ver mi agenda de citas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-heart' ></i>
         <span class="links_name">Tratamientos</span>
       </a>
       <span class="tooltip">Ver mis tratamientos</span>
     </li>
    
     <li class="profile">
         <div class="profile-details">
           <!--<img src="profile.jpg" alt="profileImg">-->
           <div class="name_job">
             <div class="name">Nombre usuario</div>
             <div class="job">Paciente</div>
           </div>
         </div>
         <i class='bx bx-log-out' id="log_out" ></i>
     </li>
    </ul>
  </div>
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias usuario</div>
      <div class="content">

        <br>
         <!--<div class=textoarriba> -->
         <!--   Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimiento s etu diabetes en remoto.-->
         <!--  Para ello el EPS debe registrarse primero en Glucky -->
         <!--  <br>-->
         <!--</div> -->
      
         <!--  Aquí va el contenido de todo lo que quieran poner -->
        
          <div class="row">
            <div class="column">
              <!-- Aquí va el contenido de todo lo que quieran poner -->


              <div class="rowdos">
                <div class="columntercera" >
                    
                    <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatos">
                        
                         <!--   aquí va un nuevo div de textos  -->
                         <div class="nivel">
                            89
                         </div>
                    
                         <div class="categoria">
                            Presión
                         </div>  

                    </div>


                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                     13 
                     Tratamientos
                        <div class="niveldetrata">
                            13 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
                <div class="columntercera" >
                  

                    <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatosgluco">
                        
                        <!--   aquí va un nuevo div de textos  -->
                        <div class="nivelgluco">
                           110
                        </div>
                   
                        <div class="categoria">
                           Azucar
                        </div>  

                     </div>

                      <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                     69 
                     Citas pendientes
                        <div class="niveldetratados">
                            69 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    
                </div>
                <div class="columntercera">

                  <!--   aquí va cada uno de los cuadrados que colocaremos  -->
                  <div class="cuadradodatosdos">
                        
                    <!--   aquí va un nuevo div de textos  -->
                    <div class="niveldos">
                       1
                    </div>

                    <div class="categoriados">
                      
                       Medicina
                    </div>  

                  </div>

                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                      34
                      Dietas a seguir
                        <div class="niveldetratatres">
                            34
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
              </div>


                 <!-- Aquí va la supuesta grafica  -->
              <div class="grafica">

                <div class="textoarriba">jejejeje</div>


               
              
              </div>
                <!-- Aquí va la supuesta grafica  -->

            </div>
            <div class="columna2">
              <!-- Aquí va el contenido de todo lo que quieran poner -->
               
                
                <div class="recuadrogris">
                  
                    Nombre del doctor
                    <br>
                    <br>
                    Avisos
                    <br>
                   
                    <br>
                    <div class="cuadradonoti">
                        
                        ...

                    </div>

                  <!-- Este br se necesita -->
                    <br>
                    <!-- Este br se necesita -->

                    <div class="cuadradonotidos">
                        
                      ...

                    </div>

                    <br>

                    <div class="cuadradonotitres">
                        
                      ...

                    </div>

                    <br>
                    <div class="cuadradonoti">
                        
                        ...

                    </div>

                  <!-- Este br se necesita -->
                    <br>
                    <!-- Este br se necesita -->

                    <div class="cuadradonotidos">
                        
                      ...

                    </div>

                    <br>

                   
          
                    <div class="cuadradonotideabajo">
          
                      Recibe notificaciones sobre tus pacientes y próximas citas

                  </div>

                </div>



            </div>
          </div>

         <br>
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