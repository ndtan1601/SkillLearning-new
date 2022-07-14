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