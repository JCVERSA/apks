.class public final Lcom/yandex/div2/DivScaleTransitionJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivScaleTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivScaleTransitionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivScaleTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivScaleTransitionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivScaleTransitionTemplate;
    .locals 22

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivScaleTransitionTemplate;

    sget-object v13, Lacb;->b:Lzbb;

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v14

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivScaleTransitionJsonParser;->i:Lpnb;

    const-string v4, "duration"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivScaleTransitionJsonParser;->h:Lzbb;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v14

    :goto_1
    sget-object v8, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    const-string v4, "interpolator"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026Interpolator.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->d:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v14

    :goto_2
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v18, Lcom/yandex/div2/DivScaleTransitionJsonParser;->j:Lpnb;

    const-string v4, "pivot_x"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v1

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026OUBLE, PIVOT_X_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    sget-object v18, Lcom/yandex/div2/DivScaleTransitionJsonParser;->k:Lpnb;

    const-string v4, "pivot_y"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v1

    move-object/from16 v8, v17

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026OUBLE, PIVOT_Y_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v14

    :goto_4
    sget-object v18, Lcom/yandex/div2/DivScaleTransitionJsonParser;->l:Lpnb;

    const-string v4, "scale"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v1

    move-object/from16 v8, v17

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, SCALE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/yandex/div2/DivScaleTransitionTemplate;->f:Ltp3;

    move-object v7, v0

    goto :goto_5

    :cond_5
    move-object v7, v14

    :goto_5
    sget-object v0, Lcom/yandex/div2/DivScaleTransitionJsonParser;->m:Lpnb;

    const-string v4, "start_delay"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object v1, v9

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v8

    const-string v0, "readOptionalFieldWithExp\u2026T, START_DELAY_VALIDATOR)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object/from16 v6, v16

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div2/DivScaleTransitionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->a:Ltp3;

    const-string v1, "duration"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v0, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->b:Ltp3;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, p0, v2, v0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v0, "pivot_x"

    iget-object v1, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "pivot_y"

    iget-object v1, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->d:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v0, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->e:Ltp3;

    const-string v1, "scale"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "start_delay"

    iget-object p2, p2, Lcom/yandex/div2/DivScaleTransitionTemplate;->f:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p2, "type"

    invoke-static {p1, p0, p2, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
