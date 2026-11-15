.class public final Lcom/yandex/div2/DivActionJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAction;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAction;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivAction;

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v6

    const-string v4, "download_callbacks"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/yandex/div2/DivDownloadCallbacks;

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->b:Ltp3;

    sget-object v5, Lacb;->a:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v12, Lcom/yandex/div2/DivActionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "is_enabled"

    move-object/from16 v1, p1

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    iget-object v1, v9, Lcom/yandex/div2/DivActionTemplate;->c:Ltp3;

    const-string v2, "log_id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v8, v1, v10, v2, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-string v1, "resolveExpression(contex\u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->d:Ltp3;

    sget-object v13, Lacb;->e:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "log_url"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v13

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->z0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->x0()Lyi5;

    move-result-object v6

    const-string v4, "menu_items"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v17

    iget-object v1, v9, Lcom/yandex/div2/DivActionTemplate;->f:Ltp3;

    const-string v2, "payload"

    invoke-static {v8, v1, v10, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lorg/json/JSONObject;

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->g:Ltp3;

    const-string v4, "referer"

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v19

    iget-object v1, v9, Lcom/yandex/div2/DivActionTemplate;->h:Ltp3;

    const-string v2, "scope_id"

    invoke-static {v8, v1, v10, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    iget-object v2, v9, Lcom/yandex/div2/DivActionTemplate;->i:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivActionJsonParser;->c:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAction$Target;->FROM_STRING:Le74;

    const-string v4, "target"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    iget-object v1, v9, Lcom/yandex/div2/DivActionTemplate;->j:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->j1()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivActionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object v5

    const-string v3, "typed"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/yandex/div2/DivActionTyped;

    iget-object v1, v9, Lcom/yandex/div2/DivActionTemplate;->k:Ltp3;

    const-string v3, "url"

    move-object/from16 v0, p1

    move-object v4, v13

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    move-object v2, v14

    move-object v3, v11

    move-object v4, v12

    move-object v5, v7

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivAction;-><init>(Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v14
.end method
