.class public final Lcom/yandex/div2/DivColorAnimatorJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivColorAnimatorJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivColorAnimatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivColorAnimator;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivColorAnimator;
    .locals 24

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

    new-instance v14, Lcom/yandex/div2/DivColorAnimator;

    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "cancel_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v11

    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivColorAnimatorJsonParser;->f:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAnimationDirection;->FROM_STRING:Le74;

    sget-object v12, Lcom/yandex/div2/DivColorAnimatorJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "direction"

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->c:Ltp3;

    sget-object v13, Lacb;->b:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivColorAnimatorJsonParser;->h:Lpnb;

    const-string v4, "duration"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v13

    move-object v6, v15

    invoke-static/range {v1 .. v7}, Lsa5;->i(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v7

    const-string v1, "resolveExpression(contex\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->d:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "end_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v16

    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->e:Ltp3;

    sget-object v17, Lacb;->f:Lzbb;

    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "end_value"

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    const-string v1, "resolveExpression(contex\u2026LOR, STRING_TO_COLOR_INT)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->f:Ltp3;

    const-string v2, "id"

    invoke-static {v8, v1, v10, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.id, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/String;

    iget-object v2, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->g:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivColorAnimatorJsonParser;->g:Lzbb;

    sget-object v20, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v21, Lcom/yandex/div2/DivColorAnimatorJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "interpolator"

    move-object/from16 v1, p1

    move-object/from16 v22, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v21, v1

    :goto_1
    iget-object v1, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->h:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u2()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object v5

    const-string v3, "repeat_count"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/yandex/div2/DivColorAnimatorJsonParser;->d:Lcom/yandex/div2/DivCount$b;

    :cond_2
    move-object v7, v0

    const-string v0, "JsonFieldResolver.resolv\u2026EPEAT_COUNT_DEFAULT_VALUE"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->i:Ltp3;

    sget-object v6, Lcom/yandex/div2/DivColorAnimatorJsonParser;->i:Lpnb;

    sget-object v23, Lcom/yandex/div2/DivColorAnimatorJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "start_delay"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v4, v13

    move-object v5, v15

    move-object v13, v7

    move-object/from16 v7, v23

    invoke-static/range {v0 .. v7}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v23, v0

    :goto_2
    iget-object v1, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->j:Ltp3;

    const-string v3, "start_value"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object v1, v9, Lcom/yandex/div2/DivColorAnimatorTemplate;->k:Ltp3;

    const-string v2, "variable_name"

    invoke-static {v8, v1, v10, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026e, data, \"variable_name\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    move-object v2, v14

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v20

    move-object/from16 v6, v16

    move-object/from16 v7, v22

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    move-object v10, v13

    move-object/from16 v11, v23

    move-object v12, v0

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivColorAnimator;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V

    return-object v14
.end method
