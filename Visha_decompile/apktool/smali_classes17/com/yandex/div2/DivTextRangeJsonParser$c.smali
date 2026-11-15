.class public final Lcom/yandex/div2/DivTextRangeJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextRangeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextRangeJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextRangeJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate$RangeTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate$RangeTemplate;
    .locals 40

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

    new-instance v36, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v8

    const-string v5, "actions"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v3, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->e:Lzbb;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->b:Ltp3;

    move-object v8, v3

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sget-object v9, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    const-string v5, "alignment_vertical"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    const-string v3, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->n8()Lyi5;

    move-result-object v8

    const-string v5, "background"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalField(contex\u2026groundJsonTemplateParser)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->d:Lzbb;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->d:Ltp3;

    move-object v8, v3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v5, "baseline_offset"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v16

    move v7, v2

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026Offset, NUMBER_TO_DOUBLE)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->e:Ltp3;

    move-object v7, v3

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget-object v3, v0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->q8()Lyi5;

    move-result-object v8

    const-string v5, "border"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v18, Lacb;->b:Lzbb;

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->f:Ltp3;

    move-object/from16 v19, v3

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    sget-object v20, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v21, Lcom/yandex/div2/DivTextRangeJsonParser;->j:Lpnb;

    const-string v5, "end"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v20

    move-object/from16 v23, v10

    move-object/from16 v10, v21

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026ER_TO_INT, END_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lacb;->c:Lzbb;

    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->g:Ltp3;

    move-object v8, v3

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const-string v5, "font_family"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v9

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalFieldWithExp\u2026ride, parent?.fontFamily)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->h:Ltp3;

    move-object/from16 v21, v3

    goto :goto_7

    :cond_7
    const/16 v21, 0x0

    :goto_7
    const-string v5, "font_feature_settings"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v6, v9

    move v7, v2

    move-object/from16 v24, v8

    move-object/from16 v8, v21

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026ent?.fontFeatureSettings)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->i:Ltp3;

    move-object v8, v3

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    sget-object v21, Lcom/yandex/div2/DivTextRangeJsonParser;->k:Lpnb;

    const-string v5, "font_size"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v25, v9

    move-object/from16 v9, v20

    move-object/from16 v26, v10

    move-object/from16 v10, v21

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026INT, FONT_SIZE_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->f:Lzbb;

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->j:Ltp3;

    move-object v8, v3

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    :goto_9
    sget-object v9, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    const-string v5, "font_size_unit"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026 DivSizeUnit.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->h:Lzbb;

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->k:Ltp3;

    move-object v8, v3

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    :goto_a
    const-string v5, "font_variation_settings"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalFieldWithExp\u2026t?.fontVariationSettings)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->g:Lzbb;

    if-eqz v1, :cond_b

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->l:Ltp3;

    move-object/from16 v21, v3

    goto :goto_b

    :cond_b
    const/16 v21, 0x0

    :goto_b
    sget-object v27, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v5, "font_weight"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v28, v8

    move-object/from16 v8, v21

    move-object/from16 v29, v9

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026ivFontWeight.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->m:Ltp3;

    move-object v8, v3

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    sget-object v21, Lcom/yandex/div2/DivTextRangeJsonParser;->l:Lpnb;

    const-string v5, "font_weight_value"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v27, v9

    move-object/from16 v9, v20

    move-object/from16 v30, v10

    move-object/from16 v10, v21

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026T_WEIGHT_VALUE_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->n:Ltp3;

    move-object v8, v3

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    :goto_d
    const-string v5, "letter_spacing"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v16

    move v7, v2

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026pacing, NUMBER_TO_DOUBLE)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->o:Ltp3;

    move-object v8, v3

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    :goto_e
    sget-object v16, Lcom/yandex/div2/DivTextRangeJsonParser;->m:Lpnb;

    const-string v5, "line_height"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v31, v9

    move-object/from16 v9, v20

    move-object/from16 v32, v10

    move-object/from16 v10, v16

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026T, LINE_HEIGHT_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->p:Ltp3;

    move-object v7, v3

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    :goto_f
    iget-object v3, v0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->y8()Lyi5;

    move-result-object v8

    const-string v5, "mask"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalField(contex\u2026geMaskJsonTemplateParser)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->q:Ltp3;

    move-object v8, v3

    goto :goto_10

    :cond_10
    const/4 v8, 0x0

    :goto_10
    sget-object v16, Lcom/yandex/div2/DivTextRangeJsonParser;->n:Lpnb;

    const-string v5, "start"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v33, v9

    move-object/from16 v9, v20

    move-object/from16 v34, v10

    move-object/from16 v10, v16

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026_TO_INT, START_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->h:Lzbb;

    if-eqz v1, :cond_11

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->r:Ltp3;

    move-object v8, v3

    goto :goto_11

    :cond_11
    const/4 v8, 0x0

    :goto_11
    sget-object v16, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    const-string v5, "strike"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v8, "readOptionalFieldWithExp\u2026DivLineStyle.FROM_STRING)"

    invoke-static {v9, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->f:Lzbb;

    if-eqz v1, :cond_12

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->s:Ltp3;

    move-object/from16 v17, v3

    goto :goto_12

    :cond_12
    const/16 v17, 0x0

    :goto_12
    sget-object v21, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v5, "text_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object v13, v8

    move-object/from16 v8, v17

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->t:Ltp3;

    move-object v7, v3

    goto :goto_13

    :cond_13
    const/4 v7, 0x0

    :goto_13
    iget-object v0, v0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object v8

    const-string v5, "text_shadow"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    const-string v3, "readOptionalField(contex\u2026ShadowJsonTemplateParser)"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->u:Ltp3;

    move-object v8, v3

    goto :goto_14

    :cond_14
    const/4 v8, 0x0

    :goto_14
    sget-object v17, Lcom/yandex/div2/DivTextRangeJsonParser;->o:Lpnb;

    const-string v5, "top_offset"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v6, v18

    move v7, v2

    move-object/from16 v38, v9

    move-object/from16 v9, v20

    move-object/from16 v39, v10

    move-object/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026NT, TOP_OFFSET_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->i:Lzbb;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->v:Ltp3;

    move-object v8, v1

    goto :goto_15

    :cond_15
    const/4 v8, 0x0

    :goto_15
    const-string v5, "underline"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v1

    move-object/from16 v35, v1

    invoke-static {v1, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v36

    move-object/from16 v16, v23

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v26

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v30

    move-object/from16 v23, v29

    move-object/from16 v24, v28

    move-object/from16 v25, v27

    move-object/from16 v26, v32

    move-object/from16 v27, v31

    move-object/from16 v28, v34

    move-object/from16 v29, v33

    move-object/from16 v30, v39

    move-object/from16 v31, v37

    move-object/from16 v32, v38

    move-object/from16 v33, v0

    move-object/from16 v34, v10

    invoke-direct/range {v13 .. v35}, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v36
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->n8()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "baseline_offset"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->e:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q8()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "end"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_family"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_feature_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->h:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_size"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->i:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->j:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v3, "font_size_unit"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->k:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->l:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v3, "font_weight"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->m:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "letter_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->n:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "line_height"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->o:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->p:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->y8()Lyi5;

    move-result-object v2

    const-string v3, "mask"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "start"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->q:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->r:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivLineStyle;->TO_STRING:Le74;

    const-string v3, "strike"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->s:Ltp3;

    sget-object v3, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v4, "text_color"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->t:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTextRangeJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object p0

    const-string v3, "text_shadow"

    invoke-static {p1, v0, v3, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "top_offset"

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->u:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p0, "underline"

    iget-object p2, p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->v:Ltp3;

    invoke-static {p1, v0, p0, p2, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
