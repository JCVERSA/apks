.class public final Lcom/vungle/ads/BannerView$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/ImpressionTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/BannerView;


# direct methods
.method constructor <init>(Lcom/vungle/ads/BannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onImpression(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    const-string v0, "BannerView"

    .line 4
    .line 5
    const-string v1, "ImpressionTracker checked the banner view become visible."

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0}, Lcom/vungle/ads/BannerView;->access$setOnImpressionCalled$p(Lcom/vungle/ads/BannerView;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$logViewVisibleOnPlay(Lcom/vungle/ads/BannerView;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$checkHardwareAcceleration(Lcom/vungle/ads/BannerView;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$getPresenter$p(Lcom/vungle/ads/BannerView;)Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->start()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onViewInvisible(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$isInvisibleLogged$p(Lcom/vungle/ads/BannerView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 15
    .line 16
    const-string v0, "BannerView"

    .line 17
    .line 18
    const-string v1, "ImpressionTracker checked the banner view invisible on play."

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 24
    .line 25
    new-instance v0, Lcom/vungle/ads/w;

    .line 26
    .line 27
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/vungle/ads/BannerView$e;->this$0:Lcom/vungle/ads/BannerView;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/vungle/ads/BannerView;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "1"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
