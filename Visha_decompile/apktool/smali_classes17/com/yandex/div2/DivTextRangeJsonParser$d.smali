.class public final Lcom/yandex/div2/DivTextRangeJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextRangeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextRangeJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Range;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Range;
    .locals 37

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

    new-instance v35, Lcom/yandex/div2/DivText$Range;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v13

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextRangeJsonParser;->e:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->c:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->o8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->m8()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/yandex/div2/DivTextRangeBackground;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->d:Ltp3;

    sget-object v8, Lacb;->d:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v16, Lcom/yandex/div2/DivTextRangeJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "baseline_offset"

    move-object/from16 v1, p1

    move-object v5, v8

    move-object v6, v12

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->r8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p8()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/yandex/div2/DivTextRangeBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->f:Ltp3;

    sget-object v18, Lacb;->b:Lzbb;

    sget-object v19, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivTextRangeJsonParser;->j:Lpnb;

    const-string v4, "end"

    move-object/from16 v1, p1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->g:Ltp3;

    sget-object v2, Lacb;->c:Lzbb;

    const-string v3, "font_family"

    invoke-static {v9, v1, v11, v3, v2}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->h:Ltp3;

    const-string v3, "font_feature_settings"

    invoke-static {v9, v1, v11, v3, v2}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v22

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->i:Ltp3;

    const-string v4, "font_size"

    sget-object v7, Lcom/yandex/div2/DivTextRangeJsonParser;->k:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v23

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->j:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextRangeJsonParser;->f:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v24, Lcom/yandex/div2/DivTextRangeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v7, v24

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v24, v1

    :goto_1
    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->k:Ltp3;

    const-string v2, "font_variation_settings"

    sget-object v3, Lacb;->h:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v25

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->l:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextRangeJsonParser;->g:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v26

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->m:Ltp3;

    const-string v4, "font_weight_value"

    sget-object v7, Lcom/yandex/div2/DivTextRangeJsonParser;->l:Lpnb;

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->n:Ltp3;

    const-string v4, "letter_spacing"

    move-object v5, v8

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v28

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->o:Ltp3;

    const-string v4, "line_height"

    sget-object v7, Lcom/yandex/div2/DivTextRangeJsonParser;->m:Lpnb;

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v29

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->p:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->z8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->x8()Lyi5;

    move-result-object v6

    const-string v4, "mask"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/yandex/div2/DivTextRangeMask;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->q:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTextRangeJsonParser;->n:Lpnb;

    sget-object v12, Lcom/yandex/div2/DivTextRangeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "start"

    move-object/from16 v1, p1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v7, v12

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->r:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextRangeJsonParser;->h:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    const-string v4, "strike"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v30

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->s:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "text_color"

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->t:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->O6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivTextRangeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v5

    const-string v3, "text_shadow"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/yandex/div2/DivShadow;

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->u:Ltp3;

    const-string v3, "top_offset"

    sget-object v6, Lcom/yandex/div2/DivTextRangeJsonParser;->o:Lpnb;

    move-object/from16 v0, p1

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v6}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v33

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate$RangeTemplate;->v:Ltp3;

    const-string v3, "underline"

    sget-object v4, Lcom/yandex/div2/DivTextRangeJsonParser;->i:Lzbb;

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v34

    move-object/from16 v12, v35

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v36

    move-object/from16 v29, v7

    invoke-direct/range {v12 .. v34}, Lcom/yandex/div2/DivText$Range;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBackground;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextRangeMask;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShadow;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v35
.end method
