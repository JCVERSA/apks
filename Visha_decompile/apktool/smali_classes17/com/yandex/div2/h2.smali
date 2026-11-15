.class public final Lcom/yandex/div2/h2;
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

    iput-object p1, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/h2;->e(Lex7;Lcom/yandex/div2/DivTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;
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

    instance-of v3, v2, Lcom/yandex/div2/DivTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->a()Ljava/lang/String;

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
    const-string v3, "separator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$l;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSeparatorJsonParser$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivSeparatorTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivSeparatorJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparatorTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$l;-><init>(Lcom/yandex/div2/DivSeparatorTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$r;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoJsonParser$c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/DivVideoTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivVideoJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivVideoTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$r;-><init>(Lcom/yandex/div2/DivVideoTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$n;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStateJsonParser$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivStateTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivStateJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivStateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStateTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$n;-><init>(Lcom/yandex/div2/DivStateTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "pager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$j;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPagerJsonParser$c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/DivPagerTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivPagerJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivPagerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPagerTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$j;-><init>(Lcom/yandex/div2/DivPagerTemplate;)V

    return-object v0

    :sswitch_4
    const-string v3, "input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$i;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInputJsonParser$c;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_7
    check-cast v4, Lcom/yandex/div2/DivInputTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivInputJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivInputTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$i;-><init>(Lcom/yandex/div2/DivInputTemplate;)V

    return-object v0

    :sswitch_5
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$g;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageJsonParser$c;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    check-cast v4, Lcom/yandex/div2/DivImageTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivImageJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$g;-><init>(Lcom/yandex/div2/DivImageTemplate;)V

    return-object v0

    :sswitch_6
    const-string v3, "text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$q;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTextJsonParser$c;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_9
    check-cast v4, Lcom/yandex/div2/DivTextTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivTextJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$q;-><init>(Lcom/yandex/div2/DivTextTemplate;)V

    return-object v0

    :sswitch_7
    const-string v3, "tabs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$p;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabsJsonParser$c;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_a
    check-cast v4, Lcom/yandex/div2/DivTabsTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivTabsJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTabsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabsTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$p;-><init>(Lcom/yandex/div2/DivTabsTemplate;)V

    return-object v0

    :sswitch_8
    const-string v3, "grid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$f;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGridJsonParser$c;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_b
    check-cast v4, Lcom/yandex/div2/DivGridTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivGridJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivGridTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGridTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$f;-><init>(Lcom/yandex/div2/DivGridTemplate;)V

    return-object v0

    :sswitch_9
    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGifImageJsonParser$c;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_c
    check-cast v4, Lcom/yandex/div2/DivGifImageTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivGifImageJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivGifImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGifImageTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$e;-><init>(Lcom/yandex/div2/DivGifImageTemplate;)V

    return-object v0

    :sswitch_a
    const-string v3, "gallery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$d;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGalleryJsonParser$c;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_d
    check-cast v4, Lcom/yandex/div2/DivGalleryTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivGalleryJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivGalleryTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGalleryTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$d;-><init>(Lcom/yandex/div2/DivGalleryTemplate;)V

    return-object v0

    :sswitch_b
    const-string v3, "container"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContainerJsonParser$c;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_e
    check-cast v4, Lcom/yandex/div2/DivContainerTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivContainerJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivContainerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainerTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$b;-><init>(Lcom/yandex/div2/DivContainerTemplate;)V

    return-object v0

    :sswitch_c
    const-string v3, "indicator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$h;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_f
    check-cast v4, Lcom/yandex/div2/DivIndicatorTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivIndicatorJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicatorTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$h;-><init>(Lcom/yandex/div2/DivIndicatorTemplate;)V

    return-object v0

    :sswitch_d
    const-string v3, "switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$o;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSwitchJsonParser$c;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_10
    check-cast v4, Lcom/yandex/div2/DivSwitchTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivSwitchJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSwitchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSwitchTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$o;-><init>(Lcom/yandex/div2/DivSwitchTemplate;)V

    return-object v0

    :sswitch_e
    const-string v3, "slider"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$m;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSliderJsonParser$c;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_11
    check-cast v4, Lcom/yandex/div2/DivSliderTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivSliderJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSliderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$m;-><init>(Lcom/yandex/div2/DivSliderTemplate;)V

    return-object v0

    :sswitch_f
    const-string v3, "select"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$k;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSelectJsonParser$c;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_12
    check-cast v4, Lcom/yandex/div2/DivSelectTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivSelectJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSelectTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSelectTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$k;-><init>(Lcom/yandex/div2/DivSelectTemplate;)V

    return-object v0

    :sswitch_10
    const-string v3, "custom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Lcom/yandex/div2/DivTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivCustomJsonParser$c;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/yandex/div2/DivTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_13
    check-cast v4, Lcom/yandex/div2/DivCustomTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivCustomJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivCustomTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCustomTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTemplate$c;-><init>(Lcom/yandex/div2/DivCustomTemplate;)V

    return-object v0

    :cond_14
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_10
        -0x3600cb04 -> :sswitch_f
        -0x359f871f -> :sswitch_e
        -0x350448cc -> :sswitch_d
        -0x2a7041f1 -> :sswitch_c
        -0x187eb37f -> :sswitch_b
        -0xbb388ae -> :sswitch_a
        0x18fc4 -> :sswitch_9
        0x308b46 -> :sswitch_8
        0x36337e -> :sswitch_7
        0x36452d -> :sswitch_6
        0x5faa95b -> :sswitch_5
        0x5fb57ca -> :sswitch_4
        0x657efc3 -> :sswitch_3
        0x68ac491 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6748e2e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$g;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$g;->c()Lcom/yandex/div2/DivImageTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivImageTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGifImageJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$e;->c()Lcom/yandex/div2/DivGifImageTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGifImageJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivGifImageTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$q;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTextJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$q;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$q;->c()Lcom/yandex/div2/DivTextTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$l;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSeparatorJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$l;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$l;->c()Lcom/yandex/div2/DivSeparatorTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSeparatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContainerJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$b;->c()Lcom/yandex/div2/DivContainerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivContainerJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivContainerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$f;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGridJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$f;->c()Lcom/yandex/div2/DivGridTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGridJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivGridTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$d;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGalleryJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$d;->c()Lcom/yandex/div2/DivGalleryTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGalleryJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivGalleryTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$j;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPagerJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$j;->c()Lcom/yandex/div2/DivPagerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPagerJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivPagerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$p;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabsJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$p;->c()Lcom/yandex/div2/DivTabsTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTabsTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$n;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStateJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$n;->c()Lcom/yandex/div2/DivStateTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStateJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivStateTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$c;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivCustomJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$c;->c()Lcom/yandex/div2/DivCustomTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivCustomJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivCustomTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$h;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$h;->c()Lcom/yandex/div2/DivIndicatorTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivIndicatorJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$m;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSliderJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$m;->c()Lcom/yandex/div2/DivSliderTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSliderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$o;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSwitchJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$o;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$o;->c()Lcom/yandex/div2/DivSwitchTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSwitchJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSwitchTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$i;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInputJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$i;->c()Lcom/yandex/div2/DivInputTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivInputJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivInputTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$k;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSelectJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$k;->c()Lcom/yandex/div2/DivSelectTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSelectJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSelectTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$r;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/yandex/div2/h2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivTemplate$r;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$r;->c()Lcom/yandex/div2/DivVideoTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivVideoJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivVideoTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
