.class public final Lcom/yandex/div2/k2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/k2;
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

    iput-object p1, p0, Lcom/yandex/div2/k2$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLinearGradientTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$c;->e(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLinearGradientTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k2$c;->d(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradientTemplate;
    .locals 16

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

    new-instance v12, Lcom/yandex/div2/DivLinearGradientTemplate;

    sget-object v5, Lacb;->b:Lzbb;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivLinearGradientTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/k2;->c:Lpnb;

    const-string v4, "angle"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026_TO_INT, ANGLE_VALIDATOR)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivLinearGradientTemplate;->b:Ltp3;

    move-object v6, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move-object v6, v13

    :goto_1
    iget-object v2, v2, Lcom/yandex/div2/k2$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q4()Lyi5;

    move-result-object v7

    sget-object v8, Lcom/yandex/div2/k2;->e:Lhm5;

    const-string v9, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v8, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "color_map"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v1

    invoke-static/range {v2 .. v8}, Lra5;->A(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalListField(co\u2026LOR_MAP_VALIDATOR.cast())"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->f:Lzbb;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivLinearGradientTemplate;->c:Ltp3;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v0, Lcom/yandex/div2/k2;->d:Lhm5;

    invoke-static {v0, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "colors"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lra5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalExpressionLi\u2026 COLORS_VALIDATOR.cast())"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v14, v15, v0}, Lcom/yandex/div2/DivLinearGradientTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->a:Ltp3;

    const-string v2, "angle"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->b:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/k2$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q4()Lyi5;

    move-result-object p0

    const-string v2, "color_map"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivLinearGradientTemplate;->c:Ltp3;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v1, "colors"

    invoke-static {p1, v0, v1, p0, p2}, Lra5;->F(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "type"

    const-string p2, "gradient"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
