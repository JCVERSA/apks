.class public final Lcom/yandex/div2/d3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/d3;
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

    iput-object p1, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradient;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$b;->e(Lex7;Lcom/yandex/div2/DivRadialGradient;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivRadialGradient;

    iget-object v1, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v1

    const-string v2, "center_x"

    invoke-static {p1, p2, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivRadialGradientCenter;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/d3;->b:Lcom/yandex/div2/DivRadialGradientCenter$c;

    :cond_0
    move-object v2, v1

    const-string v1, "JsonPropertyParser.readO\u2026?: CENTER_X_DEFAULT_VALUE"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v1

    const-string v3, "center_y"

    invoke-static {p1, p2, v3, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivRadialGradientCenter;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div2/d3;->c:Lcom/yandex/div2/DivRadialGradientCenter$c;

    :cond_1
    move-object v3, v1

    const-string v1, "JsonPropertyParser.readO\u2026?: CENTER_Y_DEFAULT_VALUE"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->c6()Lyi5;

    move-result-object v1

    sget-object v4, Lcom/yandex/div2/d3;->f:Lhm5;

    const-string v5, "color_map"

    invoke-static {p1, p2, v5, v1, v4}, Ltb5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v4

    sget-object v8, Lacb;->f:Lzbb;

    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v10, Lcom/yandex/div2/d3;->e:Lhm5;

    const-string v7, "colors"

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v5 .. v10}, Lpa5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;)Lnj3;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l6()Lyi5;

    move-result-object p0

    const-string v1, "radius"

    invoke-static {p1, p2, v1, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius;

    if-nez p0, :cond_2

    sget-object p0, Lcom/yandex/div2/d3;->d:Lcom/yandex/div2/DivRadialGradientRadius$c;

    :cond_2
    move-object v6, p0

    const-string p0, "JsonPropertyParser.readO\u2026) ?: RADIUS_DEFAULT_VALUE"

    invoke-static {v6, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivRadialGradient;-><init>(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;Ljava/util/List;Lnj3;Lcom/yandex/div2/DivRadialGradientRadius;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivRadialGradient;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v2, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v2

    const-string v3, "center_x"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v2, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v2

    const-string v3, "center_y"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->c6()Lyi5;

    move-result-object v2

    const-string v3, "color_map"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "colors"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lnj3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    iget-object p0, p0, Lcom/yandex/div2/d3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l6()Lyi5;

    move-result-object p0

    const-string v1, "radius"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "type"

    const-string p2, "radial_gradient"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
