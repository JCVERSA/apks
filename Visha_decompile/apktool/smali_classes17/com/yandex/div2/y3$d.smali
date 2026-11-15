.class public final Lcom/yandex/div2/y3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/y3;
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

    iput-object p1, p0, Lcom/yandex/div2/y3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/y3$d;->b(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStretchIndicatorItemPlacement;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    iget-object v2, p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/y3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/y3$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v6

    const-string v4, "item_spacing"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFixedSize;

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/div2/y3;->b:Lcom/yandex/div2/DivFixedSize;

    :cond_0
    const-string v1, "JsonFieldResolver.resolv\u2026TEM_SPACING_DEFAULT_VALUE"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;->b:Ltp3;

    sget-object v6, Lacb;->b:Lzbb;

    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v8, Lcom/yandex/div2/y3;->d:Lpnb;

    sget-object p2, Lcom/yandex/div2/y3;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "max_visible_items"

    move-object v2, p1

    move-object v4, p3

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-direct {v0, p0, p2}, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;-><init>(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
