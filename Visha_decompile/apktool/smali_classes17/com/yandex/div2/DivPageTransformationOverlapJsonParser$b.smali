.class public final Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformationOverlap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPageTransformationOverlap;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivPageTransformationOverlap;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformationOverlap;
    .locals 17

    const-string v0, "context"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPageTransformationOverlap;

    sget-object v4, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->h:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "interpolator"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v10, v7

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    sget-object v11, Lacb;->d:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v6, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->i:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "next_page_alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v13, v1

    :goto_1
    sget-object v6, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->j:Lpnb;

    sget-object v14, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "next_page_scale"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v14, v1

    :goto_2
    sget-object v6, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->k:Lpnb;

    sget-object v15, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "previous_page_alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v15, v1

    :goto_3
    sget-object v6, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->l:Lpnb;

    sget-object v16, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "previous_page_scale"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    :goto_4
    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "reversed_stacking_order"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v7, v1

    :goto_5
    move-object v1, v0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div2/DivPageTransformationOverlap;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPageTransformationOverlap;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, p0, v2, v0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v0, "next_page_alpha"

    iget-object v1, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "next_page_scale"

    iget-object v1, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "previous_page_alpha"

    iget-object v1, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "previous_page_scale"

    iget-object v1, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "reversed_stacking_order"

    iget-object p2, p2, Lcom/yandex/div2/DivPageTransformationOverlap;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p2, "type"

    const-string v0, "overlap"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
