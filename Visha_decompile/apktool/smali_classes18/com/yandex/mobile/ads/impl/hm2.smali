.class public final Lcom/yandex/mobile/ads/impl/hm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kt;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

.field private final b:Lcom/yandex/mobile/ads/impl/lm2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/impl/lm2;)V
    .locals 1

    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdAdapterCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/yandex/mobile/ads/video/playback/model/VideoAd;->getDuration()J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 1

    .line 8
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->setVolume(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/km0;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/jm2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    .line 5
    new-instance v2, Lcom/yandex/mobile/ads/impl/im2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/im2;-><init>()V

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/jm2;-><init>(Lcom/yandex/mobile/ads/impl/km0;Lcom/yandex/mobile/ads/impl/lm2;Lcom/yandex/mobile/ads/impl/im2;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->setInstreamAdPlayerListener(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayerListener;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->getAdPosition(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->playAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->prepareAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->releaseAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/hm2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/hm2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->pauseAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->resumeAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->skipAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->stopAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V

    return-void
.end method

.method public final j(Lcom/yandex/mobile/ads/impl/go0;)Z
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->isPlayingAd(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)Z

    move-result p0

    return p0
.end method

.method public final k(Lcom/yandex/mobile/ads/impl/go0;)F
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hm2;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm2;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/video/playback/model/VideoAd;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm2;->a:Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;->getVolume(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)F

    move-result p0

    return p0
.end method
