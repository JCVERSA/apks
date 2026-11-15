.class public final Lcom/yandex/div2/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/k4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k4;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextGradientTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k4;->e(Lex7;Lcom/yandex/div2/DivTextGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextGradientTemplate;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivTextGradientTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivTextGradientTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivTextGradientTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    const-string v3, "gradient"

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/yandex/div2/DivTextGradientTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/k4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivTextGradientTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivLinearGradientTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/k2$c;->d(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextGradientTemplate$b;-><init>(Lcom/yandex/div2/DivLinearGradientTemplate;)V

    return-object v0

    :cond_4
    const-string v3, "radial_gradient"

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/yandex/div2/DivTextGradientTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/k4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivTextGradientTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivRadialGradientTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/d3$c;->d(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTextGradientTemplate$c;-><init>(Lcom/yandex/div2/DivRadialGradientTemplate;)V

    return-object v0

    :cond_6
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextGradientTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTextGradientTemplate$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/k4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$c;

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextGradientTemplate$b;->c()Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$c;->e(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTextGradientTemplate$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/k4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$c;

    check-cast p2, Lcom/yandex/div2/DivTextGradientTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTextGradientTemplate$c;->c()Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$c;->e(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
