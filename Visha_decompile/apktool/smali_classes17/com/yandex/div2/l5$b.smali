.class public final Lcom/yandex/div2/l5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/l5;
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

    iput-object p1, p0, Lcom/yandex/div2/l5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l5$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVisibilityAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l5$b;->e(Lex7;Lcom/yandex/div2/DivVisibilityAction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVisibilityAction;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v1, v0, Lcom/yandex/div2/l5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v1

    const-string v2, "download_callbacks"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/yandex/div2/DivDownloadCallbacks;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/l5;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "is_enabled"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v1

    :goto_0
    const-string v1, "log_id"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {v8, v9, v1, v2}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    const-string v1, "readExpression(context, \u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v12, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lacb;->b:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/l5;->f:Lpnb;

    sget-object v16, Lcom/yandex/div2/l5;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "log_limit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    const-string v1, "payload"

    invoke-static {v8, v9, v1}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/json/JSONObject;

    sget-object v1, Lacb;->e:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "referer"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v17

    const-string v3, "scope_id"

    invoke-static {v8, v9, v3}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    iget-object v0, v0, Lcom/yandex/div2/l5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object v0

    const-string v3, "typed"

    invoke-static {v8, v9, v3, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/yandex/div2/DivActionTyped;

    const-string v0, "url"

    invoke-static {v8, v9, v0, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    sget-object v5, Lcom/yandex/div2/l5;->g:Lpnb;

    sget-object v21, Lcom/yandex/div2/l5;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "visibility_duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v21, v0

    :goto_2
    sget-object v5, Lcom/yandex/div2/l5;->h:Lpnb;

    sget-object v22, Lcom/yandex/div2/l5;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "visibility_percentage"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v6, v22

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v13, v22

    goto :goto_3

    :cond_3
    move-object v13, v0

    :goto_3
    move-object v2, v14

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivVisibilityAction;-><init>(Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v14
.end method

.method public e(Lex7;Lcom/yandex/div2/DivVisibilityAction;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/l5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->P2()Lyi5;

    move-result-object v2

    const-string v3, "download_callbacks"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "is_enabled"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "log_id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "log_limit"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "payload"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->getPayload()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "referer"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "scope_id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div2/l5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h1()Lyi5;

    move-result-object p0

    const-string v3, "typed"

    invoke-static {p1, v0, v3, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "url"

    invoke-virtual {p2}, Lcom/yandex/div2/DivVisibilityAction;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {p1, v0, p0, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p0, "visibility_duration"

    iget-object v1, p2, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "visibility_percentage"

    iget-object p2, p2, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
