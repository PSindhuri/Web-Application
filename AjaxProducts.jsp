<%@ page import = "java.util.*;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
	
	<p>Main content</p>
		
		<div class="wrapper">
	<c:forEach items="${p_beans_jadrn043}" var="item">
	
	 <div class="box">
	
    <img src="/~jadrn043/proj1/_uploadDIR_/${item.image}"/> 
   
    
	 <table>
          
			<tr><td>${item.model}</td> <br></tr>
            <tr><td>Cost : $ ${item.retail}</td></tr>
			<tr><td STYLE="font-style: italic"> <font color="Orange" >${item.qmessage}</td></tr>
			<tr><td>
    			
			</td></tr>
		</tr>
		</table>
		
  <button onclick="document.getElementById('${item.sku}').style.display='block'" class="w3-button w3-black">View Details</button>

  <div id="${item.sku}" class="w3-modal" >
    <div class="w3-modal-content" style="border-style: solid;border-color: blue;border-width: 5px;">
      
        <span onclick="document.getElementById('${item.sku}').style.display='none'" class="w3-button w3-display-topright w3-xlarge" text-align="right">Close</span>
         <p> <img float = "right" src="/~jadrn043/proj1/_uploadDIR_/${item.image}"/> </p>
        
	 <table>

	  	
	  	<tr><td> Category : ${item.category}</td></tr> 
	  		<tr><td> Vendor : ${item.vendor}</td></tr> 
			<tr><td>Manufacturer ID : ${item.model}</td> <br></tr>
		  	<tr><td>Desciption : ${item.description}</td></tr> 
		  	<tr><td>Features : ${item.features}</td></tr> 
		    <tr><td>Cost : $ ${item.retail}</td></tr>
			
		
		</table>
		
          <label><b>Enter Quantity</b></label>   <input type="text" name="q${item.sku}" id="q${item.sku}" min="1" max="${item.quantity}"> </td>     
		 <button id ="b${item.sku}" class="cartB" onclick="updateShop('${item.sku}',${item.quantity})">Add To Cart</button> <br>
		 <input type="text" name="q${item.quantity}" id="q${item.quantity}" size="40px"value="${item.quantity}"disabled>
		 <p>   </p>
		 <p>   </p>
    </div>
  </div>
		
    
		</div>

	</c:forEach>

        </div>
<p>        </p>
