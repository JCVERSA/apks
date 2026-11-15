.class public final Lcom/yandex/mobile/ads/impl/bw1;
.super Lcom/yandex/mobile/ads/impl/hx0;
.source "SourceFile"


# instance fields
.field private final d:Lcom/yandex/mobile/ads/impl/wg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wg2<",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/s31;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/monetization/ads/nativeads/CustomizableMediaView;",
            "Lcom/yandex/mobile/ads/impl/s31;",
            "Lcom/yandex/mobile/ads/impl/ox0;",
            "Lcom/yandex/mobile/ads/impl/wg2<",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mediaViewRenderController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "multiBannerViewWrapper"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/hx0;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ox0;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    .line 2
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wg2;->a()V

    .line 4
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 1

    .line 9
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg2;->a()V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 1

    .line 16
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    .line 18
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 2

    .line 21
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V
    .locals 1

    .line 5
    check-cast p3, Lcom/yandex/mobile/ads/impl/ex0;

    .line 6
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/wg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 11
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    .line 12
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaValue"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->a(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/bw1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/hx0$a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/hx0$a;->e:Lcom/yandex/mobile/ads/impl/hx0$a;

    return-object p0
.end method
