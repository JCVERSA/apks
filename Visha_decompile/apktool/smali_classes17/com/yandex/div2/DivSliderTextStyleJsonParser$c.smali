.class public final Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSliderTextStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;
    .locals 20

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;

    sget-object v5, Lacb;->c:Lzbb;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    const-string v4, "font_family"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026ride, parent?.fontFamily)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lacb;->b:Lzbb;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->h:Lpnb;

    const-string v4, "font_size"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026INT, FONT_SIZE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->f:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v8, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    const-string v4, "font_size_unit"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026 DivSizeUnit.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->h:Lzbb;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    const-string v4, "font_variation_settings"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026t?.fontVariationSettings)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->g:Lzbb;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->e:Ltp3;

    move-object/from16 v17, v2

    goto :goto_4

    :cond_4
    move-object/from16 v17, v13

    :goto_4
    sget-object v18, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v4, "font_weight"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object/from16 v19, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivFontWeight.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->f:Ltp3;

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, v13

    :goto_5
    sget-object v18, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->i:Lpnb;

    const-string v4, "font_weight_value"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T_WEIGHT_VALUE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->g:Ltp3;

    move-object v6, v2

    move-object/from16 v2, p0

    goto :goto_6

    :cond_6
    move-object/from16 v2, p0

    move-object v6, v13

    :goto_6
    iget-object v2, v2, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X5()Lyi5;

    move-result-object v7

    const-string v4, "offset"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v1

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalField(contex\u2026vPointJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->f:Lzbb;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->h:Ltp3;

    move-object v7, v0

    goto :goto_7

    :cond_7
    move-object v7, v13

    :goto_7
    sget-object v0, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "text_color"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v10

    const-string v0, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v10, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object v7, v15

    move-object v8, v9

    move-object v9, v1

    invoke-direct/range {v2 .. v10}, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->a:Ltp3;

    const-string v2, "font_family"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_size"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->c:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v3, "font_size_unit"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->e:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v3, "font_weight"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->g:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->X5()Lyi5;

    move-result-object p0

    const-string v2, "offset"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->h:Ltp3;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v1, "text_color"

    invoke-static {p1, v0, v1, p0, p2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
