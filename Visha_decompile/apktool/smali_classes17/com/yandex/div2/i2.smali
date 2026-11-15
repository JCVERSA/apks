.class public final Lcom/yandex/div2/i2;
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

    iput-object p1, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/i2;->b(Lex7;Lcom/yandex/div2/DivTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/Div;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$g;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/Div$g;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivImageJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$g;->c()Lcom/yandex/div2/DivImageTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivImageJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$g;-><init>(Lcom/yandex/div2/DivImage;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$e;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/Div$e;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGifImageJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$e;->c()Lcom/yandex/div2/DivGifImageTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivGifImageJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivGifImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGifImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$e;-><init>(Lcom/yandex/div2/DivGifImage;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$q;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/Div$q;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l8()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTextJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$q;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$q;->c()Lcom/yandex/div2/DivTextTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$q;-><init>(Lcom/yandex/div2/DivText;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$l;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/Div$l;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->L6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSeparatorJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$l;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$l;->c()Lcom/yandex/div2/DivSeparatorTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSeparatorJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSeparator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$l;-><init>(Lcom/yandex/div2/DivSeparator;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$b;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/Div$b;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContainerJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$b;->c()Lcom/yandex/div2/DivContainerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivContainerJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivContainerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$b;-><init>(Lcom/yandex/div2/DivContainer;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$f;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div2/Div$f;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGridJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$f;->c()Lcom/yandex/div2/DivGridTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivGridJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivGridTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGrid;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$f;-><init>(Lcom/yandex/div2/DivGrid;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$d;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/yandex/div2/Div$d;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivGalleryJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$d;->c()Lcom/yandex/div2/DivGalleryTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivGalleryJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivGalleryTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivGallery;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$d;-><init>(Lcom/yandex/div2/DivGallery;)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$j;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/yandex/div2/Div$j;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPagerJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$j;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$j;->c()Lcom/yandex/div2/DivPagerTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPagerJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivPagerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPager;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$j;-><init>(Lcom/yandex/div2/DivPager;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$p;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/yandex/div2/Div$p;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabsJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$p;->c()Lcom/yandex/div2/DivTabsTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabsJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTabsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$p;-><init>(Lcom/yandex/div2/DivTabs;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$n;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/yandex/div2/Div$n;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStateJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$n;->c()Lcom/yandex/div2/DivStateTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivStateJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivStateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$n;-><init>(Lcom/yandex/div2/DivState;)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$c;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/yandex/div2/Div$c;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A2()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivCustomJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$c;->c()Lcom/yandex/div2/DivCustomTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivCustomJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivCustomTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCustom;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$c;-><init>(Lcom/yandex/div2/DivCustom;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$h;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/yandex/div2/Div$h;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivIndicatorJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$h;->c()Lcom/yandex/div2/DivIndicatorTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivIndicatorJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$h;-><init>(Lcom/yandex/div2/DivIndicator;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$m;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/yandex/div2/Div$m;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSliderJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$m;->c()Lcom/yandex/div2/DivSliderTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSliderJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSliderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$m;-><init>(Lcom/yandex/div2/DivSlider;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$o;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/yandex/div2/Div$o;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSwitchJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$o;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$o;->c()Lcom/yandex/div2/DivSwitchTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSwitchJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSwitchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSwitch;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$o;-><init>(Lcom/yandex/div2/DivSwitch;)V

    goto :goto_0

    :cond_d
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$i;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/yandex/div2/Div$i;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->r4()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivInputJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$i;->c()Lcom/yandex/div2/DivInputTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivInputJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivInputTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInput;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$i;-><init>(Lcom/yandex/div2/DivInput;)V

    goto :goto_0

    :cond_e
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$k;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/yandex/div2/Div$k;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSelectJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$k;->c()Lcom/yandex/div2/DivSelectTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSelectJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSelectTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSelect;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$k;-><init>(Lcom/yandex/div2/DivSelect;)V

    goto :goto_0

    :cond_f
    instance-of v0, p2, Lcom/yandex/div2/DivTemplate$r;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/yandex/div2/Div$r;

    iget-object p0, p0, Lcom/yandex/div2/i2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivTemplate$r;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTemplate$r;->c()Lcom/yandex/div2/DivVideoTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivVideoJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivVideoTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/Div$r;-><init>(Lcom/yandex/div2/DivVideo;)V

    :goto_0
    return-object v0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
