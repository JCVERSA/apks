.class public final Lcom/yandex/mobile/ads/impl/hl2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/iq1;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/di0;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->a()Lcom/yandex/mobile/ads/impl/ft1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/di0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ft1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/di0;->a()Lcom/yandex/mobile/ads/impl/fi0;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xk;

    new-instance v1, Lcom/yandex/mobile/ads/impl/pm;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/pm;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/xk;-><init>(Lcom/yandex/mobile/ads/impl/fi0;Lcom/yandex/mobile/ads/impl/pm;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/md1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/md1;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/iq1;

    invoke-direct {v1, p0, v0, p1}, Lcom/yandex/mobile/ads/impl/iq1;-><init>(Lcom/yandex/mobile/ads/impl/tm;Lcom/yandex/mobile/ads/impl/xk;I)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/iq1;->a()V

    return-object v1
.end method
