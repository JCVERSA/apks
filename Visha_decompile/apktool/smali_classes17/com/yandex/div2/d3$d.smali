.class public final Lcom/yandex/div2/d3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/d3;
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

    iput-object p1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradientTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d3$d;->b(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivRadialGradient;

    iget-object v2, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->b6()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v6

    const-string v4, "center_x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivRadialGradientCenter;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/d3;->b:Lcom/yandex/div2/DivRadialGradientCenter$c;

    :cond_0
    move-object v2, v1

    const-string v1, "JsonFieldResolver.resolv\u2026?: CENTER_X_DEFAULT_VALUE"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->b6()Lyi5;

    move-result-object v7

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z5()Lyi5;

    move-result-object v8

    const-string v6, "center_y"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivRadialGradientCenter;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div2/d3;->c:Lcom/yandex/div2/DivRadialGradientCenter$c;

    :cond_1
    move-object v3, v1

    const-string v1, "JsonFieldResolver.resolv\u2026?: CENTER_Y_DEFAULT_VALUE"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->c:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e6()Lyi5;

    move-result-object v8

    iget-object v1, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->c6()Lyi5;

    move-result-object v9

    sget-object v10, Lcom/yandex/div2/d3;->f:Lhm5;

    const-string v7, "color_map"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v10}, Lsa5;->C(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->d:Ltp3;

    sget-object v9, Lacb;->f:Lzbb;

    sget-object v10, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v11, Lcom/yandex/div2/d3;->e:Lhm5;

    const-string v8, "colors"

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v11}, Lsa5;->x(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;)Lnj3;

    move-result-object v5

    iget-object v7, p2, Lcom/yandex/div2/DivRadialGradientTemplate;->e:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->n6()Lyi5;

    move-result-object v10

    iget-object p0, p0, Lcom/yandex/div2/d3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l6()Lyi5;

    move-result-object v11

    const-string v9, "radius"

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius;

    if-nez p0, :cond_2

    sget-object p0, Lcom/yandex/div2/d3;->d:Lcom/yandex/div2/DivRadialGradientRadius$c;

    :cond_2
    move-object v6, p0

    const-string p0, "JsonFieldResolver.resolv\u2026) ?: RADIUS_DEFAULT_VALUE"

    invoke-static {v6, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivRadialGradient;-><init>(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;Ljava/util/List;Lnj3;Lcom/yandex/div2/DivRadialGradientRadius;)V

    return-object v0
.end method
