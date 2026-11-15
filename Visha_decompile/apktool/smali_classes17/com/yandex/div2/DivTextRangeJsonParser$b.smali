.class public final Lcom/yandex/div2/DivTextRangeJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextRangeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextRangeJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Range;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivText$Range;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextRangeJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText$Range;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Range;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v33, Lcom/yandex/div2/DivText$Range;

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v11

    sget-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->e:Lzbb;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->m8()Lyi5;

    move-result-object v1

    const-string v2, "background"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/yandex/div2/DivTextRangeBackground;

    sget-object v7, Lacb;->d:Lzbb;

    sget-object v10, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v14, Lcom/yandex/div2/DivTextRangeJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "baseline_offset"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v7

    move-object v5, v10

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p8()Lyi5;

    move-result-object v1

    const-string v2, "border"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/yandex/div2/DivTextRangeBorder;

    sget-object v16, Lacb;->b:Lzbb;

    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->j:Lpnb;

    const-string v3, "end"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v18

    sget-object v1, Lacb;->c:Lzbb;

    const-string v2, "font_family"

    invoke-static {v8, v9, v2, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v19

    const-string v2, "font_feature_settings"

    invoke-static {v8, v9, v2, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    const-string v3, "font_size"

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->k:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    sget-object v4, Lcom/yandex/div2/DivTextRangeJsonParser;->f:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v22, Lcom/yandex/div2/DivTextRangeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_size_unit"

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v22, v1

    :goto_1
    const-string v1, "font_variation_settings"

    sget-object v2, Lacb;->h:Lzbb;

    invoke-static {v8, v9, v1, v2}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v23

    sget-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->g:Lzbb;

    sget-object v2, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v3, "font_weight"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v24

    const-string v3, "font_weight_value"

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->l:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v25

    const-string v1, "letter_spacing"

    invoke-static {v8, v9, v1, v7, v10}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v26

    const-string v3, "line_height"

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->m:Lpnb;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v27

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->x8()Lyi5;

    move-result-object v1

    const-string v2, "mask"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/yandex/div2/DivTextRangeMask;

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->n:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivTextRangeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "start"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v6, v10

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    sget-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->h:Lzbb;

    sget-object v7, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    const-string v2, "strike"

    invoke-static {v8, v9, v2, v1, v7}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v28

    sget-object v1, Lacb;->f:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v3, "text_color"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v29

    iget-object v0, v0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v0

    const-string v1, "text_shadow"

    invoke-static {v8, v9, v1, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/yandex/div2/DivShadow;

    const-string v2, "top_offset"

    sget-object v5, Lcom/yandex/div2/DivTextRangeJsonParser;->o:Lpnb;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static/range {v0 .. v5}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    const-string v0, "underline"

    sget-object v1, Lcom/yandex/div2/DivTextRangeJsonParser;->i:Lzbb;

    invoke-static {v8, v9, v0, v1, v7}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v32

    move-object/from16 v10, v33

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v34

    move-object/from16 v27, v6

    invoke-direct/range {v10 .. v32}, Lcom/yandex/div2/DivText$Range;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBackground;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeMask;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShadow;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v33
.end method

.method public e(Lex7;Lcom/yandex/div2/DivText$Range;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->m8()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "baseline_offset"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->p8()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "end"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_family"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_feature_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_size"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v3, "font_size_unit"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v3, "font_weight"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "letter_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "line_height"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->p:Lcom/yandex/div2/DivTextRangeMask;

    iget-object v2, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x8()Lyi5;

    move-result-object v2

    const-string v3, "mask"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "start"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivLineStyle;->TO_STRING:Le74;

    const-string v3, "strike"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v4, "text_color"

    invoke-static {p1, v0, v4, v1, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    iget-object p0, p0, Lcom/yandex/div2/DivTextRangeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object p0

    const-string v3, "text_shadow"

    invoke-static {p1, v0, v3, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "top_offset"

    iget-object v1, p2, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "underline"

    iget-object p2, p2, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
