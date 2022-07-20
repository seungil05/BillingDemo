<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">
    <title>Billing System</title>
</head>
<body>
<div class="row no-gutter">
    <div class="col no-gutter">
        <div class="leftside">
            <h1>Billing System</h1>
            <form class="row g-3" action="${pageContext.request.contextPath}/ServletChange" method="get">
                <h2>Shipping Address:</h2>
                <div class="row g-3">
                    <div class="col">
                        <label for="firstname" class="form-label">First Name</label>
                        <input type="text" class="form-control" placeholder="First name" name="firstname" id="firstname">
                    </div>
                    <div class="col">
                        <label for="lastname" class="form-label">Last Name</label>
                        <input type="text" class="form-control" placeholder="Last name" name="lastname" id="lastname">
                    </div>
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" name="inputEmail4" placeholder="Email@example.com">
                </div>
                <div class="col-6">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input type="text" class="form-control" id="inputAddress" name="inputAddress" placeholder="Street Number City">
                </div>

                <!-- Produkte-->
                <h2>Products:</h2>
                <div class="col-md-6 space">
                    <img src="https://www.simply-yummy.de/files/styles/tec_frontend_large/public/images/recipes/chocolate-chip-cookie-cake.jpg" width="200" height="125">
                </div>
                <div class="col-md-3">
                    <label for="1" class="form-label">Kim Cake</label>
                    <p>Price: 15.9$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="1" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="1"name="1" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.oetker.de/Recipe/Recipes/oetker.de/de-de/baking/image-thumb__135594__RecipeDetail/naked-cake.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="2" class="form-label">Kerry Cake</label>
                    <p>Price: 12.8$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="2" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="2" name="2" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://144f2a3a2f948f23fc61-ca525f0a2beaec3e91ca498facd51f15.ssl.cf3.rackcdn.com/uploads/food_portal_data/recipes/recipe/hero_article_image/501/ac7ba05db08648aac3e7/compressed_Coffee_20and_20walnut_20cake.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="3" class="form-label">Coffee Cake</label>
                    <p>Price: 10.3$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="3" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="3" name="3" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DrEWL7AIN" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="4" class="form-label">Swindon Cake</label>
                    <p>Price: 18.5$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="4" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="4" name="4" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://i.ds.at/Nwjiow/rs:fill:1200:600/plain/2019/05/20/09Cheesecake-Reserve_1.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="5" class="form-label">New York Cheesecake</label>
                    <p>Price: 11.25$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="5" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="5" name="5" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.telegraph.co.uk/content/dam/recipes/2020/08/05/TELEMMGLPICT000234802104-xlarge_trans_NvBQzQNjv4BqFv10vjOE91MzzYNjkOmeGbT5LfTkYhqvBvjfatlPy1M.jpeg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="6" class="form-label">Black Forest Cake</label>
                    <p>Price: 20$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="6" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="6" name="6" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.oetker.ch/Recipe/Recipes/oetker.ch/ch-de/baking/image-thumb__12414__RecipeDetail/chocolate-layer-cake.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="7" class="form-label">Chocolate Cake</label>
                    <p>Price: 8.95$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="7" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="7" name="7" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.oetker.ch/Recipe/Recipes/oetker.ch/ch-de/baking/image-thumb__12896__RecipeDetailsLightBox/red-velvet-cake.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="8" class="form-label">Red Velvet Cake</label>
                    <p>Price: 18.75$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="8" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="8" name="8" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://foodhub.scene7.com/is/image/woolworthsltdprod/2010-vanilla-cupcakes:Desktop-1300x658" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="9" class="form-label">Vanilla Cupcakes</label>
                    <p>Price: 4.5$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="9" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="9" name="9" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://backen.de/backen.de/Recipes/s/S%C3%BC%C3%9Fe%20Cake-Pops/Beauties/image-thumb__1794__teaser-single-card/3YH1WSttYI2mcI2cGkCqYw.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="10" class="form-label">6 Piece Cakepops</label>
                    <p>Price: 10.6$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="10" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="10" name="10" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.oetker.ch/Recipe/Recipes/oetker.ch/ch-de/baking/image-thumb__12884__RecipeDetailsLightBox/prinzessinnen-cakepops.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="11" class="form-label">10 Piece Cakepops</label>
                    <p>Price: 16.2$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="11" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="11" name="11" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.oetker.at/Recipe/Recipes/oetker.at/at-de/baking/image-thumb__132045__RecipeDetailsLightBox/donuts.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="12" class="form-label">4 Box Donuts</label>
                    <p>Price: 14.75$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="12" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="12" name="12" min="0" max="15" value="0">
                </div>
                <div class="col-md-6 space">
                    <img src="https://www.tasty-donuts.de/wp-content/uploads/2021/09/Tasty-Donuts-and-Coffee.jpg" width="200" height="125">
                </div>
                <div class="col-md-3 space">
                    <label for="13" class="form-label">8 Box Donuts</label>
                    <p>Price: 29.5$</p>
                </div>
                <div class="col-md-3 space count">
                    <label for="13" class="form-label">Quantity</label>
                    <input type="number" class="form-control" id="13" name="13" min="0" max="15" value="0">
                </div>
                <div class="col-12 space">
                    <button type="submit" class="btn btn-primary">Order</button>
                </div>
            </form>
        </div>
    </div>
    <div class="col no-gutter">
        <div class="rightside">
            <h2>Your Order</h2>
            <h3>Personal Information</h3>
            <div class="col-md-6 space">
                <p>Name:</p>
            </div>
            <div class="col-md-6 space">
                ${ firstname } ${ lastname }
            </div>

            <div class="col-md-6 space">
                <p>Email:</p>
                ${ email }
            </div>
            <div class="col-md-6 space">
                <p>Adresse:</p>
                ${ address }
            </div>
            <br>
            <h3>Products</h3>
            <div class="col-md-6 space">
                <p>Kim Cake:     ${ rKim }</p>
            </div>
            <div class="col-md-6 space">
                <p>Kerry Cake:     ${ rKerry }</p>
            </div>
            <div class="col-md-12 space">
                <p>Coffee Cake:     ${ rCoffee }</p>
            </div>
            <div class="col-md-12 space">
                <p>Swindon Cake:     ${ rSwindon }</p>
            </div>
            <div class="col-md-12 space">
                <p>New York Cheesecake:     ${ rNewyork }</p>
            </div>
            <div class="col-md-12 space">
                <p>Black Forest Cake:     ${ rBlack }</p>
            </div>
            <div class="col-md-12 space">
                <p>Chocolate Cake:     ${ rChoco }</p>
            </div>
            <div class="col-md-12 space">
                <p>Red Velvet Cake:     ${ rRed }</p>
            </div>
            <div class="col-md-12 space">
                <p>Vanilla Cupcakes:     ${ rVan }</p>
            </div>
            <div class="col-md-12 space">
                <p>6 Piece Cakepops:     ${ rCakeS }</p>
            </div>
            <div class="col-md-12 space">
                <p>10 Piece Cakepops:     ${ rcakeL }</p>
            </div>
            <div class="col-md-12 space">
                <p>4 Box Donuts:     ${ rDonS }</p>
            </div>
            <div class="col-md-12 space">
                <p>8 Box Donuts:     ${ rDonL }</p>
            </div>
            <h3>Total:</h3>
            <div class="col-md-12 space">
                <p>Sub Total:     ${ sub }</p>
            </div>
            <div class="col-md-12 space">
                <p>MWST:     ${ mwst }</p>
            </div>
            <div class="col-md-12 space">
                <p>Total cost:     ${ cost }</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>