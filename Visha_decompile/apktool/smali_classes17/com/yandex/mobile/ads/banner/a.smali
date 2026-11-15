.class public final Lcom/yandex/mobile/ads/banner/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/mobile/ads/banner/BannerAdSize;)Lcom/yandex/mobile/ads/impl/zs;
    .locals 2

    const-string v0, "adSize"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zs;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/banner/BannerAdSize;->a()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    const-string v1, "getSizeInfo(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/zs;-><init>(Lcom/yandex/mobile/ads/impl/gz1;)V

    return-object v0
.end method
