$(function(){

    // テーブル行のドラッグ＆ドロップ【JavaScript】
    $('#sortdata').sortable();

    //テーブル行入れ替え後のセル値を更新
    // sortstopイベントをバインド
    $('#sortdata').bind('sortstop',function(){
        // 番号を設定している要素に対しループ処理
        $(this).find('[name="num_data"]').each(function(idx){
        // タグ内に通し番号を設定（idxは0始まりなので+1する）
        $(this).html(idx+1);
        });
    });

    $('a').on('click', function() {
    return false;
    });
    // jQueryでテーブルの行を操作する（移動・削除・追加） https://qiita.com/zinbe/items/f5be42aa47d0960c7195
    $('.rowup').click(function() {
        let $row = $(this).closest("tr");
        if($('tr').index($row)<=1){
            return false;
        }
        let $row_prev = $row.prev("tr");
        if($row_prev.length) {
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