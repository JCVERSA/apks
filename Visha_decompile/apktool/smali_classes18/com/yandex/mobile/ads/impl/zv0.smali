.class public final Lcom/yandex/mobile/ads/impl/zv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yv0;

.field private final b:Lcom/yandex/mobile/ads/impl/gt1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/gt1<",
            "Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/yv0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/yv0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/gt1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/gt1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/zv0;-><init>(Lcom/yandex/mobile/ads/impl/yv0;Lcom/yandex/mobile/ads/impl/gt1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yv0;Lcom/yandex/mobile/ads/impl/gt1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/yv0;",
            "Lcom/yandex/mobile/ads/impl/gt1<",
            "Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "controlsAvailabilityChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeLayoutInflater"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zv0;->a:Lcom/yandex/mobile/ads/impl/yv0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zv0;->b:Lcom/yandex/mobile/ads/impl/gt1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/yandex/mobile/ads/impl/aw0;)Lcom/yandex/mobile/ads/impl/aw0;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customControls"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zv0;->a:Lcom/yandex/mobile/ads/impl/yv0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "controls"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zv0;->b:Lcom/yandex/mobile/ads/impl/gt1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;

    const/4 p3, 0x0

    invoke-static {p1, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/gt1;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/aw0;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/nv;

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/aw0;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/nv;-><init>(Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    :goto_1
    return-object p0
.end method
