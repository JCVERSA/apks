.class public final Lcom/yandex/div2/z2;
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

    iput-object p1, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/z2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientCenter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/z2;->e(Lex7;Lcom/yandex/div2/DivRadialGradientCenter;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientCenter;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fixed"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$b;

    iget-object p0, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivRadialGradientCenter$b;-><init>(Lcom/yandex/div2/DivRadialGradientFixedCenter;)V

    return-object v0

    :cond_0
    const-string v2, "relative"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    iget-object p0, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvo2;

    invoke-virtual {p0, p1, p2}, Lvo2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivRadialGradientCenter$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeCenter;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivRadialGradientCenterTemplate;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/yandex/div2/DivRadialGradientCenterTemplate;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/b3;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/b3;->b(Lex7;Lcom/yandex/div2/DivRadialGradientCenterTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientCenter;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivRadialGradientCenter;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivRadialGradientFixedCenter;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/z2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvo2;

    check-cast p2, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvo2;->e(Lex7;Lcom/yandex/div2/DivRadialGradientRelativeCenter;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
