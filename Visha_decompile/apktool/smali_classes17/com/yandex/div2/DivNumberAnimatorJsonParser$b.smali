.class public final Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivNumberAnimatorJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNumberAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivNumberAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivNumberAnimator;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNumberAnimator;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "context"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivNumberAnimator;

    iget-object v1, v0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "cancel_actions"

    invoke-static {v7, v8, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v9

    sget-object v4, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->f:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivAnimationDirection;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "direction"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    sget-object v11, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->h:Lpnb;

    const-string v3, "duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    const-string v1, "readExpression(context, \u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v13, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "end_actions"

    invoke-static {v7, v8, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v15

    sget-object v6, Lacb;->d:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v1, "end_value"

    invoke-static {v7, v8, v1, v6, v5}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    const-string v1, "readExpression(context, \u2026DOUBLE, NUMBER_TO_DOUBLE)"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "id"

    invoke-static {v7, v8, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    sget-object v17, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->g:Lzbb;

    sget-object v18, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v19, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "interpolator"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v20, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v1

    :goto_1
    iget-object v0, v0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object v0

    const-string v1, "repeat_count"

    invoke-static {v7, v8, v1, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->d:Lcom/yandex/div2/DivCount$b;

    :cond_2
    move-object v6, v0

    const-string v0, "JsonPropertyParser.readO\u2026EPEAT_COUNT_DEFAULT_VALUE"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->i:Lpnb;

    sget-object v21, Lcom/yandex/div2/DivNumberAnimatorJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "start_delay"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object v11, v6

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v0, v21

    :cond_3
    const-string v1, "start_value"

    invoke-static {v7, v8, v1, v13, v15}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    const-string v1, "variable_name"

    invoke-static {v7, v8, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"variable_name\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    move-object v2, v14

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v8, v16

    move-object/from16 v9, v19

    move-object v10, v11

    move-object v11, v0

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivNumberAnimator;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V

    return-object v14
.end method

.method public e(Lex7;Lcom/yandex/div2/DivNumberAnimator;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "cancel_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAnimationDirection;->TO_STRING:Le74;

    const-string v3, "direction"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "duration"

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->getDuration()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "end_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "end_value"

    iget-object v2, p2, Lcom/yandex/div2/DivNumberAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v3, "interpolator"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->c()Lcom/yandex/div2/DivCount;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div2/DivNumberAnimatorJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object p0

    const-string v2, "repeat_count"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "start_delay"

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "start_value"

    iget-object v1, p2, Lcom/yandex/div2/DivNumberAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "type"

    const-string v1, "number_animator"

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "variable_name"

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
