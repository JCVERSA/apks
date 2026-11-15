.class public final Lcom/yandex/mobile/ads/impl/ax1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mu;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bm1;

.field private final b:Lcom/yandex/mobile/ads/impl/zi1;

.field private final c:Lcom/yandex/mobile/ads/impl/jf2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sl1;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/jf2;)V
    .locals 1

    const-string v0, "progressProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerVolumeController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ax1;->a:Lcom/yandex/mobile/ads/impl/bm1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ax1;->b:Lcom/yandex/mobile/ads/impl/zi1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ax1;->c:Lcom/yandex/mobile/ads/impl/jf2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->c:Lcom/yandex/mobile/ads/impl/jf2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jf2;->a(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public final getVideoDuration()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->a:Lcom/yandex/mobile/ads/impl/bm1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bm1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ci1;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoPosition()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->a:Lcom/yandex/mobile/ads/impl/bm1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bm1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ci1;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->b:Lcom/yandex/mobile/ads/impl/zi1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi1;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pauseVideo()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->c:Lcom/yandex/mobile/ads/impl/jf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jf2;->onVideoPaused()V

    return-void
.end method

.method public final prepareVideo()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->c:Lcom/yandex/mobile/ads/impl/jf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jf2;->onVideoPrepared()V

    return-void
.end method

.method public final resumeVideo()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax1;->c:Lcom/yandex/mobile/ads/impl/jf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jf2;->onVideoResumed()V

    return-void
.end method
