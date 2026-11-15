.class public final Lcom/yandex/div2/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/l4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/l4;->b(Lex7;Lcom/yandex/div2/DivTextGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextGradient;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextGradient;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTextGradientTemplate$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivTextGradient$b;

    iget-object p0, p0, Lcom/yandex/div2/l4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$d;

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextGradientTemplate$b;->c()Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k2$d;->b(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextGradient$b;-><init>(Lcom/yandex/div2/DivLinearGradient;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTextGradientTemplate$c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivTextGradient$c;

    iget-object p0, p0, Lcom/yandex/div2/l4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$d;

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextGradientTemplate$c;->c()Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d3$d;->b(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextGradient$c;-><init>(Lcom/yandex/div2/DivRadialGradient;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
