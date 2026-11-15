.class public final Lcom/yandex/mobile/ads/impl/zv1;
.super Lcom/yandex/mobile/ads/impl/hx0;
.source "SourceFile"


# instance fields
.field private final d:Lcom/yandex/mobile/ads/impl/wg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wg2<",
            "Landroid/widget/ImageView;",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/monetization/ads/nativeads/CustomizableMediaView;",
            "Lcom/yandex/mobile/ads/impl/fk0;",
            "Lcom/yandex/mobile/ads/impl/ox0;",
            "Lcom/yandex/mobile/ads/impl/wg2<",
            "Landroid/widget/ImageView;",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mediaViewRenderController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "imageViewWrapper"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/hx0;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ox0;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;
    .locals 1

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/xj0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
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
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wg2;->a()V

    .line 4
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 1

    .line 12
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg2;->a()V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 1

    .line 18
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    .line 20
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/zv1;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 1

    .line 22
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/zv1;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->b(Ljava/lang/Object;)V

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
    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/zv1;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p3

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/wg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 14
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    .line 15
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaValue"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/zv1;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv1;->d:Lcom/yandex/mobile/ads/impl/wg2;

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

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/zv1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/hx0$a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/hx0$a;->f:Lcom/yandex/mobile/ads/impl/hx0$a;

    return-object p0
.end method
