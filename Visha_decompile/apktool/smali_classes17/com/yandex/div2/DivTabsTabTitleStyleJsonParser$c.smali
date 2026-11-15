.class public final Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v34, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;

    sget-object v13, Lacb;->f:Lzbb;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->a:Ltp3;

    move-object v8, v3

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v5, "active_background_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v10

    const-string v9, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v10, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->h:Lzbb;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->b:Ltp3;

    move-object v8, v3

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v5, "active_font_variation_settings"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v16

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026iveFontVariationSettings)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->m:Lzbb;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->c:Ltp3;

    move-object/from16 v17, v3

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    sget-object v18, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v5, "active_font_weight"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v14, v7

    move v7, v2

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move-object v11, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v8, "readOptionalFieldWithExp\u2026ivFontWeight.FROM_STRING)"

    invoke-static {v9, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->d:Ltp3;

    move-object/from16 v17, v3

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    const-string v5, "active_text_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object/from16 v20, v14

    move-object v14, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    invoke-static {v9, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v21, Lacb;->b:Lzbb;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->e:Ltp3;

    move-object v8, v3

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    sget-object v22, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v23, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->r:Lpnb;

    const-string v5, "animation_duration"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move v7, v2

    move-object/from16 v24, v9

    move-object/from16 v9, v22

    move-object/from16 v25, v10

    move-object/from16 v10, v23

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026ATION_DURATION_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->n:Lzbb;

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->f:Ltp3;

    move-object v8, v3

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    sget-object v9, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->FROM_STRING:Le74;

    const-string v5, "animation_type"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026nimationType.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->g:Ltp3;

    move-object v8, v3

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    sget-object v23, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->s:Lpnb;

    const-string v5, "corner_radius"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move v7, v2

    move-object/from16 v26, v9

    move-object/from16 v9, v22

    move-object/from16 v27, v10

    move-object/from16 v10, v23

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026 CORNER_RADIUS_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->h:Ltp3;

    move-object v7, v3

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    iget-object v3, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->q2()Lyi5;

    move-result-object v8

    const-string v5, "corners_radius"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalField(contex\u2026RadiusJsonTemplateParser)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->c:Lzbb;

    if-eqz v1, :cond_8

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->i:Ltp3;

    move-object v8, v3

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    const-string v5, "font_family"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalFieldWithExp\u2026ride, parent?.fontFamily)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->j:Ltp3;

    move-object/from16 v23, v3

    goto :goto_9

    :cond_9
    const/16 v23, 0x0

    :goto_9
    sget-object v28, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->t:Lpnb;

    const-string v5, "font_size"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move v7, v2

    move-object/from16 v29, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v22

    move-object/from16 v30, v10

    move-object/from16 v10, v28

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026INT, FONT_SIZE_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->o:Lzbb;

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->k:Ltp3;

    move-object v8, v3

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    :goto_a
    sget-object v9, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    const-string v5, "font_size_unit"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026 DivSizeUnit.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->p:Lzbb;

    if-eqz v1, :cond_b

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->l:Ltp3;

    move-object v8, v3

    goto :goto_b

    :cond_b
    const/4 v8, 0x0

    :goto_b
    const-string v5, "font_weight"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v28, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    invoke-static {v9, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->m:Ltp3;

    move-object v8, v3

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    const-string v5, "inactive_background_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object/from16 v31, v9

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    invoke-static {v9, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->n:Ltp3;

    move-object v8, v3

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    :goto_d
    const-string v5, "inactive_font_variation_settings"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v16

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v8

    move-object/from16 v3, v20

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->q:Lzbb;

    if-eqz v1, :cond_e

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->o:Ltp3;

    move-object/from16 v16, v3

    goto :goto_e

    :cond_e
    const/16 v16, 0x0

    :goto_e
    const-string v5, "inactive_font_weight"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v32, v8

    move-object/from16 v8, v16

    move-object/from16 v35, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    invoke-static {v9, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->p:Ltp3;

    move-object v8, v3

    goto :goto_f

    :cond_f
    const/4 v8, 0x0

    :goto_f
    const-string v5, "inactive_text_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object/from16 v36, v9

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    invoke-static {v15, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->q:Ltp3;

    move-object v8, v3

    goto :goto_10

    :cond_10
    const/4 v8, 0x0

    :goto_10
    sget-object v11, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->u:Lpnb;

    const-string v5, "item_spacing"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move v7, v2

    move-object/from16 v9, v22

    move-object/from16 v37, v10

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v11

    const-string v3, "readOptionalFieldWithExp\u2026, ITEM_SPACING_VALIDATOR)"

    invoke-static {v11, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->d:Lzbb;

    if-eqz v1, :cond_11

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->r:Ltp3;

    move-object v8, v3

    goto :goto_11

    :cond_11
    const/4 v8, 0x0

    :goto_11
    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v5, "letter_spacing"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v14

    const-string v3, "readOptionalFieldWithExp\u2026pacing, NUMBER_TO_DOUBLE)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    iget-object v3, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->s:Ltp3;

    move-object v8, v3

    goto :goto_12

    :cond_12
    const/4 v8, 0x0

    :goto_12
    sget-object v10, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->v:Lpnb;

    const-string v5, "line_height"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move v7, v2

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026T, LINE_HEIGHT_VALIDATOR)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->t:Ltp3;

    move-object v7, v1

    goto :goto_13

    :cond_13
    const/4 v7, 0x0

    :goto_13
    iget-object v0, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v8

    const-string v5, "paddings"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    move-object/from16 v33, v0

    const-string v1, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v34

    move-object v0, v14

    move-object/from16 v14, v25

    move-object v1, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    move-object/from16 v20, v30

    move-object/from16 v21, v23

    move-object/from16 v22, v29

    move-object/from16 v23, v37

    move-object/from16 v24, v28

    move-object/from16 v25, v31

    move-object/from16 v26, v35

    move-object/from16 v27, v32

    move-object/from16 v28, v36

    move-object/from16 v29, v1

    move-object/from16 v30, v11

    move-object/from16 v31, v0

    move-object/from16 v32, v9

    invoke-direct/range {v13 .. v33}, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v34
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->a:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "active_background_color"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "active_font_variation_settings"

    iget-object v3, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->c:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v4, "active_font_weight"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "active_text_color"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v4, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "animation_duration"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->e:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->f:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->TO_STRING:Le74;

    const-string v5, "animation_type"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "corner_radius"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->h:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->q2()Lyi5;

    move-result-object v4

    const-string v5, "corners_radius"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "font_family"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->i:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_size"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->j:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->k:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v5, "font_size_unit"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_weight"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->l:Ltp3;

    invoke-static {p1, v0, v1, v4, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "inactive_background_color"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->m:Ltp3;

    invoke-static {p1, v0, v1, v4, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "inactive_font_variation_settings"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->n:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "inactive_font_weight"

    iget-object v4, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->o:Ltp3;

    invoke-static {p1, v0, v1, v4, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "inactive_text_color"

    iget-object v3, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->p:Ltp3;

    invoke-static {p1, v0, v1, v3, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "item_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->q:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "letter_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->r:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "line_height"

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->s:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->t:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object p0

    const-string v1, "paddings"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
