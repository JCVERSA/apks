.class public final Lcom/yandex/mobile/ads/impl/wn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/instream/inroll/Inroll;
.implements Lcom/yandex/mobile/ads/instream/pauseroll/Pauseroll;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qt0;

.field private final b:Lcom/yandex/mobile/ads/impl/lm2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/qt0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/lm2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lm2;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/wn0;-><init>(Lcom/yandex/mobile/ads/impl/qt0;Lcom/yandex/mobile/ads/impl/lm2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qt0;Lcom/yandex/mobile/ads/impl/lm2;)V
    .locals 1

    .line 3
    const-string v0, "manualAdBreakPlaybackController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdAdapterCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wn0;->b:Lcom/yandex/mobile/ads/impl/lm2;

    return-void
.end method


# virtual methods
.method public final getInstreamAdBreak()Lcom/yandex/mobile/ads/instream/InstreamAdBreak;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qt0;->a()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/bm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/bm2;-><init>(Lcom/yandex/mobile/ads/impl/gt;)V

    return-object v0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qt0;->b()V

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qt0;->c()V

    return-void
.end method

.method public final play(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;)V
    .locals 1

    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/qt0;->a(Lcom/yandex/mobile/ads/impl/t70;)V

    return-void
.end method

.method public final prepare(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;)V
    .locals 2

    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hm2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wn0;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/hm2;-><init>(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/impl/lm2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qt0;->a(Lcom/yandex/mobile/ads/impl/hm2;)V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qt0;->d()V

    return-void
.end method

.method public final setListener(Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/cm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/cm2;-><init>(Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qt0;->a(Lcom/yandex/mobile/ads/impl/cm2;)V

    return-void
.end method

.method public final setVideoAdPlaybackListener(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/rn2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wn0;->b:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/rn2;-><init>(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;Lcom/yandex/mobile/ads/impl/lm2;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wn0;->a:Lcom/yandex/mobile/ads/impl/qt0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qt0;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method
