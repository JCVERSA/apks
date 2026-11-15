.class public final Lcom/yandex/div2/e0;
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

    iput-object p1, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/e0;->b(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackground;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackground;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivBackground$c;

    iget-object p0, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$d;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$c;->c()Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k2$d;->b(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$c;-><init>(Lcom/yandex/div2/DivLinearGradient;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$e;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivBackground$e;

    iget-object p0, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$d;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$e;->c()Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d3$d;->b(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$e;-><init>(Lcom/yandex/div2/DivRadialGradient;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$b;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivBackground$b;

    iget-object p0, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$b;->c()Lcom/yandex/div2/DivImageBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$b;-><init>(Lcom/yandex/div2/DivImageBackground;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$f;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivBackground$f;

    iget-object p0, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljq2;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$f;->c()Lcom/yandex/div2/DivSolidBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Ljq2;->b(Lex7;Lcom/yandex/div2/DivSolidBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSolidBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$f;-><init>(Lcom/yandex/div2/DivSolidBackground;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$d;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/DivBackground$d;

    iget-object p0, p0, Lcom/yandex/div2/e0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwm2;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$d;->c()Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lwm2;->b(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$d;-><init>(Lcom/yandex/div2/DivNinePatchBackground;)V

    :goto_0
    return-object v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
