.class public final Lcom/yandex/div2/w1;
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

    iput-object p1, p0, Lcom/yandex/div2/w1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputMaskTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/w1;->b(Lex7;Lcom/yandex/div2/DivInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputMask;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputMask;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivInputMaskTemplate$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivInputMask$c;

    iget-object p0, p0, Lcom/yandex/div2/w1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/g1$d;

    check-cast p2, Lcom/yandex/div2/DivInputMaskTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMaskTemplate$c;->c()Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/g1$d;->b(Lex7;Lcom/yandex/div2/DivFixedLengthInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$c;-><init>(Lcom/yandex/div2/DivFixedLengthInputMask;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivInputMaskTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivInputMask$b;

    iget-object p0, p0, Lcom/yandex/div2/w1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvh2;

    check-cast p2, Lcom/yandex/div2/DivInputMaskTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMaskTemplate$b;->c()Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lvh2;->b(Lex7;Lcom/yandex/div2/DivCurrencyInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$b;-><init>(Lcom/yandex/div2/DivCurrencyInputMask;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivInputMaskTemplate$d;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivInputMask$d;

    iget-object p0, p0, Lcom/yandex/div2/w1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lho2;

    check-cast p2, Lcom/yandex/div2/DivInputMaskTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivInputMaskTemplate$d;->c()Lcom/yandex/div2/DivPhoneInputMaskTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lho2;->b(Lex7;Lcom/yandex/div2/DivPhoneInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPhoneInputMask;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivInputMask$d;-><init>(Lcom/yandex/div2/DivPhoneInputMask;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
