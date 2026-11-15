.class public final Lcom/yandex/div2/h3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/h3;
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

    iput-object p1, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h3$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h3$b;->e(Lex7;Lcom/yandex/div2/DivRoundedRectangleShape;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRoundedRectangleShape;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivRoundedRectangleShape;

    sget-object v1, Lacb;->f:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v3, "background_color"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    iget-object v1, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v1

    const-string v3, "corner_radius"

    invoke-static {p1, p2, v3, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/h3;->b:Lcom/yandex/div2/DivFixedSize;

    :cond_0
    move-object v3, v1

    const-string v1, "JsonPropertyParser.readO\u2026RNER_RADIUS_DEFAULT_VALUE"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v1

    const-string v4, "item_height"

    invoke-static {p1, p2, v4, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div2/h3;->c:Lcom/yandex/div2/DivFixedSize;

    :cond_1
    move-object v4, v1

    const-string v1, "JsonPropertyParser.readO\u2026ITEM_HEIGHT_DEFAULT_VALUE"

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v1

    const-string v5, "item_width"

    invoke-static {p1, p2, v5, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_2

    sget-object v1, Lcom/yandex/div2/h3;->d:Lcom/yandex/div2/DivFixedSize;

    :cond_2
    move-object v5, v1

    const-string v1, "JsonPropertyParser.readO\u2026 ITEM_WIDTH_DEFAULT_VALUE"

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object p0

    const-string v1, "stroke"

    invoke-static {p1, p2, v1, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/yandex/div2/DivStroke;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivRoundedRectangleShape;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "background_color"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v2

    const-string v3, "corner_radius"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v2

    const-string v3, "item_height"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v2

    const-string v3, "item_width"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    iget-object p0, p0, Lcom/yandex/div2/h3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object p0

    const-string v1, "stroke"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "type"

    const-string p2, "rounded_rectangle"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
