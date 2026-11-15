.class public final Lcom/yandex/div2/u1;
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

    iput-object p1, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/u1;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputMask;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/u1;->e(Lex7;Lcom/yandex/div2/DivInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputMask;
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

    const v3, 0x65b3d6e

    if-eq v2, v3, :cond_4

    const v3, 0x1775c611

    if-eq v2, v3, :cond_2

    const v3, 0x224bf011

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "currency"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivInputMask$b;

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lth2;

    invoke-virtual {p0, p1, p2}, Lth2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$b;-><init>(Lcom/yandex/div2/DivCurrencyInputMask;)V

    return-object v0

    :cond_2
    const-string v2, "fixed_length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/DivInputMask$c;

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/g1$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g1$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$c;-><init>(Lcom/yandex/div2/DivFixedLengthInputMask;)V

    return-object v0

    :cond_4
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivInputMaskTemplate;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/yandex/div2/DivInputMaskTemplate;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/w1;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/w1;->b(Lex7;Lcom/yandex/div2/DivInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputMask;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_7
    new-instance v0, Lcom/yandex/div2/DivInputMask$d;

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfo2;

    invoke-virtual {p0, p1, p2}, Lfo2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPhoneInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$d;-><init>(Lcom/yandex/div2/DivPhoneInputMask;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivInputMask;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivInputMask$c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/g1$b;

    check-cast p2, Lcom/yandex/div2/DivInputMask$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMask$c;->c()Lcom/yandex/div2/DivFixedLengthInputMask;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g1$b;->e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivInputMask$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lth2;

    check-cast p2, Lcom/yandex/div2/DivInputMask$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMask$b;->c()Lcom/yandex/div2/DivCurrencyInputMask;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lth2;->e(Lex7;Lcom/yandex/div2/DivCurrencyInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivInputMask$d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/u1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfo2;

    check-cast p2, Lcom/yandex/div2/DivInputMask$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMask$d;->c()Lcom/yandex/div2/DivPhoneInputMask;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfo2;->e(Lex7;Lcom/yandex/div2/DivPhoneInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
