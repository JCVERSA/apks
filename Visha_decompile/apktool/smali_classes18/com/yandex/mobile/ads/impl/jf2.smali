.class public final Lcom/yandex/mobile/ads/impl/jf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nu;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/nu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    return-void
.end method

.method public final onVideoCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoError()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoError()V

    :cond_0
    return-void
.end method

.method public final onVideoPaused()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPaused()V

    :cond_0
    return-void
.end method

.method public final onVideoPrepared()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPrepared()V

    :cond_0
    return-void
.end method

.method public final onVideoResumed()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf2;->a:Lcom/yandex/mobile/ads/impl/nu;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoResumed()V

    :cond_0
    return-void
.end method
