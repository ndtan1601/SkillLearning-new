<?php
include 'includes/header.php';
$servername = "localhost";
$username = "root";
$password = "";
try
{
    $conn1 = new PDO("mysql:host=$servername;dbname=skillshare", $username, $password);
    // Set the PDO error mode to exception
    $conn1->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}
var_dump($GLOBALS);
?>

    <?php if ($_SESSION['teacher'] == true): ?>
        <div class="container p-3">
            <h1 class="text-center align-items-center">Check attendance</h1>
            <div class="row p-3">
                <div class="tab tab-2 p-3">
                    <form action="testing.php" method="post">
                        Name: <input type="text" name="name" id="name"><br>
                        Date: <input type="date" name="bday"><br>
                        Attendance: <input type="checkbox" name="attendance" id="attendance"><br>
                        Note: <input type="text" name="note" id="note"><br>
                        <div class="col-7">
                            <div class="col-1 text-center">
                                <button value="addtable">Add table</button>
                            </div>
                            <div class="col-1 text-center">
                                <button value="add">Add</button>
                            </div>
                            <div class="col-1 text-center">
                                <button value="edit">Edit</button>
                            </div>
                            <div class="col-1 text-center">
                                <button value="delete">Delete</button>
                            </div>
                            <div class="col-1 text-center">
                                <button type="submit" name="save" value="save">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div id="carouselExampleControls" class="carousel slide p-3" data-interval="false">
                <div class="row" style="width: 60rem; flex-wrap: unset;">
                    <button class="carousel-control-prev bg-transparent col-2" style="position: unset;" type="button" data-target="#carouselExampleControls" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </button>
                    <div class="carousel-inner col-10">
                        <div id="<?php echo $row['date']; ?>" class="carousel-item active">
                            <table class="table table-striped">
                                <tr>
                                    <th>#</th>
                                    <th>Full name</th>
                                    <th>Attendance</th>
                                    <th>Note</th>
                                </tr>
                                <?php
                                $sql = "select name, attendance, note from attendance";
                                $result = $conn1->query($sql);
                                if ($result->rowCount() > 0)
                                {
                                    /*while ($row = $result->fetch(PDO::FETCH_ASSOC))
                                    {
                                        $i = 1;
                                        echo "<tr><td>" . $i . "</td><td>" . $row['name'] . "</td><td>" . $row['attendance'] . "</td><td>" . $row['note'] . "</td></tr>";
                                        i += 1;
                                        echo "</table>";
                                    }*/
                                    $row = $result->fetch(PDO::FETCH_ASSOC);
                                    for ($i = 1; $i <= count($row); $i++)
                                    {
                                        echo "<tr><td>" . $i . "</td><td>" . $row['name'] . "</td><td>" . $row['attendance'] . "</td><td>" . $row['note'] . "</td></tr>" . "<br>";
                                    }
                                    echo "</table>";
                                }
                                else
                                    echo "0";
                                ?>
                            </table>
                        </div>
                    </div>
                    <button class="carousel-control-next bg-transparent col-2" style="position: unset;" type="button" data-target="#carouselExampleControls" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </button>
                </div>
            </div>
        </div>
    <?php else: ?>

    <?php endif; ?>

    

<?php include 'includes/footer.php'; ?>