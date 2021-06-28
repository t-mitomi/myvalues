$(function(){
<<<<<<< HEAD

// テーブル行のドラッグ＆ドロップ【JavaScript】
    $('#sortdata').sortable();

//テーブル行入れ替え後のセル値を更新
=======
    // テーブル行のドラッグ＆ドロップ
    $('#sortdata').sortable();

>>>>>>> 9d8f8d25a723b64a832e916386a16c4888fd3ad1
// sortstopイベントをバインド
$('#sortdata').bind('sortstop',function(){
    // 番号を設定している要素に対しループ処理
    $(this).find('[name="num_data"]').each(function(idx){
      // タグ内に通し番号を設定（idxは0始まりなので+1する）
    $(this).html(idx+1);
    });
<<<<<<< HEAD
    });

=======
});
>>>>>>> 9d8f8d25a723b64a832e916386a16c4888fd3ad1

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
    $("#selected").prop('disabled', true);
    $('input[type="radio"]').on('change',function(){
        // 複数要素に同じ処理 $('セレクタ').each(function(index, element){ 〜 });
        var select_count=0;
        $('input:radio:checked').each(function(idx,elem){
            if(parseInt(elem.value)>0){
                select_count+=1;
            }
            if(select_count>=10){
                $("#selected").prop('disabled', false);
            }else{
                $("#selected").prop('disabled', true);
            }
            console.log(select_count+" 件選択中 " );
            $("#msgarea").text(select_count+" 件選択中 ")
        });
    });
    if($("tr").length!=11){
        $(".select10").prop('disabled', true);
    }
    $('input[type="radio"]').on('change',function(){
        // 複数要素に同じ処理 $('セレクタ').each(function(index, element){ 〜 });
        var select_count=0;
        $('input:radio:checked').each(function(idx,elem){
            if(parseInt(elem.value)>0){
                select_count+=1;
            }
            if(select_count==10){
                $(".select10").prop('disabled', false);
            }else{
                $(".select10").prop('disabled', true);
            }
            console.log(select_count+" 件選択中 " );
            $("#msgarea").text(select_count+" 件選択中 ")
        });
    });
    $(".ranking_decision").prop('disabled', false);
    $('input[type="radio"]').on('change',function(){
        // 複数要素に同じ処理 $('セレクタ').each(function(index, element){ 〜 });
        var select_count=0;
        $('input:radio:checked').each(function(idx,elem){
            if(parseInt(elem.value)>0){
                select_count+=1;
            }
            if(select_count==10){
                $(".ranking_decision").prop('disabled', false);
            }else{
                $(".ranking_decision").prop('disabled', true);
            }
            console.log(select_count+" 件選択中 " );
            $("#msgarea").text(select_count+" 件選択中 ")
        });
    });

});