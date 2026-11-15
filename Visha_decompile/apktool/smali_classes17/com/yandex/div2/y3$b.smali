.class public final Lcom/yandex/div2/y3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/y3;
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

    iput-object p1, p0, Lcom/yandex/div2/y3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y3$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y3$b;->e(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacement;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStretchIndicatorItemPlacement;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    iget-object p0, p0, Lcom/yandex/div2/y3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    const-string v1, "item_spacing"

    invoke-static {p1, p2, v1, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFixedSize;

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/div2/y3;->b:Lcom/yandex/div2/DivFixedSize;

    :cond_0
    const-string v1, "JsonPropertyParser.readO\u2026TEM_SPACING_DEFAULT_VALUE"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/y3;->d:Lpnb;

    sget-object v1, Lcom/yandex/div2/y3;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "max_visible_items"

    move-object v2, p1

    move-object v3, p2

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;-><init>(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacement;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/y3$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    const-string v2, "item_spacing"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "max_visible_items"

    iget-object p2, p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "type"

    const-string p2, "stretch"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
