.class public final Lcom/yandex/mobile/ads/instream/InstreamAdBinder;
.super Lcom/yandex/mobile/ads/impl/hl1;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/h82;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u0013J\r\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001a\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/instream/InstreamAdBinder;",
        "Lcom/yandex/mobile/ads/impl/hl1;",
        "Lcom/yandex/mobile/ads/impl/h82;",
        "Landroid/content/Context;",
        "context",
        "Lcom/yandex/mobile/ads/instream/InstreamAd;",
        "instreamAd",
        "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;",
        "instreamAdPlayer",
        "Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;",
        "videoPlayer",
        "<init>",
        "(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAd;Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;)V",
        "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;",
        "instreamAdView",
        "Lzfb;",
        "bind",
        "(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;)V",
        "invalidateVideoPlayer",
        "()V",
        "invalidateAdPlayer",
        "Lcom/yandex/mobile/ads/instream/InstreamAdListener;",
        "listener",
        "setInstreamAdListener",
        "(Lcom/yandex/mobile/ads/instream/InstreamAdListener;)V",
        "unbind",
        "prepareAd",
        "Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;",
        "setVideoAdPlaybackListener",
        "(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lm2;

.field private final b:Lcom/yandex/mobile/ads/impl/ft;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAd;Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdPlayer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/hl1;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v3, p1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lm2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lm2;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->a:Lcom/yandex/mobile/ads/impl/lm2;

    new-instance v5, Lcom/yandex/mobile/ads/impl/hm2;

    invoke-direct {v5, p3, v0}, Lcom/yandex/mobile/ads/impl/hm2;-><init>(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/impl/lm2;)V

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/mt;->a(Lcom/yandex/mobile/ads/instream/InstreamAd;)Lcom/yandex/mobile/ads/impl/et;

    move-result-object v4

    new-instance v6, Lcom/yandex/mobile/ads/impl/tn2;

    invoke-direct {v6, p4}, Lcom/yandex/mobile/ads/impl/tn2;-><init>(Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/ft;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ft;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/mu;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;)V
    .locals 1

    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    return-void
.end method

.method public invalidateAdPlayer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->invalidateAdPlayer()V

    return-void
.end method

.method public final invalidateVideoPlayer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->a()V

    return-void
.end method

.method public final prepareAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->b()V

    return-void
.end method

.method public final setInstreamAdListener(Lcom/yandex/mobile/ads/instream/InstreamAdListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/fm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/fm2;-><init>(Lcom/yandex/mobile/ads/instream/InstreamAdListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/fm2;)V

    return-void
.end method

.method public final setVideoAdPlaybackListener(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/rn2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->a:Lcom/yandex/mobile/ads/impl/lm2;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/rn2;-><init>(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;Lcom/yandex/mobile/ads/impl/lm2;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final unbind()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/instream/InstreamAdBinder;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->e()V

    return-void
.end method
