.class public final Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSliderTextStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$TextStyle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSlider$TextStyle;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSlider$TextStyle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$TextStyle;
    .locals 17

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "context"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/yandex/div2/DivSlider$TextStyle;

    const-string v0, "font_family"

    sget-object v1, Lacb;->c:Lzbb;

    invoke-static {v7, v8, v0, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    sget-object v11, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->h:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "font_size"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v0

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->f:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "font_size_unit"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    const-string v0, "font_variation_settings"

    sget-object v1, Lacb;->h:Lzbb;

    invoke-static {v7, v8, v0, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    sget-object v3, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->g:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v15, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "font_weight"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v15, v0

    :goto_2
    const-string v2, "font_weight_value"

    sget-object v5, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->i:Lpnb;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {v7, v8, v1, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/yandex/div2/DivPoint;

    sget-object v3, Lacb;->f:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v16, Lcom/yandex/div2/DivSliderTextStyleJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "text_color"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v16, v0

    :goto_3
    move-object v1, v10

    move-object v2, v9

    move-object v3, v13

    move-object v4, v6

    move-object v5, v14

    move-object v6, v15

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/yandex/div2/DivSlider$TextStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivPoint;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v10
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSlider$TextStyle;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSlider$TextStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "font_family"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_size"

    iget-object v2, p2, Lcom/yandex/div2/DivSlider$TextStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSlider$TextStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v3, "font_size_unit"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v2, p2, Lcom/yandex/div2/DivSlider$TextStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSlider$TextStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v3, "font_weight"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v2, p2, Lcom/yandex/div2/DivSlider$TextStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSlider$TextStyle;->g:Lcom/yandex/div2/DivPoint;

    iget-object p0, p0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object p0

    const-string v2, "offset"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSlider$TextStyle;->h:Lcom/yandex/div/json/expressions/Expression;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v1, "text_color"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
