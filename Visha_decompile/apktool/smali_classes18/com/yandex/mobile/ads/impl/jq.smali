.class public final Lcom/yandex/mobile/ads/impl/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kq;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lq;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lq;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/mq;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/mq;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object p0

    new-instance v2, Lcom/yandex/mobile/ads/impl/kq;

    invoke-direct {v2, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/kq;-><init>(Lcom/yandex/mobile/ads/impl/lq;Lcom/yandex/mobile/ads/impl/mq;Lcom/yandex/mobile/ads/impl/ps0;)V

    return-object v2
.end method
