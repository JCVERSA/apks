.class public final Lcom/yandex/div2/DivSlideTransitionJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSlideTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSlideTransition;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSlideTransition;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;
    .locals 17

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "context"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/div2/DivSlideTransition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v0

    const-string v1, "distance"

    invoke-static {v7, v8, v1, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/div2/DivDimension;

    sget-object v11, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v5, Lcom/yandex/div2/DivSlideTransitionJsonParser;->h:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivSlideTransitionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v0

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivSlideTransitionJsonParser;->f:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivSlideTransition$Edge;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivSlideTransitionJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "edge"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v14, v6

    goto :goto_1

    :cond_1
    move-object v14, v0

    :goto_1
    sget-object v3, Lcom/yandex/div2/DivSlideTransitionJsonParser;->g:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivSlideTransitionJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "interpolator"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v15, v6

    goto :goto_2

    :cond_2
    move-object v15, v0

    :goto_2
    sget-object v5, Lcom/yandex/div2/DivSlideTransitionJsonParser;->i:Lpnb;

    sget-object v16, Lcom/yandex/div2/DivSlideTransitionJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "start_delay"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object/from16 v6, v16

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    move-object v1, v9

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivSlideTransition;-><init>(Lcom/yandex/div2/DivDimension;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v9
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSlideTransition;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSlideTransition;->a:Lcom/yandex/div2/DivDimension;

    iget-object p0, p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object p0

    const-string v2, "distance"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "duration"

    invoke-virtual {p2}, Lcom/yandex/div2/DivSlideTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSlideTransition;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSlideTransition$Edge;->TO_STRING:Le74;

    const-string v2, "edge"

    invoke-static {p1, v0, v2, p0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivSlideTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, v0, v2, p0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p0, "start_delay"

    invoke-virtual {p2}, Lcom/yandex/div2/DivSlideTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p2

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "type"

    const-string p2, "slide"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
