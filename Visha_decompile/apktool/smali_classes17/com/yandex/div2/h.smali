.class public final Lcom/yandex/div2/h;
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

    iput-object p1, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestination;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestination;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h;->e(Lex7;Lcom/yandex/div2/DivActionScrollDestination;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestination;
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

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$e;

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liw9;

    invoke-virtual {p0, p1, p2}, Liw9;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/StartDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$e;-><init>(Lcom/yandex/div2/StartDestination;)V

    return-object v0

    :sswitch_1
    const-string v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$c;

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o5$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/o5$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/IndexDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$c;-><init>(Lcom/yandex/div2/IndexDestination;)V

    return-object v0

    :sswitch_2
    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$b;

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpa3;

    invoke-virtual {p0, p1, p2}, Lpa3;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/EndDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$b;-><init>(Lcom/yandex/div2/EndDestination;)V

    return-object v0

    :sswitch_3
    const-string v2, "offset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->F0()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/j;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/j;->b(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestination;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance v0, Lcom/yandex/div2/DivActionScrollDestination$d;

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/p5$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p5$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/OffsetDestination;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestination$d;-><init>(Lcom/yandex/div2/OffsetDestination;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3cc89b6d -> :sswitch_3
        0x188db -> :sswitch_2
        0x5fb28d2 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionScrollDestination;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestination$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/p5$b;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestination$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestination$d;->c()Lcom/yandex/div2/OffsetDestination;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p5$b;->e(Lex7;Lcom/yandex/div2/OffsetDestination;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestination$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o5$b;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestination$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestination$c;->c()Lcom/yandex/div2/IndexDestination;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/o5$b;->e(Lex7;Lcom/yandex/div2/IndexDestination;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestination$e;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liw9;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestination$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestination$e;->c()Lcom/yandex/div2/StartDestination;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Liw9;->e(Lex7;Lcom/yandex/div2/StartDestination;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestination$b;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/h;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpa3;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestination$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestination$b;->c()Lcom/yandex/div2/EndDestination;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lpa3;->e(Lex7;Lcom/yandex/div2/EndDestination;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
