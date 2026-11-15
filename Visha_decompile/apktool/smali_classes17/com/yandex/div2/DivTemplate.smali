.class public abstract Lcom/yandex/div2/DivTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTemplate$a;,
        Lcom/yandex/div2/DivTemplate$b;,
        Lcom/yandex/div2/DivTemplate$c;,
        Lcom/yandex/div2/DivTemplate$d;,
        Lcom/yandex/div2/DivTemplate$e;,
        Lcom/yandex/div2/DivTemplate$f;,
        Lcom/yandex/div2/DivTemplate$g;,
        Lcom/yandex/div2/DivTemplate$h;,
        Lcom/yandex/div2/DivTemplate$i;,
        Lcom/yandex/div2/DivTemplate$j;,
        Lcom/yandex/div2/DivTemplate$k;,
        Lcom/yandex/div2/DivTemplate$l;,
        Lcom/yandex/div2/DivTemplate$m;,
        Lcom/yandex/div2/DivTemplate$n;,
        Lcom/yandex/div2/DivTemplate$o;,
        Lcom/yandex/div2/DivTemplate$p;,
        Lcom/yandex/div2/DivTemplate$q;,
        Lcom/yandex/div2/DivTemplate$r;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivTemplate$a;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTemplate;->a:Lcom/yandex/div2/DivTemplate$a;

    sget-object v0, Lcom/yandex/div2/DivTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTemplate;->b:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$g;

    if-eqz v0, :cond_0

    const-string p0, "image"

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$e;

    if-eqz v0, :cond_1

    const-string p0, "gif"

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$q;

    if-eqz v0, :cond_2

    const-string p0, "text"

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$l;

    if-eqz v0, :cond_3

    const-string p0, "separator"

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$b;

    if-eqz v0, :cond_4

    const-string p0, "container"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$f;

    if-eqz v0, :cond_5

    const-string p0, "grid"

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$d;

    if-eqz v0, :cond_6

    const-string p0, "gallery"

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$j;

    if-eqz v0, :cond_7

    const-string p0, "pager"

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$p;

    if-eqz v0, :cond_8

    const-string p0, "tabs"

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$n;

    if-eqz v0, :cond_9

    const-string p0, "state"

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$c;

    if-eqz v0, :cond_a

    const-string p0, "custom"

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$h;

    if-eqz v0, :cond_b

    const-string p0, "indicator"

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$m;

    if-eqz v0, :cond_c

    const-string p0, "slider"

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$o;

    if-eqz v0, :cond_d

    const-string p0, "switch"

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$i;

    if-eqz v0, :cond_e

    const-string p0, "input"

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$k;

    if-eqz v0, :cond_f

    const-string p0, "select"

    goto :goto_0

    :cond_f
    instance-of p0, p0, Lcom/yandex/div2/DivTemplate$r;

    if-eqz p0, :cond_10

    const-string p0, "video"

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$g;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTemplate$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$g;->c()Lcom/yandex/div2/DivImageTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$e;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivTemplate$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$e;->c()Lcom/yandex/div2/DivGifImageTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$q;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivTemplate$q;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$q;->c()Lcom/yandex/div2/DivTextTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$l;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivTemplate$l;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$l;->c()Lcom/yandex/div2/DivSeparatorTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivTemplate$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$b;->c()Lcom/yandex/div2/DivContainerTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$f;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivTemplate$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$f;->c()Lcom/yandex/div2/DivGridTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$d;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivTemplate$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$d;->c()Lcom/yandex/div2/DivGalleryTemplate;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$j;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivTemplate$j;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$j;->c()Lcom/yandex/div2/DivPagerTemplate;

    move-result-object p0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$p;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivTemplate$p;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$p;->c()Lcom/yandex/div2/DivTabsTemplate;

    move-result-object p0

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$n;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/yandex/div2/DivTemplate$n;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$n;->c()Lcom/yandex/div2/DivStateTemplate;

    move-result-object p0

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$c;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/yandex/div2/DivTemplate$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$c;->c()Lcom/yandex/div2/DivCustomTemplate;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$h;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/yandex/div2/DivTemplate$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$h;->c()Lcom/yandex/div2/DivIndicatorTemplate;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$m;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/DivTemplate$m;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$m;->c()Lcom/yandex/div2/DivSliderTemplate;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$o;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/yandex/div2/DivTemplate$o;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$o;->c()Lcom/yandex/div2/DivSwitchTemplate;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$i;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/DivTemplate$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$i;->c()Lcom/yandex/div2/DivInputTemplate;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$k;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/yandex/div2/DivTemplate$k;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$k;->c()Lcom/yandex/div2/DivSelectTemplate;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/yandex/div2/DivTemplate$r;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/DivTemplate$r;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTemplate$r;->c()Lcom/yandex/div2/DivVideoTemplate;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/h2;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/h2;->e(Lex7;Lcom/yandex/div2/DivTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
