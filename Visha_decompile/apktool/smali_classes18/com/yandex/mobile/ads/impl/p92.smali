.class public final Lcom/yandex/mobile/ads/impl/p92;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)Lcom/yandex/mobile/ads/impl/o92;
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/tj;

    new-instance v0, Lcom/yandex/mobile/ads/impl/sj;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sj;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/tj;-><init>(Lcom/yandex/mobile/ads/impl/sj;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/ph1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ph1;-><init>()V

    :goto_0
    return-object p0
.end method
