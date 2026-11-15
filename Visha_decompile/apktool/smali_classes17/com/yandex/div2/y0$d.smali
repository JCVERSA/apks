.class public final Lcom/yandex/div2/y0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/y0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDisappearActionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/y0$d;->b(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDisappearAction;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDisappearAction;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v1, "context"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivDisappearAction;

    iget-object v2, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->a:Ltp3;

    sget-object v12, Lacb;->b:Lzbb;

    sget-object v13, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/y0;->f:Lpnb;

    sget-object v15, Lcom/yandex/div2/y0;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "disappear_duration"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v12

    move-object v6, v13

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->b:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/y0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/y0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v6

    const-string v4, "download_callbacks"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/yandex/div2/DivDownloadCallbacks;

    iget-object v2, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->c:Ltp3;

    sget-object v5, Lacb;->a:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v8, Lcom/yandex/div2/y0;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "is_enabled"

    move-object/from16 v1, p1

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v17, v8

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    :goto_1
    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->d:Ltp3;

    const-string v2, "log_id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v8

    const-string v1, "resolveExpression(contex\u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->e:Ltp3;

    sget-object v7, Lcom/yandex/div2/y0;->g:Lpnb;

    sget-object v18, Lcom/yandex/div2/y0;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "log_limit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v1

    :goto_2
    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->f:Ltp3;

    const-string v2, "payload"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    iget-object v2, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->g:Ltp3;

    sget-object v7, Lacb;->e:Lzbb;

    sget-object v20, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "referer"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v7

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->h:Ltp3;

    const-string v2, "scope_id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->i:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/y0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->j1()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/y0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object v5

    const-string v3, "typed"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/yandex/div2/DivActionTyped;

    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->j:Ltp3;

    const-string v3, "url"

    move-object/from16 v0, p1

    move-object v4, v7

    move-object/from16 v5, v20

    invoke-static/range {v0 .. v5}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    iget-object v1, v10, Lcom/yandex/div2/DivDisappearActionTemplate;->k:Ltp3;

    sget-object v6, Lcom/yandex/div2/y0;->h:Lpnb;

    sget-object v10, Lcom/yandex/div2/y0;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "visibility_percentage"

    move-object v4, v12

    move-object v5, v13

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v13, v10

    goto :goto_3

    :cond_3
    move-object v13, v0

    :goto_3
    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v20

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivDisappearAction;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v14
.end method
