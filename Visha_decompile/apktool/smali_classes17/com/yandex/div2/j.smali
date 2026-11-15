.class public final Lcom/yandex/div2/j;
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

    iput-object p1, p0, Lcom/yandex/div2/j;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/j;->b(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestination;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestination;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$d;

    iget-object p0, p0, Lcom/yandex/div2/j;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/p5$d;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;->c()Lcom/yandex/div2/OffsetDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/p5$d;->b(Lex7;Lcom/yandex/div2/OffsetDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/OffsetDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$d;-><init>(Lcom/yandex/div2/OffsetDestination;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$c;

    iget-object p0, p0, Lcom/yandex/div2/j;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->E9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o5$d;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;->c()Lcom/yandex/div2/IndexDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/o5$d;->b(Lex7;Lcom/yandex/div2/IndexDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IndexDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$c;-><init>(Lcom/yandex/div2/IndexDestination;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$e;

    iget-object p0, p0, Lcom/yandex/div2/j;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw9;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;->c()Lcom/yandex/div2/StartDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkw9;->b(Lex7;Lcom/yandex/div2/StartDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StartDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$e;-><init>(Lcom/yandex/div2/StartDestination;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$b;

    iget-object p0, p0, Lcom/yandex/div2/j;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lra3;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;->c()Lcom/yandex/div2/EndDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lra3;->b(Lex7;Lcom/yandex/div2/EndDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/EndDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$b;-><init>(Lcom/yandex/div2/EndDestination;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
