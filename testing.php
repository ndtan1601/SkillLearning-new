<?php
include 'includes/header.php';
?>

<div class="container p-3">
    <h1 class="text-center align-items-center">Check attendance</h1>
    <div class="row p-3">
        <div class="col-11">
            <form action="testing_fixed" method="post">
                <input type="date" name="bday" id="datePicker">
                <input type="button" value="date" id="datebtn">
                <!-- <p class="getDate"></p> -->
            </form>
        </div>
        <div class="col-1 text-center">
            <button type="submit" value="submit">Save</button>
        </div>
    </div>
    <div id="carouselExampleControls" class="carousel slide p-3" data-ride="carousel">
        <div class="carousel-inner">
            <div id="2022-06-13" class="carousel-item active">
                <table class="table table-striped">
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
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob Thornton</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="2022-06-21" class="carousel-item">
                <table class="table table-striped">
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
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob Thornton</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <div id="2022-06-23" class="carousel-item">
                <table class="table table-striped">
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
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob Thornton</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        <tr>
                            <th scope="row">5</th>
                            <td>Larry the Bird</td>
                            <td> <input class="checkbox" type="checkbox"> </td>
                            <td> <input type="text"> </td>
                        </tr>

                        </tr>
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

<?php
include 'includes/footer.php';
?>