.class public final Lcom/yandex/mobile/ads/impl/mt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/instream/InstreamAd;)Lcom/yandex/mobile/ads/impl/et;
    .locals 1

    const-string v0, "instreamAd"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/mobile/ads/impl/am2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/mobile/ads/impl/am2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/am2;->a()Lcom/yandex/mobile/ads/impl/et;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You should pass InstreamAd received from InstreamAdLoader"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
