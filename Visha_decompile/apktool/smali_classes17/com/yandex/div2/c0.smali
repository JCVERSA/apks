.class public final Lcom/yandex/div2/c0;
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

    iput-object p1, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/c0;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackground;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBackground;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/c0;->e(Lex7;Lcom/yandex/div2/DivBackground;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackground;
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

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "radial_gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/DivBackground$e;

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$e;-><init>(Lcom/yandex/div2/DivRadialGradient;)V

    return-object v0

    :sswitch_1
    const-string v2, "solid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivBackground$f;

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhq2;

    invoke-virtual {p0, p1, p2}, Lhq2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSolidBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$f;-><init>(Lcom/yandex/div2/DivSolidBackground;)V

    return-object v0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/DivBackground$b;

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$b;-><init>(Lcom/yandex/div2/DivImageBackground;)V

    return-object v0

    :sswitch_3
    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/DivBackground$c;

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$c;-><init>(Lcom/yandex/div2/DivLinearGradient;)V

    return-object v0

    :sswitch_4
    const-string v2, "nine_patch_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivBackgroundTemplate;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/yandex/div2/DivBackgroundTemplate;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/e0;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/e0;->b(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackground;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_6
    new-instance v0, Lcom/yandex/div2/DivBackground$d;

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lum2;

    invoke-virtual {p0, p1, p2}, Lum2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackground$d;-><init>(Lcom/yandex/div2/DivNinePatchBackground;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1d1ad69 -> :sswitch_4
        0x557f730 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x688a6ab -> :sswitch_1
        0x702ab150 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivBackground;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivBackground$c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$b;

    check-cast p2, Lcom/yandex/div2/DivBackground$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$b;->e(Lex7;Lcom/yandex/div2/DivLinearGradient;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivBackground$e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$b;

    check-cast p2, Lcom/yandex/div2/DivBackground$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$b;->e(Lex7;Lcom/yandex/div2/DivRadialGradient;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivBackground$b;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->R3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivImageBackground;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivBackground$f;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhq2;

    check-cast p2, Lcom/yandex/div2/DivBackground$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackground$f;->c()Lcom/yandex/div2/DivSolidBackground;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lhq2;->e(Lex7;Lcom/yandex/div2/DivSolidBackground;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivBackground$d;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/c0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lum2;

    check-cast p2, Lcom/yandex/div2/DivBackground$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lum2;->e(Lex7;Lcom/yandex/div2/DivNinePatchBackground;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
