.class public final Lcom/yandex/div2/DivSlideTransitionJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSlideTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSlideTransitionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSlideTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransitionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransitionTemplate;
    .locals 19

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

    new-instance v12, Lcom/yandex/div2/DivSlideTransitionTemplate;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivSlideTransitionTemplate;->a:Ltp3;

    move-object v6, v2

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-object v6, v13

    :goto_0
    iget-object v2, v2, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K2()Lyi5;

    move-result-object v7

    const-string v4, "distance"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v1

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalField(contex\u2026ensionJsonTemplateParser)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lacb;->b:Lzbb;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivSlideTransitionTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivSlideTransitionJsonParser;->h:Lpnb;

    const-string v4, "duration"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSlideTransitionJsonParser;->f:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivSlideTransitionTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v8, Lcom/yandex/div2/DivSlideTransition$Edge;->FROM_STRING:Le74;

    const-string v4, "edge"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026nsition.Edge.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSlideTransitionJsonParser;->g:Lzbb;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivSlideTransitionTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    sget-object v17, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    const-string v4, "interpolator"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026Interpolator.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/yandex/div2/DivSlideTransitionTemplate;->e:Ltp3;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v13

    :goto_4
    sget-object v0, Lcom/yandex/div2/DivSlideTransitionJsonParser;->i:Lpnb;

    const-string v4, "start_delay"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object v1, v8

    move-object/from16 v8, v16

    move-object v10, v9

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v7

    const-string v0, "readOptionalFieldWithExp\u2026T, START_DELAY_VALIDATOR)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object v3, v14

    move-object v4, v10

    move-object/from16 v5, v18

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivSlideTransitionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSlideTransitionTemplate;->a:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K2()Lyi5;

    move-result-object p0

    const-string v2, "distance"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "duration"

    iget-object v1, p2, Lcom/yandex/div2/DivSlideTransitionTemplate;->b:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSlideTransitionTemplate;->c:Ltp3;

    sget-object v1, Lcom/yandex/div2/DivSlideTransition$Edge;->TO_STRING:Le74;

    const-string v2, "edge"

    invoke-static {p1, v0, v2, p0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSlideTransitionTemplate;->d:Ltp3;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, v0, v2, p0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "start_delay"

    iget-object p2, p2, Lcom/yandex/div2/DivSlideTransitionTemplate;->e:Ltp3;

    invoke-static {p1, v0, p0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p0, "type"

    const-string p2, "slide"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
