.class public final Lcom/yandex/mobile/ads/impl/kg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/sj0;

.field private final c:Lcom/yandex/mobile/ads/impl/ix0;

.field private final d:Lcom/yandex/mobile/ads/impl/n91;

.field private final e:Lcom/yandex/mobile/ads/impl/t81;

.field private final f:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ix0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/ix0;",
            "Lcom/yandex/mobile/ads/impl/n91;",
            "Lcom/yandex/mobile/ads/impl/t81;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewAdapterCreator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeForcePauseObserver"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kg;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kg;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kg;->c:Lcom/yandex/mobile/ads/impl/ix0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/kg;->d:Lcom/yandex/mobile/ads/impl/n91;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/kg;->e:Lcom/yandex/mobile/ads/impl/t81;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/kg;->f:Lcom/yandex/mobile/ads/impl/sp1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/ej0;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Lcom/yandex/mobile/ads/impl/cb0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/jj0;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/d91;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/kg;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v4, v5}, Lcom/yandex/mobile/ads/impl/d91;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg;->b:Lcom/yandex/mobile/ads/impl/sj0;

    .line 5
    invoke-direct {v2, v3, v4, p0}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;)V

    invoke-direct {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/cb0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/jj0;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/ej0;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ej0;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    :cond_1
    return-object v0
.end method

.method public final a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/fz;
    .locals 2

    .line 13
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/mn1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/ln1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg;->f:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/ln1;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/sp1;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    :cond_1
    return-object v1
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/impl/jg<",
            "*>;"
        }
    .end annotation

    .line 15
    const-string v0, "type"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    instance-of p2, p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_6

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    invoke-virtual {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/kg;->a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/zu0;

    move-result-object v1

    goto/16 :goto_3

    .line 18
    :sswitch_1
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_3

    .line 19
    :cond_1
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_6

    check-cast p1, Landroid/widget/ImageView;

    .line 20
    new-instance p2, Lcom/yandex/mobile/ads/impl/fk0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kg;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {p2, p1, v0, p0}, Lcom/yandex/mobile/ads/impl/fk0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 21
    new-instance v1, Lcom/yandex/mobile/ads/impl/ej0;

    invoke-direct {v1, p2}, Lcom/yandex/mobile/ads/impl/ej0;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    goto :goto_3

    .line 22
    :sswitch_2
    const-string p0, "container"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/ts1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ts1;-><init>(Landroid/view/View;)V

    .line 24
    new-instance v1, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    goto :goto_3

    .line 25
    :sswitch_3
    const-string p0, "string"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :sswitch_4
    const-string p0, "number"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Landroid/widget/TextView;

    goto :goto_2

    :cond_5
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_6

    check-cast p1, Landroid/widget/TextView;

    .line 27
    new-instance p0, Lcom/yandex/mobile/ads/impl/w42;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/w42;-><init>(Landroid/widget/TextView;)V

    .line 28
    new-instance v1, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    :cond_6
    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        -0x187eb37f -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x62f6fe4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/zu0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    new-instance v1, Lcom/yandex/mobile/ads/impl/fk0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kg;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/kg;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v1, p1, v2, v3}, Lcom/yandex/mobile/ads/impl/fk0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/kg;->c:Lcom/yandex/mobile/ads/impl/ix0;

    .line 9
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kg;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/kg;->d:Lcom/yandex/mobile/ads/impl/n91;

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kg;->e:Lcom/yandex/mobile/ads/impl/t81;

    .line 11
    invoke-virtual {p1, p2, v2, v3, p0}, Lcom/yandex/mobile/ads/impl/ix0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;)Lcom/yandex/mobile/ads/impl/hx0;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-nez v1, :cond_2

    if-eqz p0, :cond_3

    .line 12
    :cond_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/zu0;

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/zu0;-><init>(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/hx0;)V

    :cond_3
    return-object v0
.end method
