// $('.carousel .carousel-item').each(function(){
//     var next = $(this).next();
//     if (!next.length) {
//     next = $(this).siblings(':first');
//     }
//     next.children(':first-child').clone().appendTo($(this));
    
//     for (var i=0;i<2;i++) {
//         next=next.next();
//         if (!next.length) {
//         	next = $(this).siblings(':first');
//       	}
        
//         next.children(':first-child').clone().appendTo($(this));
//       }
// });

$(document).ready(function() {
            let now = new Date();

            let day = ("0" + now.getDate()).slice(-2);
            let month = ("0" + (now.getMonth() + 1)).slice(-2);

            let today = (day) + "-" + (month) + "-" + now.getFullYear();


            $('#datePicker').val(today);

            $('#datebtn').click(function() {

                testClicked();

            });
        });

        function testClicked() {
            $('.getDate').html($('#datePicker').val());
            $result = $('#datePicker').val();
            var dict = [{
                Key: 'attendance1',
                Value: '2022-06-13'
            }, {
                Key: 'attendance2',
                Value: '2022-06-21'
            }, {
                Key: 'attendance3',
                Value: '2022-06-23'
            }];
            
            for (var i = 0; i < dict.length; i++) 
                if (dict[i].Value == $result) {
                    $('.carousel-inner > .active').removeClass('active');
                    $('.carousel-inner > #' + dict[i].Value).addClass('active');
                    break;
                } 
        }

    var rIndex,
        table = document.getElementById('2022/06/13');

            //check empty input
            function checkEmptyInput() {
                var isEmpty = true,
                    name = document.getElementById("name").value;
                
                if(name === "" || name.length >50) {
                    if(name === "") {
                        alert("Name can't be empty");
                    }
                    if(name.length > 50) {
                        alert("Name cannot exceed 50 characters");
                    }
                    isEmpty = true;
                }
                return isEmpty;
            }


function addHTMLTableRow() {
            var newRow = table.insertRow(table.length),
                cell1 = newRow.insertCell(0),
                cell2 = newRow.insertCell(1),
                cell3 = newRow.insertCell(2),
                cell4 = newRow.insertCell(3),
                name = document.getElementById("name").value,
                attendance = document.getElementById("attendance"),
                note = document.getElementById("note").value;

            let totalId = table.getElementsByTagName('tr')['length']; //get total num of tr to set id student in class

            if(!checkEmptyInput()) {
            cell1.innerHTML = totalId - 1;
            cell2.innerHTML = name;
            // if (attendance.checked == true) {
            //     cell3.innerHTML = '<input type="checkbox" checked>'
            // } else {
            //     cell3.innerHTML = '<input type="checkbox">';
            // }
            cell3.innerHTML = attendance.checked == true ? '<input type="checkbox" checked>' : '<input type="checkbox">';
            cell4.innerHTML = note;
            }

            SelectedRow(); //to let delete and edit the newly created
}

function SelectedRow() {
            for(var i = 1; i < table.rows.length; i++) {
                table.rows[i].onclick = function() {
                    //get the selected row index
                    rIndex = this.rowIndex;
                    console.log(rIndex);
                    document.getElementById("name").value = this.cells[1].innerHTML;
                    document.getElementById("attendance").checked = this.cells[2].innerHTML.search("checked") != -1 ? true : false;
                    document.getElementById("note").value = this.cells[3].innerHTML;
                };
            }
}

function editHTMLSelectedRow() {
    var name = document.getElementById("name").value,
        note = document.getElementById("note").value;
    if(!checkEmptyInput()) {
    table.rows[rIndex].cells[1].innerHTML = name;
    table.rows[rIndex].cells[2].innerHTML = document.getElementById("attendance").checked == true ? '<input type="checkbox" checked>' : '<input type="checkbox">';
    table.rows[rIndex].cells[3].innerHTML = note;
    }
}

            function removeSelectedRow() {
                table.deleteRow(rIndex);
                //clear input text
                document.getElementById("name").value = "";
                document.getElementById("attendance").checked = false;
                document.getElementById("note").value = "";
            }


SelectedRow();

