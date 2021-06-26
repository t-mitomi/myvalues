# このファイルはインデントをスペース４ケではなくタブにしている！
from flask import Flask
from flask import render_template,redirect
from flask import request,session
# import sys,os,random
import sqlite3,datetime
app = Flask(__name__)
app.secret_key="SunabacoOnline10NightB"

@app.route("/")
def helloworld():
    return redirect("/index")

@app.route("/index")
def index():
    py_name="Onochang!"
    # return render_template("index.html",name=py_name)
    return render_template("index.html")
    # ﾚﾝﾀﾞｰﾃﾝﾌﾟﾚｰﾄ（ｈｔｍｌファイルパス,ｈｔｍｌ内 {{変数}} に送るデータを代入する


@app.route("/list88")
def list88():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    c.execute("Select id,value,explanation From values88;")
    value_list=[]
    for row in c.fetchall():
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1],"explanation":row[2]})
    c.close()
    conn.close()
    return render_template("list88.html",value_list=value_list,)

@app.route("/list100",methods=["GET"])
def list100():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # SQL文の実行
    # オートインクリメントに挿入するには、nullを挿入する
    # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
    # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Select id,value,explanation From values100;")
    value_list=[]
    # 選択クエリの実行時に１つのレコードを取得する(タプル)
    # user_info=c.fetchone()
    # 選択クエリの実行時に複数のレコードを取得する(タプル)
    # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
    # コミット不要
    for row in c.fetchall():
        # print(row)
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1],"explanation":row[2]})
    # 更新クエリはトランザクションをコミットする
    # conn.commit()
    # カーソル終了
    c.close()
    # 接続終了
    conn.close()
    # チェック出力
    # print(value_list)
    # return render_template("value_list.html",value_list=value_list,user_name=user_name)
    return render_template("list100.html",value_list=value_list,)


@app.route("/selected")
def selected():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Select id,value,explanation From values88;")
    value_list=[]
    for row in c.fetchall():
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1]+":"+row[2]})
    c.close()
    conn.close()
    return render_template("selected.html",value_list=value_list,)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/select10")
def select10():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Select id,value,explanation From values88;")
    value_list=[]
    for row in c.fetchall():
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1]+":"+row[2]})
    c.close()
    conn.close()
    return render_template("select10.html",value_list=value_list,)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/results")
def results():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Select id,value,explanation From values88;")
    value_list=[]
    for row in c.fetchall():
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1]+":"+row[2]})
    c.close()
    conn.close()
    return render_template("results.html",value_list=value_list,)

# 追加の処理
@app.route("/add",methods=["GET"])
def add_get():
    if "user_id" in session:
        # GET は ｈｔｍｌを表示する
        return render_template("add.html")
    else:
        return redirect("/login")

# データを受け取る
@app.route("/add",methods=["POST"])
def add_post():
    user_id=1
    # POST は ｈｔｍｌからnameにつけた名前のデータを受け取る
    task=request.form.get("task")
    # データベースに接続
    conn=sqlite3.connect("myvalues.db")
    # カーソル準備
    c=conn.cursor()
    # SQL文の実行
    # オートインクリメントに挿入するには、nullを挿入する
    # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
    # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
    c.execute("Insert Into task Values (null,?,?);",(user_id,task ,))
    # 更新クエリはトランザクションをコミットする
    conn.commit()
    # カーソル終了
    c.close()
    # 接続終了
    conn.close()
    return redirect("/list")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/value_list",methods=["GET"])
def value_list():
    user_id=1
    # データベースに接続
    conn=sqlite3.connect("myvalues.db")
    # カーソル準備
    c=conn.cursor()
    # SQL文の実行
    # オートインクリメントに挿入するには、nullを挿入する
    # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
    # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Select id,value,explanation From values100;")
    value_list=[]
    # 選択クエリの実行時に１つのレコードを取得する(タプル)
    # user_info=c.fetchone()
    # 選択クエリの実行時に複数のレコードを取得する(タプル)
    # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
    # コミット不要
    for row in c.fetchall():
        # print(row)
        # リスト内タプルを使いやすく保存し直す
        value_list.append({"id":row[0],"task":row[1],"explanation":row[2]})
    # 更新クエリはトランザクションをコミットする
    # conn.commit()
    # カーソル終了
    c.close()
    # 接続終了
    conn.close()
    # チェック出力
    # print(value_list)
    # return render_template("value_list.html",value_list=value_list,user_name=user_name)
    return render_template("value_list.html",value_list=value_list,)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/value_list",methods=["POST"])
