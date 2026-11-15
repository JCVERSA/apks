.class public final Lcom/yandex/div2/w2;
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

    iput-object p1, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/w2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPivot;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/w2;->e(Lex7;Lcom/yandex/div2/DivPivot;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivot;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pivot-fixed"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/yandex/div2/DivPivot$b;

    iget-object p0, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivotFixedJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPivotFixedJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotFixed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPivot$b;-><init>(Lcom/yandex/div2/DivPivotFixed;)V

    return-object v0

    :cond_1
    const-string v2, "pivot-percentage"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/yandex/div2/DivPivot$c;

    iget-object p0, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio2;

    invoke-virtual {p0, p1, p2}, Lio2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotPercentage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPivot$c;-><init>(Lcom/yandex/div2/DivPivotPercentage;)V

    return-object v0

    :cond_2
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivPivotTemplate;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/yandex/div2/DivPivotTemplate;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/y2;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/y2;->b(Lex7;Lcom/yandex/div2/DivPivotTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivot;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPivot;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivPivot$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivotFixedJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivPivot$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPivotFixedJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivPivotFixed;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivPivot$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/w2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio2;

    check-cast p2, Lcom/yandex/div2/DivPivot$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPivot$c;->c()Lcom/yandex/div2/DivPivotPercentage;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio2;->e(Lex7;Lcom/yandex/div2/DivPivotPercentage;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
