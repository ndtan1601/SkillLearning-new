<?php
include 'includes/header.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //$class_id = $_REQUEST["ClassID"];
    //$date = $_REQUEST["date"];
    $name = $_REQUEST["name"];
    $attendance = $_REQUEST["attendance"];
    $note = $_REQUEST["note"];
    $sql = "update attendance set name = ?, attendance = ?, note = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sis", $name, $attendance, $note);
    $stmt->execute();
    if ($stmt->affected_rows == 1)
        header("Location: testing.php?saved");
}
?>
<?php if ($_SESSION['teacher'] == true) : ?>
    <div class="container p-3">
        <h1 class="text-center align-items-center">Check attendance</h1>
        <div class="row p-3">
            <div class="col-7">
                <form action="testing_fixed" method="post">
                    <input type="date" name="bday" id="datePicker">
                    <input type="button" value="date" id="datebtn">
                    <!-- <p class="getDate"></p> -->
                </form>
            </div>
            <div class="col-1 text-center">
                <button onclick="duplicatePrevCA();" value="addtable">Add Table</button>
            </div>
            <div class="col-1 text-center">
                <button onclick="addHTMLTableRow();" value="add">Add</button>
            </div>
            <div class="col-1 text-center">
                <button onclick="editHTMLSelectedRow();" value="edit">Edit</button>
            </div>
            <div class="col-1 text-center">
                <button onclick="removeSelectedRow();" value="delete">Delete</button>
            </div>
            <div class="col-1 text-center">
                <button type="submit" value="submit">Save</button>
            </div>
        </div>
        <div class="tab tab-2 p-3">
            <form action="testing.php" method="post">
                Name: <input type="text" name="name" id="name"><br>
                Attendance: <input type="checkbox" name="attendance" id="attendance"><br>
                Note: <input type="text" name="note" id="note">
                <button type="submit">Save</button>
            </form>
        </div>

        <div id="carouselExampleControls" class="carousel slide p-3" data-interval="false">
            <div class="carousel-inner">
                <div id="2022-06-13" class="carousel-item active">
                    <table id="20220613" class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Full Name</th>
                                <th scope="col">Attendance</th>
                                <th scope="col">Note</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark Otto</td>
                                <td> <input type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob Thornton</td>
                                <td> <input class="checkbox" type="checkbox" checked> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="2022-06-21" class="carousel-item">
                    <table id="20220621" class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Attendance</th>
                                <th scope="col">Note</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark Otto</td>
                                <td> <input type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob Thornton</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="2022-06-23" class="carousel-item">
                    <table id="20220623" class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Attendance</th>
                                <th scope="col">Note</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark Otto</td>
                                <td> <input type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob Thornton</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                            <tr>
                                <th scope="row">5</th>
                                <td>Larry the Bird</td>
                                <td> <input class="checkbox" type="checkbox"> </td>
                                <td> abcdefghiklmnopqrstuvwxyz </td>
                        </tbody>
                    </table>
                </div>
            </div>
            <button class="carousel-control-prev bg-transparent" type="button" data-target="#carouselExampleControls" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next bg-transparent" type="button" data-target="#carouselExampleControls" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        function duplicatePrevCA() {
            //console.log("ok");
            // var newCarouselItem = document.createElement('div'),
            //     position = document.getElementsByClassName('carousel-inner')[0];
            // position.appendChild(newCarouselItem);
            var copyFrom = document.getElementsByClassName('active'),
                carousel = document.getElementsByClassName('carousel-inner');
            var cF = [].map.call(copyFrom, copy => copy.innerHTML)[2]; //the first two active class are in header so take the 3rd one
                //carou = [].map.call(carousel, posit => posit.innerHTML)[0]; //get all tables
            //console.log(cF);
            //console.log(pos);
            //position.innerHTML += cF;
            var myRe = /\d{8}/; //identify id of table
            var myArRe = myRe.exec(cF);
            //console.log(myArRe);
            var currentDate = new Date();
            var currentDay = String(currentDate.getDate()),
                currentMonth = currentDate.getMonth() + 1 < 10 ? "0" + String(currentDate.getMonth() + 1) : String(currentDate.getMonth() + 1);
                currentYear = String(currentDate.getFullYear());
            //console.log(currentDay, currentMonth);
            cF = cF.replace(myArRe[0], currentYear + currentMonth + currentDay); //replace the cloned table date id into today
            //console.log(cF);
            var newEl = document.createElement('div');
            newEl.setAttribute('class', 'carousel-item');
            newEl.setAttribute('id', `${currentYear}-${currentMonth}-${currentDay}`);
            newEl.innerHTML = cF;
            var position = document.getElementsByTagName('div')[13];
            position.appendChild(newEl);
            // var createCarouselItem = `<div id="${currentYear}-${currentMonth}-${currentDay}" class="carousel-item"> </div>`;
            // //console.log(createCarouselItem);
            // //createCarouselItem.innerHTML = cF;
            // var myRe2 = />\s</;
            // var myArRe2 = myRe2.exec(createCarouselItem);
            // console.log(myArRe2);
            // createCarouselItem = createCarouselItem.replace(myArRe2[0], ">" + cF + "<");
            // pos += createCarouselItem;
            // console.log(pos);
            // carousel.innerHTML = pos;
        }
    </script>

<?php else : ?>
    <div class="jumbotron jumbotron-fluid">
        <h1>You don't have access to this page. This page is for teachers only!</h1>
    </div>
<?php endif; ?>

<?php
include 'includes/footer.php';
?>