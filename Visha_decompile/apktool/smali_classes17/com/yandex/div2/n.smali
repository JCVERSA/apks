.class public final Lcom/yandex/div2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmitTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n;->b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionSubmit;

    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->a:Ltp3;

    const-string v2, "container_id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {p1, v1, p3, v2, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "resolveExpression(contex\u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v7

    iget-object v2, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v8

    const-string v6, "on_fail_actions"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->c:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v7

    iget-object v3, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v8

    const-string v6, "on_success_actions"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->d:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->d1()Lyi5;

    move-result-object v8

    iget-object p0, p0, Lcom/yandex/div2/n;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b1()Lyi5;

    move-result-object v9

    const-string v7, "request"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "resolve(context, templat\u2026tRequestJsonEntityParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivActionSubmit$Request;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/div2/DivActionSubmit;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivActionSubmit$Request;)V

    return-object v0
.end method
