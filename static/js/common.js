$(function(){
    $('a').on('click', function() {
      return false;
    });
    // jQueryでテーブルの行を操作する（移動・削除・追加） https://qiita.com/zinbe/items/f5be42aa47d0960c7195
    $('.rowup').click(function() {
        
        let $row = $(this).closest("tr");
        let $row_prev = $row.prev("tr");
        if($row.prev.length) {
            $row.insertBefore($row_prev);
        }

    });
    $('.rowdown').click(function() {

        let $row = $(this).closest("tr");
        let $row_next = $row.next("tr");
        if($row_next.length) {
            $row.insertAfter($row_next);
        }

    });
});