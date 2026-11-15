.class public final Lcom/yandex/div2/p1;
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

    iput-object p1, p0, Lcom/yandex/div2/p1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p1;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p1;->e(Lex7;Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;
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

    instance-of v3, v2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    const-string v3, "default"

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/p1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x0$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/x0$c;->d(Lex7;Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$b;-><init>(Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;)V

    return-object v0

    :cond_4
    const-string v3, "stretch"

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/p1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/y3$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/y3$c;->d(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$c;-><init>(Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;)V

    return-object v0

    :cond_6
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivIndicatorItemPlacementTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/p1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x0$c;

    check-cast p2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$b;->c()Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x0$c;->e(Lex7;Lcom/yandex/div2/DivDefaultIndicatorItemPlacementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/p1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/y3$c;

    check-cast p2, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivIndicatorItemPlacementTemplate$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y3$c;->e(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacementTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
