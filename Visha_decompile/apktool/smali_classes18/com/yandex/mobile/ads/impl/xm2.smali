.class public final Lcom/yandex/mobile/ads/impl/xm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/video/b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yt;)V
    .locals 1

    const-string v0, "nativeAdVideoController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/xm2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/xm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final pauseAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yt;->a()V

    return-void
.end method

.method public final resumeAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yt;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xm2;->a:Lcom/yandex/mobile/ads/impl/yt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YandexNativeAdVideoControllerAdapter(nativeAdVideoController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
