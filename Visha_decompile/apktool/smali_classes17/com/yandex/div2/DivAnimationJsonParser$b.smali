.class public final Lcom/yandex/div2/DivAnimationJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAnimationJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivAnimationJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivAnimationJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAnimation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivAnimationJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivAnimation;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAnimation;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/yandex/div2/DivAnimation;

    sget-object v10, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivAnimationJsonParser;->h:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivAnimationJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v12

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v1

    :goto_0
    sget-object v7, Lacb;->d:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v1, "end_value"

    invoke-static {v8, v9, v1, v7, v14}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    sget-object v4, Lcom/yandex/div2/DivAnimationJsonParser;->f:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v16, Lcom/yandex/div2/DivAnimationJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "interpolator"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    iget-object v1, v0, Lcom/yandex/div2/DivAnimationJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v1

    const-string v2, "items"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v17

    sget-object v1, Lcom/yandex/div2/DivAnimationJsonParser;->g:Lzbb;

    sget-object v2, Lcom/yandex/div2/DivAnimation$Name;->FROM_STRING:Le74;

    const-string v3, "name"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    const-string v1, "readExpression(context, \u2026imation.Name.FROM_STRING)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/yandex/div2/DivAnimationJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object v0

    const-string v1, "repeat"

    invoke-static {v8, v9, v1, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/yandex/div2/DivAnimationJsonParser;->d:Lcom/yandex/div2/DivCount$c;

    :cond_2
    move-object v5, v0

    const-string v0, "JsonPropertyParser.readO\u2026) ?: REPEAT_DEFAULT_VALUE"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v18, Lcom/yandex/div2/DivAnimationJsonParser;->i:Lpnb;

    sget-object v19, Lcom/yandex/div2/DivAnimationJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "start_delay"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v10

    move-object v4, v12

    move-object v10, v5

    move-object/from16 v5, v18

    move-object v12, v6

    move-object/from16 v6, v19

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v0, v19

    :cond_3
    const-string v1, "start_value"

    invoke-static {v8, v9, v1, v7, v14}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    move-object v2, v11

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v12

    move-object v8, v10

    move-object v9, v0

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/yandex/div2/DivAnimation;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAnimation;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "duration"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "end_value"

    iget-object v2, p2, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v3, "interpolator"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivAnimationJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v2

    const-string v3, "items"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivAnimation$Name;->TO_STRING:Le74;

    const-string v3, "name"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->f:Lcom/yandex/div2/DivCount;

    iget-object p0, p0, Lcom/yandex/div2/DivAnimationJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object p0

    const-string v2, "repeat"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "start_delay"

    iget-object v1, p2, Lcom/yandex/div2/DivAnimation;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "start_value"

    iget-object p2, p2, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
