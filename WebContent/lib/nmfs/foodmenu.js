var dataNew = {
      "name": "John",
      "mains": [
        { "sku": "001", "group": "FOOD", "subgroup": "Mains", "name": "Steak", "description": "Ribeye", "price": "45.00", "ingredients": "Beef", "expectedServingTimeInMins": 15 },
        { "sku": "002", "group": "FOOD", "subgroup": "Mains", "name": "Lobster", "description": "Lobster tail", "price": "24.73", "ingredients": "Lobster", "expectedServingTimeInMins": 15 },
        { "sku": "003", "group": "FOOD", "subgroup": "Mains", "name": "Roll", "description": "Steak roll", "price": "24.73", "ingredients": "Beef", "expectedServingTimeInMins": 15 },
        { "sku": "001", "group": "FOOD", "subgroup": "Mains", "name": "KitKat", "description": "Tellus eu nullam mi pulvinar.", "price": "5.00", "ingredients": "Beef", "expectedServingTimeInMins": 15 },
        { "sku": "002", "group": "FOOD", "subgroup": "Mains", "name": "Jelly Bean", "description": "Iaculis ut etiam ultrices mattis.", "price": "4.73", "ingredients": "Lobster", "expectedServingTimeInMins": 15 },
        { "sku": "003", "group": "FOOD", "subgroup": "Mains", "name": "Sea Bream", "description": "Et odio aenean mauris.", "price": "24.73", "ingredients": "Beef", "expectedServingTimeInMins": 15 }
      ]
    };
    
   createHtml1=function createHtml1(){
      createHtml(dataNew);
    };
    
    function createHtml(dataNew) {
      let menuElement = document.createElement("div");
      menuElement.id = "menu";

      dataNew["mains"].forEach(element => {
        menuElement.innerHTML += `
      <ons-list-item  onclick="fn.change()" modifier="chevron" class="list-item-container">
        <ons-row>
          <ons-col width="95px">
             <img src="images/steak.jpg" class="thumbnail">
          </ons-col>
          <ons-col>
            <div class="name">
              
            </div>
            <div class="desc">
              
              <br>
              <br>
               ₺
              <ons-icon icon="ion-ios-information" style="color: black" onclick="fn.showDialog('info-dialog')">
              </ons-icon>
            </div>
            <div class="productcount">
              <span class="list-item-note">
                <button class="btn-dec-r" id="dec" onclick="fn.changeCount('-')"><i class="zmdi zmdi-minus-circle-outline zmdi-hc-2x mdc-text-orange-600"></i></button>
                <input class="count-numb mdc-text-orange-300" type="submit" id="productcount" value="0" disabled />
                <button class="btn-inc-r" id="inc" onclick="fn.changeCount('+')"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x mdc-text-orange-600"></i></button>
              </span>
            </div>
          </ons-col>
          <ons-col width="40px"></ons-col>
        </ons-row>
      </ons-list-item>
      `;
      });

      document.getElementsByClassName("nmfs_menu")[0].appendChild(menuElement);
    };
    