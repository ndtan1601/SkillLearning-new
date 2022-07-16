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

function addHTMLTableRow() {
            var table = document.getElementById("2022/06/13"),
                newRow = table.insertRow(table.length),
                cell1 = newRow.insertCell(0),
                cell2 = newRow.insertCell(1),
                cell3 = newRow.insertCell(2),
                cell4 = newRow.insertCell(3),
                name = document.getElementById("name").value,
                attendance = document.getElementById("attendance"),
                note = document.getElementById("note").value;

            let totalId = table.getElementsByTagName('tr')['length']; //get total num of tr to set id student in class

            cell1.innerHTML = totalId - 1;
            cell2.innerHTML = name;
            if (attendance.checked == true) {
                cell3.innerHTML = '<input type="checkbox" checked>'
            } else {
                cell3.innerHTML = '<input type="checkbox">';
            }
            cell4.innerHTML = note;

}