def select100():
    # request.form.get("select100")の場合
    user_id=1
    # フォームデータの取得
    print("---------------------------------------------------------")
    print(request.form.get("select100"))
    user100=[user_id]
    user100.append(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))
    user100.append(0)
    for n in range(1,101):
        user100.append(request.form.get("r"+str(n)))
    print("---------------------------------------------------------")
    print(user100)
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # SQL文の実行
    # オートインクリメントに挿入するには、nullを挿入する
    # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
    # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
    # c.execute("Select name from users Where id=?;",(user_id ,))
    # user_name=c.fetchone()[0]
    # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
    c.execute("Insert Into myselect Values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",user100)
    # 選択クエリの実行時に１つのレコードを取得する(タプル)
    # user_info=c.fetchone()
    # 選択クエリの実行時に複数のレコードを取得する(タプル)
    # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
    # 更新クエリはトランザクションをコミットする
    conn.commit()
    # カーソル終了
    c.close()
    # 接続終了
    conn.close()
    # チェック出力
    # print(value_list)
    # return render_template("value_list.html",value_list=value_list,user_name=user_name)
    return render_template("value_list.html",value_list=value_list,)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -






# DBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/list")
def list():
    if "user_id" in session:
        user_id=1
        conn=sqlite3.connect("myvalues.db")
        c=conn.cursor()
        c.execute("Select id,value,explanation From values88;")
        value_list=[]
        # 選択クエリの実行時に１つのレコードを取得する(タプル)
        # user_info=c.fetchone()
        # 選択クエリの実行時に複数のレコードを取得する(タプル)
        # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
        # コミット不要
        for row in c.fetchall():
            # print(row)
            # リスト内タプルを使いやすく保存し直す
            value_list.append({"id":row[0],"task":row[1]+":"+row[2]})
        # conn.commit()
        c.close()
        conn.close()
        # チェック出力
        # print(value_list)
        return render_template("list.html",value_list=value_list,)
    else:
        return redirect("/login")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DBを更新してみよう ｃｒUｄ
@app.route("/edit/<int:id>")
def edit(id):
    if "user_id" in session:
        task_id=int(id)
        # データベースに接続
        conn=sqlite3.connect("myvalues.db")
        # カーソル準備
        c=conn.cursor()
        # SQL文の実行
        # オートインクリメントに挿入するには、nullを挿入する
        # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「 ,」を付けておく
        # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
        c.execute("Select task From task Where id=?;",(task_id ,))
        # 選択クエリの実行時に１つのレコードを取得する(タプル)(1ケ ,)
        task=c.fetchone()[0]
        # 選択クエリの実行時に複数のレコードを取得する(タプル)
        # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
        # コミット不要
        # 更新クエリはトランザクションをコミットする
        # conn.commit()
        # カーソル終了
        c.close()
        # 接続終了
        conn.close()
        # idがなかった時のエラーを防ぐ
        if task is None:
            return "アイテムがありません"
        else:
            item={"id":id,"task":task}
            # チェック出力
        # print(value_list)
        return render_template("edit.html",item=item)
    else:
        return redirect("/login")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# 登録機能
@app.route("/regist",methods=["GET"])
def regist_get():
    if "user_id" in session:
        return redirect("/logout")
    else:
        return render_template("regist.html")

@app.route("/regist",methods=["POST"])
def regist_post():
    # print("-------------------regist_post------------------------")
    if "user_id" in session:
        return redirect("/logout")
    else:
        name    =request.form.get("name")
        password=request.form.get("password")
        conn=sqlite3.connect("myvalues.db")
        c=conn.cursor()
        c.execute("Insert Into users Values (null,?,?,0);",(name,password))
        conn.commit()
        c.close()
        conn.close()
        return redirect("/login")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
@app.route("/login",methods=["GET"])
def login_get():
    if "user_id" in session:
        return redirect("/value_list")
    else:
        return render_template("login.html")

