.class public final Lcom/yandex/div2/DivIndicatorJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivIndicatorJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivIndicatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivIndicatorJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicator;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicator;
    .locals 61

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v1, "context"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v47, Lcom/yandex/div2/DivIndicator;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v6

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAccessibility;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->b:Ltp3;

    sget-object v13, Lacb;->f:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v8, Lcom/yandex/div2/DivIndicatorJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "active_item_color"

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v14

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v15, v8

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->c:Ltp3;

    sget-object v16, Lacb;->d:Lzbb;

    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivIndicatorJsonParser;->q:Lpnb;

    sget-object v18, Lcom/yandex/div2/DivIndicatorJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "active_item_size"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->d:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u6()Lyi5;

    move-result-object v6

    const-string v4, "active_shape"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->e:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->m:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->f:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->n:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->g:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivIndicatorJsonParser;->r:Lpnb;

    sget-object v22, Lcom/yandex/div2/DivIndicatorJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v22, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->h:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->o:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivIndicator$Animation;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivIndicatorJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "animation"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v23, v8

    goto :goto_3

    :cond_3
    move-object/from16 v23, v1

    :goto_3
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->i:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v6

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v24

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->j:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->k:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/yandex/div2/DivBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->l:Ltp3;

    sget-object v27, Lacb;->b:Lzbb;

    sget-object v28, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivIndicatorJsonParser;->s:Lpnb;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v29

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->m:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v6

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v30

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->n:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v6

    const-string v4, "extensions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v31

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->o:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v6

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/yandex/div2/DivFocus;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->p:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v33

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v6

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_4

    sget-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->f:Lcom/yandex/div2/DivSize$d;

    :cond_4
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/yandex/div2/DivIndicatorTemplate;->r:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->s:Ltp3;

    sget-object v35, Lcom/yandex/div2/DivIndicatorJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "inactive_item_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v35

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v35, v1

    :goto_4
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->t:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u6()Lyi5;

    move-result-object v6

    const-string v4, "inactive_minimum_shape"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->u:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u6()Lyi5;

    move-result-object v6

    const-string v4, "inactive_shape"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->v:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X3()Lyi5;

    move-result-object v6

    const-string v4, "items_placement"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/yandex/div2/DivIndicatorItemPlacement;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->w:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v6

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->x:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->y:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivIndicatorJsonParser;->t:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivIndicatorJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "minimum_item_size"

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v41, v8

    move-object v8, v13

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_6

    move-object/from16 v42, v13

    goto :goto_5

    :cond_6
    move-object/from16 v42, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->z:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "paddings"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v1, v10, Lcom/yandex/div2/DivIndicatorTemplate;->A:Ltp3;

    const-string v2, "pager_id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v44, v1

    check-cast v44, Ljava/lang/String;

    iget-object v1, v10, Lcom/yandex/div2/DivIndicatorTemplate;->B:Ltp3;

    const-string v2, "reuse_id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v45

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->C:Ltp3;

    const-string v4, "row_span"

    sget-object v7, Lcom/yandex/div2/DivIndicatorJsonParser;->u:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v46

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->D:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v48

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->E:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->U6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->S6()Lyi5;

    move-result-object v6

    const-string v4, "shape"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivShape;

    if-nez v1, :cond_7

    sget-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->i:Lcom/yandex/div2/DivShape$c;

    :cond_7
    move-object v14, v1

    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: SHAPE_DEFAULT_VALUE"

    invoke-static {v14, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->F:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v6

    const-string v4, "space_between_centers"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_8

    sget-object v1, Lcom/yandex/div2/DivIndicatorJsonParser;->j:Lcom/yandex/div2/DivFixedSize;

    :cond_8
    move-object v13, v1

    const-string v1, "JsonFieldResolver.resolv\u2026EEN_CENTERS_DEFAULT_VALUE"

    invoke-static {v13, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->G:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v6

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v49

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->H:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v6

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Lcom/yandex/div2/DivTransform;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->I:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v6

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/yandex/div2/DivChangeTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->J:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->K:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->L:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivIndicatorJsonParser;->v:Lhm5;

    const-string v4, "transition_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->z(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v54

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->M:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v55

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->N:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v6

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v56

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->O:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->p:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivIndicatorJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "visibility"

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    move-object/from16 v57, v8

    goto :goto_6

    :cond_9
    move-object/from16 v57, v1

    :goto_6
    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->P:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v10, Lcom/yandex/div2/DivIndicatorTemplate;->Q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v59

    iget-object v1, v10, Lcom/yandex/div2/DivIndicatorTemplate;->R:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivIndicatorJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_a

    sget-object v0, Lcom/yandex/div2/DivIndicatorJsonParser;->l:Lcom/yandex/div2/DivSize$c;

    :cond_a
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v47

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object v1, v13

    move-object/from16 v13, v26

    move-object/from16 v60, v14

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    move-object/from16 v19, v41

    move-object/from16 v20, v34

    move-object/from16 v21, v35

    move-object/from16 v22, v36

    move-object/from16 v23, v37

    move-object/from16 v24, v38

    move-object/from16 v25, v39

    move-object/from16 v26, v40

    move-object/from16 v27, v42

    move-object/from16 v28, v43

    move-object/from16 v29, v44

    move-object/from16 v30, v45

    move-object/from16 v31, v46

    move-object/from16 v32, v48

    move-object/from16 v33, v60

    move-object/from16 v34, v1

    move-object/from16 v35, v49

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v38, v52

    move-object/from16 v39, v53

    move-object/from16 v40, v54

    move-object/from16 v41, v55

    move-object/from16 v42, v56

    move-object/from16 v43, v57

    move-object/from16 v44, v58

    move-object/from16 v45, v59

    move-object/from16 v46, v0

    invoke-direct/range {v2 .. v46}, Lcom/yandex/div2/DivIndicator;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivRoundedRectangleShape;Lcom/yandex/div2/DivIndicatorItemPlacement;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivFixedSize;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v47
.end method
