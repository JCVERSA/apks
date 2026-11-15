.class public final Lcom/yandex/div2/DivSliderJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSliderJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSliderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSliderJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSliderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivSliderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate;
    .locals 62

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

    new-instance v61, Lcom/yandex/div2/DivSliderTemplate;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v7

    const-string v4, "accessibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v15, "readOptionalField(contex\u2026bilityJsonTemplateParser)"

    invoke-static {v14, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSliderJsonParser;->i:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    sget-object v8, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026ntHorizontal.FROM_STRING)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSliderJsonParser;->j:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v8, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->d:Lzbb;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v17, Lcom/yandex/div2/DivSliderJsonParser;->l:Lpnb;

    const-string v4, "alpha"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, ALPHA_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->e:Ltp3;

    move-object v6, v2

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v7

    const-string v4, "animators"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026imatorJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->f:Ltp3;

    move-object v6, v2

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v7

    const-string v4, "background"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026groundJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->g:Ltp3;

    move-object v6, v2

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v17

    const-string v4, "border"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v19, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, Lacb;->b:Lzbb;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->h:Ltp3;

    move-object/from16 v20, v2

    goto :goto_7

    :cond_7
    const/16 v20, 0x0

    :goto_7
    sget-object v21, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v22, Lcom/yandex/div2/DivSliderJsonParser;->m:Lpnb;

    const-string v4, "column_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move v6, v11

    move-object/from16 v23, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v21

    move-object/from16 v24, v9

    move-object/from16 v9, v22

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, COLUMN_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->i:Ltp3;

    move-object v6, v2

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v7

    const-string v4, "disappear_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->j:Ltp3;

    move-object v6, v2

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v22

    const-string v4, "extensions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object v13, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ensionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->k:Ltp3;

    move-object v6, v2

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v22

    const-string v4, "focus"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v25, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vFocusJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->l:Ltp3;

    move-object v6, v2

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v22

    const-string v4, "functions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v26, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026nctionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->m:Ltp3;

    move-object v6, v2

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v22

    const-string v4, "height"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v27, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026ivSizeJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->n:Ltp3;

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v5

    const-string v2, "readOptionalField(contex\u2026llowOverride, parent?.id)"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v22, Lacb;->a:Lzbb;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->o:Ltp3;

    move-object/from16 v28, v2

    goto :goto_e

    :cond_e
    const/16 v28, 0x0

    :goto_e
    sget-object v29, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "is_enabled"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v30, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v14

    move-object v14, v6

    move v6, v11

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v8

    move-object/from16 v8, v29

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026sEnabled, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->p:Ltp3;

    move-object v6, v2

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    :goto_f
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v7

    const-string v4, "layout_provider"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026oviderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->q:Ltp3;

    move-object v6, v2

    goto :goto_10

    :cond_10
    const/4 v6, 0x0

    :goto_10
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v29

    const-string v4, "margins"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v32, v7

    move-object/from16 v7, v29

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->r:Ltp3;

    move-object/from16 v29, v2

    goto :goto_11

    :cond_11
    const/16 v29, 0x0

    :goto_11
    const-string v4, "max_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move-object/from16 v33, v9

    move-object v9, v6

    move v6, v11

    move-object/from16 v34, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026.maxValue, NUMBER_TO_INT)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->s:Ltp3;

    move-object v7, v2

    goto :goto_12

    :cond_12
    const/4 v7, 0x0

    :goto_12
    const-string v4, "min_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move v6, v11

    move-object/from16 v35, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026.minValue, NUMBER_TO_INT)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->t:Ltp3;

    move-object v6, v2

    goto :goto_13

    :cond_13
    const/4 v6, 0x0

    :goto_13
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v7

    const-string v4, "paddings"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->u:Ltp3;

    move-object v6, v2

    goto :goto_14

    :cond_14
    const/4 v6, 0x0

    :goto_14
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f7()Lyi5;

    move-result-object v9

    const-string v4, "ranges"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v36, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalListField(co\u2026rRangeJsonTemplateParser)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_15

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->v:Ltp3;

    move-object v7, v2

    goto :goto_15

    :cond_15
    const/4 v7, 0x0

    :goto_15
    const-string v4, "reuse_id"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026verride, parent?.reuseId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->w:Ltp3;

    move-object/from16 v37, v2

    goto :goto_16

    :cond_16
    const/16 v37, 0x0

    :goto_16
    sget-object v38, Lcom/yandex/div2/DivSliderJsonParser;->n:Lpnb;

    const-string v4, "row_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move v6, v11

    move-object/from16 v39, v7

    move-object/from16 v7, v37

    move-object/from16 v37, v8

    move-object/from16 v8, v21

    move-object/from16 v40, v9

    move-object/from16 v21, v33

    move-object/from16 v9, v38

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, ROW_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->x:Ltp3;

    move-object v6, v2

    goto :goto_17

    :cond_17
    const/4 v6, 0x0

    :goto_17
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v7

    const-string v4, "secondary_value_accessibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->y:Ltp3;

    move-object v6, v2

    goto :goto_18

    :cond_18
    const/4 v6, 0x0

    :goto_18
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "selected_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    invoke-static {v15, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->z:Ltp3;

    move-object v6, v2

    goto :goto_19

    :cond_19
    const/4 v6, 0x0

    :goto_19
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v7

    const-string v4, "thumb_secondary_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026awableJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->A:Ltp3;

    move-object/from16 v17, v2

    goto :goto_1a

    :cond_1a
    const/16 v17, 0x0

    :goto_1a
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->i7()Lyi5;

    move-result-object v33

    const-string v4, "thumb_secondary_text_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v38, v8

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v41, v7

    move-object/from16 v7, v33

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026tStyleJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->B:Ltp3;

    goto :goto_1b

    :cond_1b
    const/4 v2, 0x0

    :goto_1b
    const-string v3, "thumb_secondary_value_variable"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v5

    const-string v2, "readOptionalField(contex\u2026mbSecondaryValueVariable)"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->C:Ltp3;

    move-object/from16 v17, v2

    goto :goto_1c

    :cond_1c
    const/16 v17, 0x0

    :goto_1c
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v33

    const-string v4, "thumb_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v42, v5

    move v5, v11

    move-object/from16 v43, v15

    move-object v15, v6

    move-object/from16 v6, v17

    move-object/from16 v44, v7

    move-object/from16 v7, v33

    invoke-static/range {v2 .. v7}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readField(context, data,\u2026awableJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->D:Ltp3;

    move-object/from16 v17, v2

    goto :goto_1d

    :cond_1d
    const/16 v17, 0x0

    :goto_1d
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->i7()Lyi5;

    move-result-object v33

    const-string v4, "thumb_text_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v45, v9

    move-object v9, v6

    move-object/from16 v6, v17

    move-object/from16 v46, v7

    move-object/from16 v7, v33

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->E:Ltp3;

    goto :goto_1e

    :cond_1e
    const/4 v2, 0x0

    :goto_1e
    const-string v3, "thumb_value_variable"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalField(contex\u2026rent?.thumbValueVariable)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->F:Ltp3;

    move-object v6, v2

    goto :goto_1f

    :cond_1f
    const/4 v6, 0x0

    :goto_1f
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v17

    const-string v4, "tick_mark_active_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v47, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_20

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->G:Ltp3;

    move-object v6, v2

    goto :goto_20

    :cond_20
    const/4 v6, 0x0

    :goto_20
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v17

    const-string v4, "tick_mark_inactive_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v48, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->H:Ltp3;

    move-object v6, v2

    goto :goto_21

    :cond_21
    const/4 v6, 0x0

    :goto_21
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v8

    const-string v4, "tooltips"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v49, v7

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026ooltipJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->I:Ltp3;

    move-object v6, v2

    goto :goto_22

    :cond_22
    const/4 v6, 0x0

    :goto_22
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v7

    const-string v4, "track_active_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->J:Ltp3;

    move-object v6, v2

    goto :goto_23

    :cond_23
    const/4 v6, 0x0

    :goto_23
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v17

    const-string v4, "track_inactive_style"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v50, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->K:Ltp3;

    move-object v6, v2

    goto :goto_24

    :cond_24
    const/4 v6, 0x0

    :goto_24
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v9

    const-string v4, "transform"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v51, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalField(contex\u2026nsformJsonTemplateParser)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->L:Ltp3;

    move-object v6, v2

    goto :goto_25

    :cond_25
    const/4 v6, 0x0

    :goto_25
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v7

    const-string v4, "transition_change"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026sitionJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->M:Ltp3;

    move-object/from16 v17, v2

    goto :goto_26

    :cond_26
    const/16 v17, 0x0

    :goto_26
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v33

    const-string v4, "transition_in"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v52, v8

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v53, v7

    move-object/from16 v7, v33

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->N:Ltp3;

    move-object v6, v2

    goto :goto_27

    :cond_27
    const/4 v6, 0x0

    :goto_27
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v17

    const-string v4, "transition_out"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v54, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->O:Ltp3;

    move-object v6, v2

    goto :goto_28

    :cond_28
    const/4 v6, 0x0

    :goto_28
    sget-object v8, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v5, Lcom/yandex/div2/DivSliderJsonParser;->o:Lhm5;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "transition_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v17, v5

    move v5, v11

    move-object/from16 v55, v7

    move-object v7, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026RIGGERS_VALIDATOR.cast())"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->P:Ltp3;

    move-object v6, v2

    goto :goto_29

    :cond_29
    const/4 v6, 0x0

    :goto_29
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v7

    const-string v4, "variable_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riggerJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->Q:Ltp3;

    move-object v6, v2

    goto :goto_2a

    :cond_2a
    const/4 v6, 0x0

    :goto_2a
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v17

    const-string v4, "variables"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v56, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riableJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSliderJsonParser;->k:Lzbb;

    if-eqz v1, :cond_2b

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->R:Ltp3;

    move-object/from16 v17, v2

    goto :goto_2b

    :cond_2b
    const/16 v17, 0x0

    :goto_2b
    sget-object v33, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    const-string v4, "visibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v57, v7

    move-object/from16 v7, v17

    move-object/from16 v58, v8

    move-object/from16 v8, v33

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivVisibility.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->S:Ltp3;

    move-object v6, v2

    goto :goto_2c

    :cond_2c
    const/4 v6, 0x0

    :goto_2c
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v7

    const-string v4, "visibility_action"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026ActionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2d

    iget-object v2, v1, Lcom/yandex/div2/DivSliderTemplate;->T:Ltp3;

    move-object v6, v2

    goto :goto_2d

    :cond_2d
    const/4 v6, 0x0

    :goto_2d
    iget-object v2, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v17

    const-string v4, "visibility_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v59, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    invoke-static {v6, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2e

    iget-object v1, v1, Lcom/yandex/div2/DivSliderTemplate;->U:Ltp3;

    move-object v4, v1

    goto :goto_2e

    :cond_2e
    const/4 v4, 0x0

    :goto_2e
    iget-object v0, v0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v5

    const-string v2, "width"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    move-object/from16 v60, v0

    invoke-static {v0, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v61

    move-object/from16 v14, v22

    move-object v1, v15

    move-object/from16 v0, v43

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v24

    move-object/from16 v18, v20

    move-object/from16 v20, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v31

    move-object/from16 v27, v30

    move-object/from16 v28, v29

    move-object/from16 v29, v32

    move-object/from16 v30, v34

    move-object/from16 v31, v35

    move-object/from16 v32, v37

    move-object/from16 v33, v36

    move-object/from16 v34, v40

    move-object/from16 v35, v39

    move-object/from16 v36, v45

    move-object/from16 v37, v38

    move-object/from16 v38, v0

    move-object/from16 v39, v41

    move-object/from16 v40, v44

    move-object/from16 v41, v42

    move-object/from16 v42, v46

    move-object/from16 v43, v47

    move-object/from16 v44, v1

    move-object/from16 v45, v48

    move-object/from16 v46, v49

    move-object/from16 v47, v52

    move-object/from16 v48, v50

    move-object/from16 v49, v51

    move-object/from16 v50, v9

    move-object/from16 v51, v53

    move-object/from16 v52, v54

    move-object/from16 v53, v55

    move-object/from16 v54, v58

    move-object/from16 v55, v56

    move-object/from16 v56, v57

    move-object/from16 v57, v8

    move-object/from16 v58, v59

    move-object/from16 v59, v6

    invoke-direct/range {v13 .. v60}, Lcom/yandex/div2/DivSliderTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v61
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSliderTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->c:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "alpha"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->e:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v2

    const-string v3, "animators"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->f:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->g:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "column_span"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->h:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->i:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v2

    const-string v3, "disappear_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->j:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v2

    const-string v3, "extensions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->k:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v2

    const-string v3, "focus"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->l:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v2

    const-string v3, "functions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->m:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v2

    const-string v3, "height"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "id"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->n:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "is_enabled"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->o:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->p:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v2

    const-string v3, "layout_provider"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->q:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "max_value"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->r:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "min_value"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->s:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->t:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "paddings"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->u:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f7()Lyi5;

    move-result-object v2

    const-string v3, "ranges"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "reuse_id"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->v:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "row_span"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->w:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->x:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v2

    const-string v3, "secondary_value_accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->y:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "selected_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->z:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "thumb_secondary_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->A:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->i7()Lyi5;

    move-result-object v2

    const-string v3, "thumb_secondary_text_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "thumb_secondary_value_variable"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->B:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->C:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "thumb_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->D:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->i7()Lyi5;

    move-result-object v2

    const-string v3, "thumb_text_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "thumb_value_variable"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate;->E:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->F:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "tick_mark_active_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->G:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "tick_mark_inactive_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->H:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->I:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "track_active_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->J:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "track_inactive_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->K:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->L:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->M:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->N:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->O:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->J(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "type"

    const-string v2, "slider"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->P:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->Q:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->R:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->S:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate;->T:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSliderTemplate;->U:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivSliderJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
