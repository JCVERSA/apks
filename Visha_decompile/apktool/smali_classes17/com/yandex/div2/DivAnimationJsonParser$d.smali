.class public final Lcom/yandex/div2/DivAnimationJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAnimationJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivAnimationJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAnimationTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivAnimationJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivAnimationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAnimation;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivAnimationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAnimation;
    .locals 22

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

    new-instance v2, Lcom/yandex/div2/DivAnimation;

    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->a:Ltp3;

    sget-object v13, Lacb;->b:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivAnimationJsonParser;->h:Lpnb;

    sget-object v15, Lcom/yandex/div2/DivAnimationJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "duration"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

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
    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->b:Ltp3;

    sget-object v16, Lacb;->d:Lzbb;

    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v6, "end_value"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v18

    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->c:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivAnimationJsonParser;->f:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivAnimationJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "interpolator"

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v19, v10

    goto :goto_1

    :cond_1
    move-object/from16 v19, v3

    :goto_1
    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->d:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivAnimationJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/DivAnimationJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v8

    const-string v6, "items"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v20

    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->e:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivAnimationJsonParser;->g:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivAnimation$Name;->FROM_STRING:Le74;

    const-string v6, "name"

    invoke-static/range {v3 .. v8}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v10

    const-string v3, "resolveExpression(contex\u2026imation.Name.FROM_STRING)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->f:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivAnimationJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u2()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/DivAnimationJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object v8

    const-string v6, "repeat"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/yandex/div2/DivAnimationJsonParser;->d:Lcom/yandex/div2/DivCount$c;

    :cond_2
    const-string v3, "JsonFieldResolver.resolv\u2026) ?: REPEAT_DEFAULT_VALUE"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->g:Ltp3;

    sget-object v9, Lcom/yandex/div2/DivAnimationJsonParser;->i:Lpnb;

    sget-object v21, Lcom/yandex/div2/DivAnimationJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "start_delay"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v13

    move-object v8, v14

    move-object v13, v10

    move-object/from16 v10, v21

    invoke-static/range {v3 .. v10}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v10, v21

    goto :goto_2

    :cond_3
    move-object v10, v3

    :goto_2
    iget-object v4, v1, Lcom/yandex/div2/DivAnimationTemplate;->h:Ltp3;

    const-string v6, "start_value"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    move-object v3, v2

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object v8, v13

    move-object v9, v0

    invoke-direct/range {v3 .. v11}, Lcom/yandex/div2/DivAnimation;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v2
.end method
