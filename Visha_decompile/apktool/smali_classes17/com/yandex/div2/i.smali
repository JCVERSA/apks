.class public final Lcom/yandex/div2/i;
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

    iput-object p1, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/i;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/i;->e(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollDestinationTemplate;
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

    instance-of v3, v2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivActionScrollDestinationTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljw9;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/StartDestinationTemplate;

    invoke-virtual {p0, p1, v4, p2}, Ljw9;->d(Lex7;Lcom/yandex/div2/StartDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StartDestinationTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;-><init>(Lcom/yandex/div2/StartDestinationTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "index"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o5$c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/IndexDestinationTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/o5$c;->d(Lex7;Lcom/yandex/div2/IndexDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IndexDestinationTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;-><init>(Lcom/yandex/div2/IndexDestinationTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "end"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqa3;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/EndDestinationTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lqa3;->d(Lex7;Lcom/yandex/div2/EndDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/EndDestinationTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;-><init>(Lcom/yandex/div2/EndDestinationTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "offset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/p5$c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/OffsetDestinationTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/p5$c;->d(Lex7;Lcom/yandex/div2/OffsetDestinationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/OffsetDestinationTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;-><init>(Lcom/yandex/div2/OffsetDestinationTemplate;)V

    return-object v0

    :cond_7
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x3cc89b6d -> :sswitch_3
        0x188db -> :sswitch_2
        0x5fb28d2 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionScrollDestinationTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/p5$c;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;->c()Lcom/yandex/div2/OffsetDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p5$c;->e(Lex7;Lcom/yandex/div2/OffsetDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/o5$c;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$c;->c()Lcom/yandex/div2/IndexDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/o5$c;->e(Lex7;Lcom/yandex/div2/IndexDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljw9;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$e;->c()Lcom/yandex/div2/StartDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljw9;->e(Lex7;Lcom/yandex/div2/StartDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/i;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqa3;

    check-cast p2, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionScrollDestinationTemplate$b;->c()Lcom/yandex/div2/EndDestinationTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lqa3;->e(Lex7;Lcom/yandex/div2/EndDestinationTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
