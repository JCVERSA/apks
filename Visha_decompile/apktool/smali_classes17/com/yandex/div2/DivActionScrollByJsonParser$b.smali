.class public final Lcom/yandex/div2/DivActionScrollByJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionScrollByJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionScrollByJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollBy;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionScrollBy;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "context"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/yandex/div2/DivActionScrollBy;

    sget-object v3, Lacb;->a:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v9, Lcom/yandex/div2/DivActionScrollByJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "animated"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    const-string v0, "id"

    sget-object v1, Lacb;->c:Lzbb;

    invoke-static {v6, v7, v0, v1}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v10

    const-string v0, "readExpression(context, \u2026\"id\", TYPE_HELPER_STRING)"

    invoke-static {v10, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v13, Lcom/yandex/div2/DivActionScrollByJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "item_count"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v13, v0

    :goto_1
    sget-object v14, Lcom/yandex/div2/DivActionScrollByJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "offset"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v14, v0

    :goto_2
    sget-object v3, Lcom/yandex/div2/DivActionScrollByJsonParser;->f:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivActionScrollBy$Overflow;->FROM_STRING:Le74;

    sget-object v11, Lcom/yandex/div2/DivActionScrollByJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "overflow"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v6, v11

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivActionScrollBy;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v8
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionScrollBy;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivActionScrollBy;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "animated"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "id"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollBy;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "item_count"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollBy;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "offset"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollBy;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionScrollBy;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivActionScrollBy$Overflow;->TO_STRING:Le74;

    const-string v1, "overflow"

    invoke-static {p1, p0, v1, p2, v0}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p2, "type"

    const-string v0, "scroll_by"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
