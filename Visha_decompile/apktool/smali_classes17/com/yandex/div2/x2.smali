.class public final Lcom/yandex/div2/x2;
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

    iput-object p1, p0, Lcom/yandex/div2/x2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPivotTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x2;->e(Lex7;Lcom/yandex/div2/DivPivotTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotTemplate;
    .locals 6

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
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v3

    invoke-interface {v3, v1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v3

    instance-of v4, v3, Lcom/yandex/div2/DivPivotTemplate;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v3, Lcom/yandex/div2/DivPivotTemplate;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/yandex/div2/DivPivotTemplate;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :cond_3
    :goto_1
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/yandex/div2/DivPivotTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/x2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivotFixedJsonParser$c;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/yandex/div2/DivPivotTemplate;->b()Ljava/lang/Object;

    move-result-object v5

    :cond_4
    check-cast v5, Lcom/yandex/div2/DivPivotFixedTemplate;

    invoke-virtual {p0, p1, v5, p2}, Lcom/yandex/div2/DivPivotFixedJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivPivotFixedTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotFixedTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPivotTemplate$b;-><init>(Lcom/yandex/div2/DivPivotFixedTemplate;)V

    return-object v0

    :cond_5
    const-string v2, "pivot-percentage"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/yandex/div2/DivPivotTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/x2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljo2;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/yandex/div2/DivPivotTemplate;->b()Ljava/lang/Object;

    move-result-object v5

    :cond_6
    check-cast v5, Lcom/yandex/div2/DivPivotPercentageTemplate;

    invoke-virtual {p0, p1, v5, p2}, Ljo2;->d(Lex7;Lcom/yandex/div2/DivPivotPercentageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPivotPercentageTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPivotTemplate$c;-><init>(Lcom/yandex/div2/DivPivotPercentageTemplate;)V

    return-object v0

    :cond_7
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPivotTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivPivotTemplate$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/x2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivotFixedJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivPivotTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPivotTemplate$b;->c()Lcom/yandex/div2/DivPivotFixedTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPivotFixedJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivPivotFixedTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivPivotTemplate$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/x2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljo2;

    check-cast p2, Lcom/yandex/div2/DivPivotTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPivotTemplate$c;->c()Lcom/yandex/div2/DivPivotPercentageTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljo2;->e(Lex7;Lcom/yandex/div2/DivPivotPercentageTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
