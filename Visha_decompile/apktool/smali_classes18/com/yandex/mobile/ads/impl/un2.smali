.class public final Lcom/yandex/mobile/ads/impl/un2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/instream/player/content/VideoPlayerListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nu;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    const-string v0, "videoPlayerListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoCompleted()V

    return-void
.end method

.method public final onVideoError()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoError()V

    return-void
.end method

.method public final onVideoPaused()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPaused()V

    return-void
.end method

.method public final onVideoPrepared()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPrepared()V

    return-void
.end method

.method public final onVideoResumed()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un2;->a:Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoResumed()V

    return-void
.end method
