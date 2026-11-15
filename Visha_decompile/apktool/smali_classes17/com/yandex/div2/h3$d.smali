.class public final Lcom/yandex/div2/h3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/h3;
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

    iput-object p1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/h3$d;->b(Lex7;Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRoundedRectangleShape;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v2, p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;->a:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "background_color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    iget-object v4, p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v7

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v8

    const-string v6, "corner_radius"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/h3;->b:Lcom/yandex/div2/DivFixedSize;

    :cond_0
    move-object v3, v1

    const-string v1, "JsonFieldResolver.resolv\u2026RNER_RADIUS_DEFAULT_VALUE"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;->c:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v8

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v9

    const-string v7, "item_height"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div2/h3;->c:Lcom/yandex/div2/DivFixedSize;

    :cond_1
    move-object v4, v1

    const-string v1, "JsonFieldResolver.resolv\u2026ITEM_HEIGHT_DEFAULT_VALUE"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;->d:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v9

    iget-object v1, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v10

    const-string v8, "item_width"

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_2

    sget-object v1, Lcom/yandex/div2/h3;->d:Lcom/yandex/div2/DivFixedSize;

    :cond_2
    move-object v5, v1

    const-string v1, "JsonFieldResolver.resolv\u2026 ITEM_WIDTH_DEFAULT_VALUE"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p2, Lcom/yandex/div2/DivRoundedRectangleShapeTemplate;->e:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->y7()Lyi5;

    move-result-object v10

    iget-object p0, p0, Lcom/yandex/div2/h3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object v11

    const-string v9, "stroke"

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/yandex/div2/DivStroke;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;)V

    return-object v0
.end method
