.class public final Lcom/yandex/mobile/ads/impl/gf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aj1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mu;

.field private final b:Lcom/yandex/mobile/ads/impl/gg2;

.field private final c:Lcom/yandex/mobile/ads/impl/lf2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/mu;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/gg2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gg2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/lf2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/lf2;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/gf2;-><init>(Lcom/yandex/mobile/ads/impl/mu;Lcom/yandex/mobile/ads/impl/gg2;Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mu;Lcom/yandex/mobile/ads/impl/gg2;Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    .line 4
    const-string v0, "videoPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayerEventsController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gf2;->b:Lcom/yandex/mobile/ads/impl/gg2;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gf2;->c:Lcom/yandex/mobile/ads/impl/lf2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gg2;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->b:Lcom/yandex/mobile/ads/impl/gg2;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cf2;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->c:Lcom/yandex/mobile/ads/impl/lf2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lf2;->a(Lcom/yandex/mobile/ads/impl/cf2;)V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->getVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->getVideoPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->pauseVideo()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->prepareVideo()V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->resumeVideo()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->c:Lcom/yandex/mobile/ads/impl/lf2;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/mu;->a(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public final getVolume()F
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mu;->getVolume()F

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gf2;->a:Lcom/yandex/mobile/ads/impl/mu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/mu;->a(Lcom/yandex/mobile/ads/impl/lf2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf2;->c:Lcom/yandex/mobile/ads/impl/lf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lf2;->b()V

    return-void
.end method
