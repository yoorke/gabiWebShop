$(document).ready(function () {
    $('#cartFP').click(function () {
        $.ajax({
            type: 'POST',
            url: '/WebMethods.aspx/GetCart',
            data: '',
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            success: function (msg) {
                $('#cartFPWindow').show();
                $('#dgvCartItems tr').remove();
                $('#dgvCartItemsTemplate').tmpl(JSON.parse(msg.d)).appendTo('#dgvCartItems');
                var total = 0;
                $(JSON.parse(msg.d)).each(function () {
                    total += parseFloat(this.productPrice * this.quantity);
                })
                $('.cartFpTotal')[0].innerText = parseFloat(total).toFixed(2);
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        })
    })
    $('#cartFPWindow').mouseout(function () {
        //$('#cartFPWindow').hide();
    })
    $('#cartFPClose').click(function () {
        $('#cartFPWindow').hide();
        event.preventDefault();
        return false;
    })
})