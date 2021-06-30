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
    return render_template("index.html")
    # ﾚﾝﾀﾞｰﾃﾝﾌﾟﾚｰﾄ（ｈｔｍｌファイルパス,ｈｔｍｌ内 {{変数}} に送るデータを代入する

@app.route("/index",methods=["POST"])
def index_post():
    return redirect("/page2")
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
@app.route("/test",methods=["GET"])
def test_get():
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
    return render_template("test.html",value_list=value_list,)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
@app.route("/test",methods=["POST"])
def test_post():
    user_id=1
    # フォームデータの取得
    print("---")
    print(request.form.get("select100"))
    user100=[user_id]
    user100.append(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))
    user100.append(0)
    for n in range(1,101):
        user100.append(request.form.get("r"+str(n)))
    print("---")
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
    return redirect("/test")

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

# 登録機能
@app.route("/regist",methods=["GET"])
def regist_get():
    if "user_id" in session:
        return redirect("/logout")
    else:
        return render_template("regist.html")

@app.route("/regist",methods=["POST"])
def regist_post():
    # print("-----regist_post----------")
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


@app.route("/page5")
def list5():
    return render_template("page5.html")

@app.route("/page6")
def list6():
    return render_template("page6.html")

@app.route("/page7")
def list7():
    return render_template("page7.html")

@app.route("/pareo")
def pareo():
  return redirect("https://yuchrszk.blogspot.com/2018/07/2.html", code=301)

@app.route("/neko")
def neko():
  return redirect("https://www.azusa.me/blog/?p=2531", code=301)

@app.route("/health")
def health():
  return redirect("https://everyday-evident.net/personal-value-card-sort-activity", code=301)


@app.route("/mental")
def mental():
  return redirect("https://mento-re.com/entry/mentore/katikan/sinndan", code=301)

# ４０４ページ
# @app.errorhandler(404)
# def not_found():
#     return '<a href="/">ページが見つかりませんでした。</a>'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
@app.route("/page2",methods=["GET"])
def page2_get():
        conn=sqlite3.connect("myvalues.db")
        c=conn.cursor()
        c.execute("Select id,value,explanation From values100;")
        value_list=[]
        for row in c.fetchall():
            # print(row)
            # リスト内タプルを使いやすく保存し直す
            value_list.append({"id":row[0],"task":row[1],"explanation":row[2]})
        c.close()
        conn.close()
        # チェック出力
        # print(value_list)
        return render_template("/page2.html",value_list=value_list)


@app.route("/page2",methods=["POST"])
def page2_post():
        user_id=1#ログインなしのユーザーidは 1。
        # print("---")
        # print(request.form.get("select100"))
        user100=[user_id]
        user100.append(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))
        user100.append(0)
        just10=0
        for n in range(1,101):
            valu=int(request.form.get("r"+str(n)))
            if valu>0:
                just10+=1
            user100.append(valu)
        # print("---")
        # print(user100)
        conn=sqlite3.connect("myvalues.db")
        c=conn.cursor()
        # オートインクリメントに挿入するには、nullを挿入する
        # DBとの受け渡しは タプル型 （１データのタプルはデータの後ろに 「,」を付けておく
        # sql文内の変数は 「?」（プレースホルダ）に引数で割り当てる
        # c.execute("Select value,explanation From values Where user_id=?;",(user_id ,))
        c.execute("Insert Into myselect Values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",user100)
        # 選択クエリの実行時に１つのレコードを取得する(タプル)# user_info=c.fetchone()
        # 選択クエリの実行時に複数のレコードを取得する(タプル)
        # [(1,"fafafa"),(2,"dadada"),(3,"sasasa")]...リスト内タプル
        conn.commit()# 更新クエリはトランザクションをコミットする
        c.close()# カーソル終了
        conn.close()# 接続終了
        if just10==10:
            return redirect("/page4")
        else:
            return redirect("/page3")


@app.route("/page3",methods=["GET"])
def page3_get():
    user_id=1
    # page2で選択したvalue
    conn=sqlite3.connect("myvalues.db")
    cur=conn.cursor()
    cur.execute("Select * From myselect Order by savedate desc Limit 1;")
    selected=cur.fetchone()
    # print("------page3  Get1----------")
    # print(selected)
    c=conn.cursor()
    c.execute("Select id,value,explanation From values100;")
    value_list=[]
    i = 4
    for row in c.fetchall():
        # page2で選択されなかったvalueは0点なのでpage3では不要
        if not selected[i]==0:
            # リスト内タプルを使いやすく保存し直す
            value_list.append({"id":row[0],"task":row[1],"explanation":row[2],"emphasis":selected[i]})
        i=i+1
    c.close()
    cur.close()
    conn.close()
    # チェック出力
    # print("----------page3---Get2-------")
    # print(value_list)
    # return render_template("value_list.html",value_list=value_list,user_name=user_name)
    return render_template("page3.html",value_list=value_list,)

@app.route("/page3",methods=["POST"])
def page3_post():
    # print("----------page3---Post request.form-----------")
    # print(request.form)
    # ImmutableMultiDict([('select10', '（仮）10ケの項目を選択決定'), ('r1', '1'), ('r2', '2'), ('r3', '1'), ('r4', '2'), ('r5', '1'), ('r6', '2'), ('r7', '1'), ('r8', '2'), ('r9', '1'), ('r10', '2')])
    user_id=1
    sql0="Insert Into myselect(id,user_id,savedate,del_flag"
    sql1=")Values(null,?,?,0,?,?,?,?,?,?,?,?,?,?);"
    placeholder=[user_id,datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S")]
    # フォームデータの取得
    for tpl in request.form:
        if tpl[0]=="r" and request.form[tpl]!="0":
            sql0+=","+tpl.replace("r","v")
            placeholder.append(int(request.form[tpl]))
    # print("----------page3---Post sql---------------")
    # print(sql0+sql1,placeholder)
    conn=sqlite3.connect("myvalues.db")
    c=conn.cursor()
    # 項目指定の更新文
    c.execute(sql0+sql1,placeholder)
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
    return redirect("/page4")

@app.route("/page4")
def list4():
    user_id=1
    conn=sqlite3.connect("myvalues.db")
    cur=conn.cursor()
    cur.execute("Select * From myselect Order by savedate desc  Limit 1;")
    selected=cur.fetchone()
    # print("------page4  Get1-----")
    # print(selected)
    c=conn.cursor()
    c.execute("Select id,value,explanation From values100;")
    value_list=[]
    i=4
    j=1
    for row in c.fetchall():
        # page3で選択されなかったvalueは0点なのでpage4では不要
        if selected[i] is not None and not selected[i]==0:
            # リスト内タプルを使いやすく保存し直す
            value_list.append({"id":row[0],"value":row[1],"explanation":row[2],"emphasis":selected[i],"best":j})
            j=j+1
        i=i+1
    c.close()
    cur.close()
    conn.close()
    # チェック出力
    # print("----------page4---Get2---")
    # print(value_list)
    # return render_template("value_list.html",value_list=value_list,user_name=user_name)
    return render_template("page4.html",value_list=value_list,)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ここの下もおまじない（いじるな！）
if __name__=='__main__':
    app.run(debug=True)

# debug=True とすると、記述ミスは丁寧に英語表示される！！
# 実行方法は３つ コマンドで python ファイル名.py macはpython3 ファイル名.py
