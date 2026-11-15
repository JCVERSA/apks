.class public final Lcom/yandex/div2/d3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/d3;
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

    iput-object p1, p0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradientTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$c;->e(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradientTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d3$c;->d(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientTemplate;
    .locals 18

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

    new-instance v13, Lcom/yandex/div2/DivRadialGradientTemplate;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivRadialGradientTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->a6()Lyi5;

    move-result-object v8

    const-string v5, "center_x"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v9, "readOptionalField(contex\u2026CenterJsonTemplateParser)"

    invoke-static {v15, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivRadialGradientTemplate;->b:Ltp3;

    move-object v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v3, v0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->a6()Lyi5;

    move-result-object v8

    const-string v5, "center_y"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v10

    invoke-static {v10, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivRadialGradientTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->d6()Lyi5;

    move-result-object v8

    sget-object v9, Lcom/yandex/div2/d3;->f:Lhm5;

    const-string v6, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v9, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "color_map"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v14, v6

    move v6, v2

    invoke-static/range {v3 .. v9}, Lra5;->A(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalListField(co\u2026LOR_MAP_VALIDATOR.cast())"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->f:Lzbb;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivRadialGradientTemplate;->d:Ltp3;

    move-object v8, v3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v7, Lcom/yandex/div2/d3;->e:Lhm5;

    invoke-static {v7, v14}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "colors"

    move-object v3, v12

    move-object/from16 v4, p3

    move-object v14, v7

    move v7, v2

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v14

    invoke-static/range {v3 .. v10}, Lra5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalExpressionLi\u2026 COLORS_VALIDATOR.cast())"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradientTemplate;->e:Ltp3;

    move-object v7, v1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    iget-object v0, v0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->m6()Lyi5;

    move-result-object v8

    const-string v5, "radius"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v0, "readOptionalField(contex\u2026RadiusJsonTemplateParser)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivRadialGradientTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v13
.end method

.method public e(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->a6()Lyi5;

    move-result-object v2

    const-string v3, "center_x"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->a6()Lyi5;

    move-result-object v2

    const-string v3, "center_y"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->d6()Lyi5;

    move-result-object v2

    const-string v3, "color_map"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->d:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "colors"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->F(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->e:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/d3$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m6()Lyi5;

    move-result-object p0

    const-string v1, "radius"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "type"

    const-string p2, "radial_gradient"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
