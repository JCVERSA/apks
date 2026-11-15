.class public final Lcom/yandex/div2/d0;
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

    iput-object p1, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d0;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackgroundTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d0;->e(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBackgroundTemplate;
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

    instance-of v3, v2, Lcom/yandex/div2/DivBackgroundTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivBackgroundTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->a()Ljava/lang/String;

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
    const-string v3, "radial_gradient"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivRadialGradientTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/d3$c;->d(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackgroundTemplate$e;-><init>(Lcom/yandex/div2/DivRadialGradientTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "solid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$f;

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liq2;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/DivSolidBackgroundTemplate;

    invoke-virtual {p0, p1, v4, p2}, Liq2;->d(Lex7;Lcom/yandex/div2/DivSolidBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSolidBackgroundTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackgroundTemplate$f;-><init>(Lcom/yandex/div2/DivSolidBackgroundTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivImageBackgroundTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackgroundTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackgroundTemplate$b;-><init>(Lcom/yandex/div2/DivImageBackgroundTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "gradient"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/DivLinearGradientTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/k2$c;->d(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackgroundTemplate$c;-><init>(Lcom/yandex/div2/DivLinearGradientTemplate;)V

    return-object v0

    :sswitch_4
    const-string v3, "nine_patch_image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/yandex/div2/DivBackgroundTemplate$d;

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvm2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yandex/div2/DivBackgroundTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_7
    check-cast v4, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lvm2;->d(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivBackgroundTemplate$d;-><init>(Lcom/yandex/div2/DivNinePatchBackgroundTemplate;)V

    return-object v0

    :cond_8
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x1d1ad69 -> :sswitch_4
        0x557f730 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x688a6ab -> :sswitch_1
        0x702ab150 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivBackgroundTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/k2$c;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$c;->c()Lcom/yandex/div2/DivLinearGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$c;->e(Lex7;Lcom/yandex/div2/DivLinearGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/d3$c;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$e;->c()Lcom/yandex/div2/DivRadialGradientTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d3$c;->e(Lex7;Lcom/yandex/div2/DivRadialGradientTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$b;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->S3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$b;->c()Lcom/yandex/div2/DivImageBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$f;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liq2;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$f;->c()Lcom/yandex/div2/DivSolidBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Liq2;->e(Lex7;Lcom/yandex/div2/DivSolidBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivBackgroundTemplate$d;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/d0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvm2;

    check-cast p2, Lcom/yandex/div2/DivBackgroundTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivBackgroundTemplate$d;->c()Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2;->e(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
