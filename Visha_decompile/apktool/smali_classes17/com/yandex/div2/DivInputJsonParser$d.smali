.class public final Lcom/yandex/div2/DivInputJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivInputJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivInputJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivInputTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInput;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivInputTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInput;
    .locals 79

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

    new-instance v62, Lcom/yandex/div2/DivInput;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v6

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAccessibility;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->s:Lzbb;

    sget-object v13, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object/from16 v1, p1

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->c:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->t:Lzbb;

    sget-object v15, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->d:Ltp3;

    sget-object v17, Lacb;->d:Lzbb;

    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->C:Lpnb;

    sget-object v19, Lcom/yandex/div2/DivInputJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v19, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v6

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v20

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->f:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->u:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivInput$Autocapitalization;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivInputJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "autocapitalization"

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v21, v8

    goto :goto_1

    :cond_1
    move-object/from16 v21, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->g:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v22

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->h:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/yandex/div2/DivBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->i:Ltp3;

    sget-object v24, Lacb;->b:Lzbb;

    sget-object v25, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->D:Lpnb;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v26

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->j:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v6

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->k:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "enter_key_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v28

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->l:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->v:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivInput$EnterKeyType;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivInputJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "enter_key_type"

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v29, v8

    goto :goto_2

    :cond_2
    move-object/from16 v29, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->m:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v6

    const-string v4, "extensions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v30

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->n:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->l4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->j4()Lyi5;

    move-result-object v6

    const-string v4, "filters"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v31

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->o:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v6

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/yandex/div2/DivFocus;

    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->p:Ltp3;

    sget-object v8, Lacb;->c:Lzbb;

    const-string v2, "font_family"

    invoke-static {v9, v1, v11, v2, v8}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v33

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->q:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->E:Lpnb;

    sget-object v34, Lcom/yandex/div2/DivInputJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v35, v14

    move-object v14, v8

    move-object/from16 v8, v34

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v34, v1

    :goto_3
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->r:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->w:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivInputJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v36, v8

    goto :goto_4

    :cond_4
    move-object/from16 v36, v1

    :goto_4
    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->s:Ltp3;

    const-string v2, "font_variation_settings"

    sget-object v3, Lacb;->h:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v37

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->t:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->x:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivInputJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v38, v8

    goto :goto_5

    :cond_5
    move-object/from16 v38, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->u:Ltp3;

    const-string v4, "font_weight_value"

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->F:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v39

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->v:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v40

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->w:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v6

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_6

    sget-object v1, Lcom/yandex/div2/DivInputJsonParser;->h:Lcom/yandex/div2/DivSize$d;

    :cond_6
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->x:Ltp3;

    sget-object v41, Lacb;->f:Lzbb;

    sget-object v42, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "highlight_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v41

    move-object/from16 v6, v42

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v43

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->y:Ltp3;

    sget-object v44, Lcom/yandex/div2/DivInputJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "hint_color"

    move-object/from16 v7, v44

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v44, v1

    :goto_6
    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->z:Ltp3;

    const-string v2, "hint_text"

    invoke-static {v9, v1, v11, v2, v14}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v45

    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->A:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v46, v1

    check-cast v46, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->B:Ltp3;

    sget-object v47, Lacb;->a:Lzbb;

    sget-object v48, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v49, Lcom/yandex/div2/DivInputJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "is_enabled"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v47

    move-object/from16 v6, v48

    move-object/from16 v7, v49

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v49, v1

    :goto_7
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->C:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->y:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivInput$KeyboardType;->FROM_STRING:Le74;

    sget-object v50, Lcom/yandex/div2/DivInputJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "keyboard_type"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v7, v50

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v50, v1

    :goto_8
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->D:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v6

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->E:Ltp3;

    sget-object v52, Lcom/yandex/div2/DivInputJsonParser;->l:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v52

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v52, v1

    :goto_9
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->F:Ltp3;

    const-string v4, "line_height"

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->G:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v53

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->G:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->H:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s4()Lyi5;

    move-result-object v6

    const-string v4, "mask"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, Lcom/yandex/div2/DivInputMask;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->I:Ltp3;

    const-string v4, "max_length"

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->H:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v56

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->J:Ltp3;

    const-string v4, "max_visible_lines"

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->I:Lpnb;

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v57

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->K:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->x4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v4()Lyi5;

    move-result-object v6

    const-string v4, "native_interface"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/yandex/div2/DivInput$NativeInterface;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->L:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v59, v1

    check-cast v59, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->M:Ltp3;

    const-string v2, "reuse_id"

    invoke-static {v9, v1, v11, v2, v14}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v60

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->N:Ltp3;

    const-string v4, "row_span"

    sget-object v7, Lcom/yandex/div2/DivInputJsonParser;->J:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v61

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->O:Ltp3;

    sget-object v14, Lcom/yandex/div2/DivInputJsonParser;->m:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "select_all_on_focus"

    move-object/from16 v5, v47

    move-object/from16 v6, v48

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_b

    move-object/from16 v47, v14

    goto :goto_a

    :cond_b
    move-object/from16 v47, v1

    :goto_a
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->P:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v48

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->Q:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->z:Lzbb;

    sget-object v14, Lcom/yandex/div2/DivInputJsonParser;->n:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_alignment_horizontal"

    move-object v6, v13

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_c

    move-object/from16 v63, v14

    goto :goto_b

    :cond_c
    move-object/from16 v63, v1

    :goto_b
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->R:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->A:Lzbb;

    sget-object v13, Lcom/yandex/div2/DivInputJsonParser;->o:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v15

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_d

    move-object/from16 v64, v13

    goto :goto_c

    :cond_d
    move-object/from16 v64, v1

    :goto_c
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->S:Ltp3;

    sget-object v13, Lcom/yandex/div2/DivInputJsonParser;->p:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v41

    move-object/from16 v6, v42

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_e

    move-object/from16 v65, v13

    goto :goto_d

    :cond_e
    move-object/from16 v65, v1

    :goto_d
    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->T:Ltp3;

    const-string v2, "text_variable"

    invoke-static {v9, v1, v11, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026e, data, \"text_variable\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v66, v1

    check-cast v66, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->U:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v6

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v67

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->V:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v6

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v68, v1

    check-cast v68, Lcom/yandex/div2/DivTransform;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->W:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v6

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v69, v1

    check-cast v69, Lcom/yandex/div2/DivChangeTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->X:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v70, v1

    check-cast v70, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->Y:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v71, v1

    check-cast v71, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->Z:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivInputJsonParser;->K:Lhm5;

    const-string v4, "transition_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->z(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v72

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->a0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->D4()Lyi5;

    move-result-object v6

    const-string v4, "validators"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v73

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->b0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v74

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->c0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v6

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v75

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->d0:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivInputJsonParser;->B:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v13, Lcom/yandex/div2/DivInputJsonParser;->q:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "visibility"

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_f

    move-object/from16 v76, v13

    goto :goto_e

    :cond_f
    move-object/from16 v76, v1

    :goto_e
    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->e0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v1

    check-cast v77, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v10, Lcom/yandex/div2/DivInputTemplate;->f0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v78

    iget-object v1, v10, Lcom/yandex/div2/DivInputTemplate;->g0:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivInputJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_10

    sget-object v0, Lcom/yandex/div2/DivInputJsonParser;->r:Lcom/yandex/div2/DivSize$c;

    :cond_10
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v62

    move-object v3, v12

    move-object/from16 v4, v35

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object v1, v8

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    move-object/from16 v19, v34

    move-object/from16 v20, v36

    move-object/from16 v21, v37

    move-object/from16 v22, v38

    move-object/from16 v23, v39

    move-object/from16 v24, v40

    move-object/from16 v25, v1

    move-object/from16 v26, v43

    move-object/from16 v27, v44

    move-object/from16 v28, v45

    move-object/from16 v29, v46

    move-object/from16 v30, v49

    move-object/from16 v31, v50

    move-object/from16 v32, v51

    move-object/from16 v33, v52

    move-object/from16 v34, v53

    move-object/from16 v35, v54

    move-object/from16 v36, v55

    move-object/from16 v37, v56

    move-object/from16 v38, v57

    move-object/from16 v39, v58

    move-object/from16 v40, v59

    move-object/from16 v41, v60

    move-object/from16 v42, v61

    move-object/from16 v43, v47

    move-object/from16 v44, v48

    move-object/from16 v45, v63

    move-object/from16 v46, v64

    move-object/from16 v47, v65

    move-object/from16 v48, v66

    move-object/from16 v49, v67

    move-object/from16 v50, v68

    move-object/from16 v51, v69

    move-object/from16 v52, v70

    move-object/from16 v53, v71

    move-object/from16 v54, v72

    move-object/from16 v55, v73

    move-object/from16 v56, v74

    move-object/from16 v57, v75

    move-object/from16 v58, v76

    move-object/from16 v59, v77

    move-object/from16 v60, v78

    move-object/from16 v61, v0

    invoke-direct/range {v2 .. v61}, Lcom/yandex/div2/DivInput;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivFocus;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivSize;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivInputMask;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivInput$NativeInterface;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v62
.end method
