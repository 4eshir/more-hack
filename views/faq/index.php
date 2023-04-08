<style>
h2 {
color: #002850; font-size: 30px; font-weight: normal;
padding: 45px 0 15px;cursor:pointer;
}
.accordion {
border: 1px solid #ddd; border-top: none; margin: 10px 0;
float: left; width: 100%; position: relative;
}
.accordion a {
display: block; text-decoration: none;

}
.accordion h2, .accordion a{
background-color: #fff;
background-image: url(gradient.jpg);
background-image: -moz-linear-gradient(bottom, #f1f1f1, #fff);
background-image: -ms-linear-gradient(bottom, #f1f1f1, #fff);
background-image: -o-linear-gradient(bottom, #f1f1f1, #fff);
background-image: -webkit-linear-gradient(bottom, #f1f1f1, #fff);
background-image: linear-gradient(bottom, #f1f1f1, #fff);
border-top: 1px solid #ddd;
color: #222; font: 14px/30px 'Verdana', sans-serif;
height: 30px; margin: 0; padding: 0; text-indent: 10px;
}
p {
color: #555; font: 12px/18px 'Verdana', sans-serif;
padding: 20px 10px;
}

a[href^="#accordion"] + *{display: none;}
#accordion-css3 :target{display: block;}
</style>

<div id="accordion-css3" class="accordion">
   <a href="#accordion-1">Заголовок 1</a>
   <p id="accordion-1">Здесь находится контент...</p>
   <a href="#accordion-2">Заголовок 2</a>
   <p id="accordion-2">Здесь находится контент...</p>
   <a href="#accordion-3">Заголовок 3</a>
   <div id="accordion-3">
      <p>Здесь находится контент...</p>
      <p>Здесь находится контент...</p>
   </div>
</div>