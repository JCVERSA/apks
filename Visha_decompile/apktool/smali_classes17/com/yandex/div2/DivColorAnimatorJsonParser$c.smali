.class public final Lcom/yandex/div2/DivColorAnimatorJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivColorAnimatorJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivColorAnimatorTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivColorAnimatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivColorAnimatorTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivColorAnimatorTemplate;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v25, Lcom/yandex/div2/DivColorAnimatorTemplate;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v13

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "cancel_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v15, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v14, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivColorAnimatorJsonParser;->f:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    sget-object v8, Lcom/yandex/div2/DivAnimationDirection;->FROM_STRING:Le74;

    const-string v4, "direction"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026ionDirection.FROM_STRING)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->b:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v18, Lcom/yandex/div2/DivColorAnimatorJsonParser;->h:Lpnb;

    const-string v4, "duration"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v8, v17

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readFieldWithExpression(\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->d:Ltp3;

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v13

    :goto_3
    iget-object v2, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "end_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lacb;->f:Lzbb;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v13

    :goto_4
    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "end_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v11

    move-object/from16 v20, v8

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readFieldWithExpression(\u2026lue, STRING_TO_COLOR_INT)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->f:Ltp3;

    goto :goto_5

    :cond_5
    move-object v2, v13

    :goto_5
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readField(context, data,\u2026llowOverride, parent?.id)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivColorAnimatorJsonParser;->g:Lzbb;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->g:Ltp3;

    move-object/from16 v21, v2

    goto :goto_6

    :cond_6
    move-object/from16 v21, v13

    :goto_6
    sget-object v22, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    const-string v4, "interpolator"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v23, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v22

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026Interpolator.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->h:Ltp3;

    move-object v6, v2

    goto :goto_7

    :cond_7
    move-object v6, v13

    :goto_7
    iget-object v0, v0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->t2()Lyi5;

    move-result-object v7

    const-string v4, "repeat_count"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    const-string v2, "readOptionalField(contex\u2026vCountJsonTemplateParser)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->i:Ltp3;

    move-object v7, v2

    goto :goto_8

    :cond_8
    move-object v7, v13

    :goto_8
    sget-object v22, Lcom/yandex/div2/DivColorAnimatorJsonParser;->i:Lpnb;

    const-string v4, "start_delay"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v24, v8

    move-object/from16 v8, v17

    move-object/from16 v16, v9

    move-object/from16 v9, v22

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, START_DELAY_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->j:Ltp3;

    move-object v7, v2

    goto :goto_9

    :cond_9
    move-object v7, v13

    :goto_9
    const-string v4, "start_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v11

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v2

    const-string v3, "readOptionalFieldWithExp\u2026lue, STRING_TO_COLOR_INT)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v13, v1, Lcom/yandex/div2/DivColorAnimatorTemplate;->k:Ltp3;

    :cond_a
    const-string v1, "variable_name"

    invoke-static {v12, v10, v1, v11, v13}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v1

    const-string v3, "readField(context, data,\u2026de, parent?.variableName)"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v25

    move-object/from16 v15, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    invoke-direct/range {v13 .. v24}, Lcom/yandex/div2/DivColorAnimatorTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v25
.end method

.method public e(Lex7;Lcom/yandex/div2/DivColorAnimatorTemplate;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "cancel_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAnimationDirection;->TO_STRING:Le74;

    const-string v3, "direction"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "duration"

    iget-object v2, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "end_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->e:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "end_value"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "id"

    iget-object v3, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->g:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v4, "interpolator"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->h:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivColorAnimatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t2()Lyi5;

    move-result-object p0

    const-string v3, "repeat_count"

    invoke-static {p1, v0, v3, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "start_delay"

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->i:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p0, "start_value"

    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->j:Ltp3;

    invoke-static {p1, v0, p0, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "type"

    const-string v1, "color_animator"

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "variable_name"

    iget-object p2, p2, Lcom/yandex/div2/DivColorAnimatorTemplate;->k:Ltp3;

    invoke-static {p1, v0, p0, p2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object v0
.end method
