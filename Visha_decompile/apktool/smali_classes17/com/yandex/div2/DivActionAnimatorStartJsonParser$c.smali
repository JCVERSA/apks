.class public final Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionAnimatorStartJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStartTemplate;
    .locals 22

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

    new-instance v13, Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->a:Ltp3;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "animator_id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readField(context, data,\u2026ride, parent?.animatorId)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->b:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

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

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v18, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->d:Lpnb;

    const-string v4, "duration"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v8, v17

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->d:Ltp3;

    move-object v6, v2

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iget-object v2, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->c9()Lyi5;

    move-result-object v7

    const-string v4, "end_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalField(contex\u2026dValueJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->c:Lzbb;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->e:Ltp3;

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    sget-object v20, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    const-string v4, "interpolator"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object v14, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026Interpolator.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->f:Ltp3;

    move-object v6, v2

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    iget-object v2, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t2()Lyi5;

    move-result-object v7

    const-string v4, "repeat_count"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vCountJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->g:Ltp3;

    move-object/from16 v20, v2

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    :goto_6
    sget-object v21, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->e:Lpnb;

    const-string v4, "start_delay"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v16, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026T, START_DELAY_VALIDATOR)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->h:Ltp3;

    move-object v4, v1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    iget-object v0, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->c9()Lyi5;

    move-result-object v5

    const-string v2, "start_value"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v8}, Lcom/yandex/div2/DivActionAnimatorStartTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v13
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->a:Ltp3;

    const-string v2, "animator_id"

    invoke-static {p1, v0, v2, v1}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAnimationDirection;->TO_STRING:Le74;

    const-string v3, "direction"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "duration"

    iget-object v2, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->c9()Lyi5;

    move-result-object v2

    const-string v3, "end_value"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->e:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v3, "interpolator"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->f:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t2()Lyi5;

    move-result-object v2

    const-string v3, "repeat_count"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "start_delay"

    iget-object v2, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->h:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c9()Lyi5;

    move-result-object p0

    const-string v1, "start_value"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "type"

    const-string p2, "animator_start"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
