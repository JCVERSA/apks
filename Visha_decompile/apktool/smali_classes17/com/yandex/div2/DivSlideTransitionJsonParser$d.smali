.class public final Lcom/yandex/div2/DivSlideTransitionJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSlideTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSlideTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "template"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div2/DivSlideTransition;

    iget-object v4, v1, Lcom/yandex/div2/DivSlideTransitionTemplate;->a:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->L2()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v8

    const-string v6, "distance"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivDimension;

    iget-object v4, v1, Lcom/yandex/div2/DivSlideTransitionTemplate;->b:Ltp3;

    sget-object v13, Lacb;->b:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivSlideTransitionJsonParser;->h:Lpnb;

    sget-object v15, Lcom/yandex/div2/DivSlideTransitionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "duration"

    move-object v7, v13

    move-object v8, v14

    move-object v10, v15

    invoke-static/range {v3 .. v10}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    iget-object v4, v1, Lcom/yandex/div2/DivSlideTransitionTemplate;->c:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivSlideTransitionJsonParser;->f:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivSlideTransition$Edge;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivSlideTransitionJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "edge"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v16, v10

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    :goto_1
    iget-object v4, v1, Lcom/yandex/div2/DivSlideTransitionTemplate;->d:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivSlideTransitionJsonParser;->g:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivSlideTransitionJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "interpolator"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v17, v10

    goto :goto_2

    :cond_2
    move-object/from16 v17, v3

    :goto_2
    iget-object v4, v1, Lcom/yandex/div2/DivSlideTransitionTemplate;->e:Ltp3;

    sget-object v9, Lcom/yandex/div2/DivSlideTransitionJsonParser;->i:Lpnb;

    sget-object v1, Lcom/yandex/div2/DivSlideTransitionJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "start_delay"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v13

    move-object v8, v14

    move-object v10, v1

    invoke-static/range {v3 .. v10}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    move-object v3, v2

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivSlideTransition;-><init>(Lcom/yandex/div2/DivDimension;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v2
.end method
