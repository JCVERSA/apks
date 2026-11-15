.class public final Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSliderTextStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$TextStyle;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$TextStyle;
    .locals 19

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

    new-instance v12, Lcom/yandex/div2/DivSlider$TextStyle;

    iget-object v1, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->a:Ltp3;

    const-string v2, "font_family"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v2, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->b:Ltp3;

    sget-object v14, Lacb;->b:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->h:Lpnb;

    sget-object v16, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->c:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->f:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    iget-object v1, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->d:Ltp3;

    const-string v2, "font_variation_settings"

    sget-object v3, Lacb;->h:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v17

    iget-object v2, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->e:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->g:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v18, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v7, v18

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->f:Ltp3;

    const-string v4, "font_weight_value"

    sget-object v7, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->i:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v6, v15

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v1, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->g:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y5()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v5

    const-string v3, "offset"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/yandex/div2/DivPoint;

    iget-object v1, v10, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->h:Ltp3;

    sget-object v4, Lacb;->f:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v7, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "text_color"

    move-object/from16 v0, p1

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v10, v7

    goto :goto_3

    :cond_3
    move-object v10, v0

    :goto_3
    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    move-object v5, v8

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v14

    move-object v9, v15

    invoke-direct/range {v2 .. v10}, Lcom/yandex/div2/DivSlider$TextStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivPoint;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v12
.end method
