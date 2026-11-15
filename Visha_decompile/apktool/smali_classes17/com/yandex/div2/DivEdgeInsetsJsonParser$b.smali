.class public final Lcom/yandex/div2/DivEdgeInsetsJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivEdgeInsetsJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivEdgeInsetsJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivEdgeInsetsJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivEdgeInsets;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivEdgeInsetsJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivEdgeInsets;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivEdgeInsets;
    .locals 18

    const-string v0, "context"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivEdgeInsets;

    sget-object v10, Lacb;->b:Lzbb;

    sget-object v11, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->h:Lpnb;

    sget-object v12, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "bottom"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    const-string v3, "end"

    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->i:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->j:Lpnb;

    sget-object v14, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "left"

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v14, v1

    :goto_1
    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->k:Lpnb;

    sget-object v15, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "right"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v15, v1

    :goto_2
    const-string v3, "start"

    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->l:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    sget-object v6, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->m:Lpnb;

    sget-object v17, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "top"

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v7, v17

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    sget-object v4, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->g:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v8, v10

    goto :goto_4

    :cond_4
    move-object v8, v1

    :goto_4
    move-object v1, v0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div2/DivEdgeInsets;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivEdgeInsets;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "bottom"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "end"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "left"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "right"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "start"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "top"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v1, "unit"

    invoke-static {p1, p0, v1, p2, v0}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object p0
.end method