@app.route("/login",methods=["POST"])
def login_post():
    if "user_id" in session:
        return redirect("/list")
    else:
        name    =request.form.get("name")
        password=request.form.get("password")
        conn=sqlite3.connect("myvalues.db")
        c=conn.cursor()
        c.execute("Select id From users Where name=? And password=? And del_flag=0;"
        ,(name,password))
        user_id=c.fetchone()
        conn.commit()
        c.close()
        conn.close()
        # id取れたかで条件分岐 取れなければ 空＝エヌワン
        if user_id is None:
            return render_template("login.html")
        else:
            # ログインが成功したら ユーザーのブラウザ（cookie）にログイン権限を保管する
            session["user_id"]=user_id[0]
            # print(session["user_id"])
            return redirect("/list")

# ログアウト機能
@app.route("/logout")
def logout():
    session.pop("user_id",None)
    return redirect("/login")

@app.route("/page1")
def list1():
    return render_template("page1.html") 



@app.route("/page3",methods=["GET"])
def page3_get():

    return render_template("page3.html")

@app.route("/page3",methods=["POST"])
def page3_post():
    return redirect("/page4")

@app.route("/page4")
def list4():
    return render_template("page4.html")

@app.route("/page5")
def list5():
    return render_template("page5.html")

# ４０４ページ
# @app.errorhandler(404)
# def not_found():
#     return '<a href="/">ページが見つかりませんでした。</a>'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# page2でDBに保存されているものをｈｔｍｌに表示したい
@app.route("/page2",methods=["GET"])
def page2_list():

        # データベースに接続
        conn=sqlite3.connect("values100.db")
        # カーソル準備
        c=conn.cursor()
        # SQL文の実行
        # オートインクリメントに挿入するには、nullを挿入する
        # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
        # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
        # c.execute("Select name from users Where id=?;",(user_id ,))
        # user_name=c.fetchone()[0]
        # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
        c.execute("Select id,value,explanation From values100;")
        value_list=[]
        # 選択クエリの実行時に１つのレコードを取得する(タプル)
        # user_info=c.fetchone()
        # 選択クエリの実行時に複数のレコードを取得する(タプル)
        # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
        # コミット不要
        for row in c.fetchall():
            # print(row)
            # リスト内タプルを使いやすく保存し直す
            value_list.append({"id":row[0],"task":row[1],"explanation":row[2]})
        # 更新クエリはトランザクションをコミットする
        # conn.commit()
        # カーソル終了
        c.close()
        # 接続終了
        conn.close()
        # チェック出力
        # print(value_list)
        # return render_template("value_list.html",value_list=value_list,user_name=user_name)
        return redirect("/page3.html")
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# page2でDBに保存されているものをｈｔｍｌに表示してみよう
@app.route("/value_list",methods=["POST"])
def selectpage2():

        # request.form.get("select100")の場合
        user_id=1
        # フォームデータの取得
        print("---------------------------------------------------------")
        print(request.form.get("select100"))
        user100=[user_id]
        user100.append(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))
        user100.append(0)
        for n in range(1,101):
            user100.append(request.form.get("r"+str(n)))
        print("---------------------------------------------------------")
        print(user100)
        # フォームから 新規登録依頼があった場合
        # 登録してidを取得
        # フォームデータをDBへ
        # データベースに接続
        conn=sqlite3.connect("myvalues.db")
        # カーソル準備
        c=conn.cursor()
        # SQL文の実行
        # オートインクリメントに挿入するには、nullを挿入する
        # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
        # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
        # c.execute("Select name from users Where id=?;",(user_id ,))
        # user_name=c.fetchone()[0]
        # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
        c.execute("Insert Into myselect Values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",user100)
        # 選択クエリの実行時に１つのレコードを取得する(タプル)
        # user_info=c.fetchone()
        # 選択クエリの実行時に複数のレコードを取得する(タプル)
        # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
        # 更新クエリはトランザクションをコミットする
        conn.commit()
        # カーソル終了
        c.close()
        # 接続終了
        conn.close()
        # チェック出力
        # print(value_list)
        # return render_template("value_list.html",value_list=value_list,user_name=user_name)
        return redirect("/page3.html")



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -









# ここの下もおまじない（いじるな！）
if __name__=='__main__':
    app.run(debug=True)

# debug=True とすると、記述ミスは丁寧に英語表示される！！
# 実行方法は３つ コマンドで python ファイル名.py macはpython3 ファイル名.py



