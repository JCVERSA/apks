.class public final Lcom/yandex/div2/g2;
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

    iput-object p1, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g2;->e(Lex7;Lcom/yandex/div2/Div;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/Div;
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
    const-string v2, "separator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/Div$l;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSeparatorJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$l;-><init>(Lcom/yandex/div2/DivSeparator;)V

    return-object v0

    :sswitch_1
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/Div$r;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivVideoJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$r;-><init>(Lcom/yandex/div2/DivVideo;)V

    return-object v0

    :sswitch_2
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/Div$n;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStateJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStateJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$n;-><init>(Lcom/yandex/div2/DivState;)V

    return-object v0

    :sswitch_3
    const-string v2, "pager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/Div$j;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPagerJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPagerJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPager;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$j;-><init>(Lcom/yandex/div2/DivPager;)V

    return-object v0

    :sswitch_4
    const-string v2, "input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/yandex/div2/Div$i;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInputJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivInputJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInput;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$i;-><init>(Lcom/yandex/div2/DivInput;)V

    return-object v0

    :sswitch_5
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/yandex/div2/Div$g;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$g;-><init>(Lcom/yandex/div2/DivImage;)V

    return-object v0

    :sswitch_6
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/yandex/div2/Div$q;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTextJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$q;-><init>(Lcom/yandex/div2/DivText;)V

    return-object v0

    :sswitch_7
    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/yandex/div2/Div$p;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabsJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$p;-><init>(Lcom/yandex/div2/DivTabs;)V

    return-object v0

    :sswitch_8
    const-string v2, "grid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/yandex/div2/Div$f;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGridJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGridJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGrid;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$f;-><init>(Lcom/yandex/div2/DivGrid;)V

    return-object v0

    :sswitch_9
    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/yandex/div2/Div$e;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGifImageJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGifImageJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGifImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$e;-><init>(Lcom/yandex/div2/DivGifImage;)V

    return-object v0

    :sswitch_a
    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/yandex/div2/Div$d;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGalleryJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGalleryJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGallery;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$d;-><init>(Lcom/yandex/div2/DivGallery;)V

    return-object v0

    :sswitch_b
    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/yandex/div2/Div$b;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContainerJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivContainerJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$b;-><init>(Lcom/yandex/div2/DivContainer;)V

    return-object v0

    :sswitch_c
    const-string v2, "indicator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/yandex/div2/Div$h;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivIndicatorJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivIndicatorJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$h;-><init>(Lcom/yandex/div2/DivIndicator;)V

    return-object v0

    :sswitch_d
    const-string v2, "switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    new-instance v0, Lcom/yandex/div2/Div$o;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSwitchJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSwitchJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSwitch;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$o;-><init>(Lcom/yandex/div2/DivSwitch;)V

    return-object v0

    :sswitch_e
    const-string v2, "slider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    new-instance v0, Lcom/yandex/div2/Div$m;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSliderJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$m;-><init>(Lcom/yandex/div2/DivSlider;)V

    return-object v0

    :sswitch_f
    const-string v2, "select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    new-instance v0, Lcom/yandex/div2/Div$k;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSelectJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSelectJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSelect;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$k;-><init>(Lcom/yandex/div2/DivSelect;)V

    return-object v0

    :sswitch_10
    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivTemplate;

    if-eqz v3, :cond_10

    check-cast v2, Lcom/yandex/div2/DivTemplate;

    goto :goto_1

    :cond_10
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_11

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/i2;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/i2;->b(Lex7;Lcom/yandex/div2/DivTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_12
    new-instance v0, Lcom/yandex/div2/Div$c;

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivCustomJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivCustomJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCustom;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$c;-><init>(Lcom/yandex/div2/DivCustom;)V

    return-object v0

    nop

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

.method public e(Lex7;Lcom/yandex/div2/Div;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/Div$g;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->U3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$g;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$g;->c()Lcom/yandex/div2/DivImage;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivImage;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/Div$e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGifImageJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$e;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$e;->c()Lcom/yandex/div2/DivGifImage;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGifImageJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivGifImage;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/Div$q;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTextJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$q;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$q;->c()Lcom/yandex/div2/DivText;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/Div$l;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSeparatorJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$l;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$l;->c()Lcom/yandex/div2/DivSeparator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSeparatorJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSeparator;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContainerJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$b;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivContainerJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivContainer;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/Div$f;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGridJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$f;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGridJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivGrid;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/Div$d;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGalleryJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$d;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivGalleryJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivGallery;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/Div$j;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPagerJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$j;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPagerJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivPager;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/Div$p;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabsJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$p;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivTabs;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStateJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$n;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStateJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivState;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/Div$c;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivCustomJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$c;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivCustomJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivCustom;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/Div$h;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivIndicatorJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$h;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$h;->c()Lcom/yandex/div2/DivIndicator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivIndicatorJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivIndicator;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/Div$m;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSliderJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$m;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$m;->c()Lcom/yandex/div2/DivSlider;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSliderJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSlider;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/Div$o;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSwitchJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$o;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$o;->c()Lcom/yandex/div2/DivSwitch;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSwitchJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSwitch;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/Div$i;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInputJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$i;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$i;->c()Lcom/yandex/div2/DivInput;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivInputJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivInput;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/Div$k;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSelectJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$k;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$k;->c()Lcom/yandex/div2/DivSelect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSelectJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSelect;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/Div$r;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/yandex/div2/g2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoJsonParser$b;

    check-cast p2, Lcom/yandex/div2/Div$r;

    invoke-virtual {p2}, Lcom/yandex/div2/Div$r;->c()Lcom/yandex/div2/DivVideo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivVideoJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivVideo;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
