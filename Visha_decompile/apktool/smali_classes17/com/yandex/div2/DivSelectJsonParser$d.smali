.class public final Lcom/yandex/div2/DivSelectJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSelectJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSelectTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSelectJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSelectTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSelect;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivSelectTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSelect;
    .locals 60

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

    new-instance v48, Lcom/yandex/div2/DivSelect;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v6

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAccessibility;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSelectJsonParser;->l:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->c:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSelectJsonParser;->m:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->d:Ltp3;

    sget-object v15, Lacb;->d:Lzbb;

    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->q:Lpnb;

    sget-object v17, Lcom/yandex/div2/DivSelectJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v6

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v18

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->f:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v19

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->g:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/yandex/div2/DivBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->h:Ltp3;

    sget-object v21, Lacb;->b:Lzbb;

    sget-object v22, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->r:Lpnb;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v23

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->i:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v6

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v24

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->j:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v6

    const-string v4, "extensions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->k:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v6

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/yandex/div2/DivFocus;

    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->l:Ltp3;

    sget-object v8, Lacb;->c:Lzbb;

    const-string v2, "font_family"

    invoke-static {v9, v1, v11, v2, v8}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->m:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->s:Lpnb;

    sget-object v28, Lcom/yandex/div2/DivSelectJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v29, v14

    move-object v14, v8

    move-object/from16 v8, v28

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v28, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->n:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSelectJsonParser;->n:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivSelectJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v30, v8

    goto :goto_2

    :cond_2
    move-object/from16 v30, v1

    :goto_2
    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->o:Ltp3;

    const-string v2, "font_variation_settings"

    sget-object v3, Lacb;->h:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->p:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSelectJsonParser;->o:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivSelectJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v32, v8

    goto :goto_3

    :cond_3
    move-object/from16 v32, v1

    :goto_3
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->q:Ltp3;

    const-string v4, "font_weight_value"

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->t:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v33

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->r:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v34

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->s:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v6

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_4

    sget-object v1, Lcom/yandex/div2/DivSelectJsonParser;->f:Lcom/yandex/div2/DivSize$d;

    :cond_4
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->t:Ltp3;

    sget-object v35, Lacb;->f:Lzbb;

    sget-object v36, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v37, Lcom/yandex/div2/DivSelectJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "hint_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v7, v37

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v37, v1

    :goto_4
    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->u:Ltp3;

    const-string v2, "hint_text"

    invoke-static {v9, v1, v11, v2, v14}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v38

    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->v:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->w:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v6

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->x:Ltp3;

    sget-object v41, Lcom/yandex/div2/DivSelectJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "letter_spacing"

    move-object/from16 v1, p1

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v41

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v41, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->y:Ltp3;

    const-string v4, "line_height"

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->u:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v42

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->z:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->A:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->D6()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->v:Lhm5;

    const-string v4, "options"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v15

    const-string v1, "resolveList(context, tem\u2026arser, OPTIONS_VALIDATOR)"

    invoke-static {v15, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->B:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v44, v1

    check-cast v44, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->C:Ltp3;

    const-string v2, "reuse_id"

    invoke-static {v9, v1, v11, v2, v14}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v45

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->D:Ltp3;

    const-string v4, "row_span"

    sget-object v7, Lcom/yandex/div2/DivSelectJsonParser;->w:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v46

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->E:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v47

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->F:Ltp3;

    sget-object v14, Lcom/yandex/div2/DivSelectJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_color"

    move-object/from16 v5, v35

    move-object/from16 v6, v36

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v35, v14

    goto :goto_6

    :cond_7
    move-object/from16 v35, v1

    :goto_6
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->G:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v6

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v36

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->H:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v6

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/yandex/div2/DivTransform;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->I:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v6

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Lcom/yandex/div2/DivChangeTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->J:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->K:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->L:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivSelectJsonParser;->x:Lhm5;

    const-string v4, "transition_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->z(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v53

    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->M:Ltp3;

    const-string v2, "value_variable"

    invoke-static {v9, v1, v11, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026, data, \"value_variable\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v54, v1

    check-cast v54, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->N:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v55

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->O:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v6

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v56

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->P:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSelectJsonParser;->p:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v14, Lcom/yandex/div2/DivSelectJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "visibility"

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v57, v14

    goto :goto_7

    :cond_8
    move-object/from16 v57, v1

    :goto_7
    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->Q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v10, Lcom/yandex/div2/DivSelectTemplate;->R:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v59

    iget-object v1, v10, Lcom/yandex/div2/DivSelectTemplate;->S:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivSelectJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_9

    sget-object v0, Lcom/yandex/div2/DivSelectJsonParser;->k:Lcom/yandex/div2/DivSize$c;

    :cond_9
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v48

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v29

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v1, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v29, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    move-object/from16 v21, v1

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    move-object/from16 v24, v39

    move-object/from16 v25, v40

    move-object/from16 v26, v41

    move-object/from16 v27, v42

    move-object/from16 v28, v43

    move-object/from16 v30, v44

    move-object/from16 v31, v45

    move-object/from16 v32, v46

    move-object/from16 v33, v47

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v49

    move-object/from16 v37, v50

    move-object/from16 v38, v51

    move-object/from16 v39, v52

    move-object/from16 v40, v53

    move-object/from16 v41, v54

    move-object/from16 v42, v55

    move-object/from16 v43, v56

    move-object/from16 v44, v57

    move-object/from16 v45, v58

    move-object/from16 v46, v59

    move-object/from16 v47, v0

    invoke-direct/range {v2 .. v47}, Lcom/yandex/div2/DivSelect;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v48
.end method
