.class public final Lcom/yandex/div2/DivActionJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAction;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivAction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAction;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "context"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivAction;

    iget-object v1, v0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v1

    const-string v2, "download_callbacks"

    invoke-static {v7, v8, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/yandex/div2/DivDownloadCallbacks;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v10, Lcom/yandex/div2/DivActionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "is_enabled"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v4, v10

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    const-string v1, "log_id"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {v7, v8, v1, v2}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    const-string v1, "readExpression(context, \u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lacb;->e:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "log_url"

    invoke-static {v7, v8, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    iget-object v3, v0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->x0()Lyi5;

    move-result-object v3

    const-string v10, "menu_items"

    invoke-static {v7, v8, v10, v3}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v10

    const-string v3, "payload"

    invoke-static {v7, v8, v3}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/json/JSONObject;

    const-string v3, "referer"

    invoke-static {v7, v8, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    const-string v3, "scope_id"

    invoke-static {v7, v8, v3}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    sget-object v3, Lcom/yandex/div2/DivActionJsonParser;->c:Lzbb;

    sget-object v15, Lcom/yandex/div2/DivAction$Target;->FROM_STRING:Le74;

    move-object/from16 v16, v13

    const-string v13, "target"

    invoke-static {v7, v8, v13, v3, v15}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v0, v0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object v0

    const-string v3, "typed"

    invoke-static {v7, v8, v3, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivActionTyped;

    const-string v3, "url"

    invoke-static {v7, v8, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    move-object v2, v14

    move-object v3, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, v16

    move-object v11, v13

    move-object v12, v0

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivAction;-><init>(Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v14
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAction;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    iget-object v2, p0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v2

    const-string v3, "download_callbacks"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "is_enabled"

    iget-object v2, p2, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "log_id"

    iget-object v2, p2, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAction;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "log_url"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->x0()Lyi5;

    move-result-object v3

    const-string v4, "menu_items"

    invoke-static {p1, v0, v4, v1, v3}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "payload"

    iget-object v3, p2, Lcom/yandex/div2/DivAction;->f:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1, v3}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "referer"

    iget-object v3, p2, Lcom/yandex/div2/DivAction;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v3, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "scope_id"

    iget-object v3, p2, Lcom/yandex/div2/DivAction;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAction;->i:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div2/DivAction$Target;->TO_STRING:Le74;

    const-string v4, "target"

    invoke-static {p1, v0, v4, v1, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAction;->j:Lcom/yandex/div2/DivActionTyped;

    iget-object p0, p0, Lcom/yandex/div2/DivActionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object p0

    const-string v3, "typed"

    invoke-static {p1, v0, v3, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "url"

    iget-object p2, p2, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
