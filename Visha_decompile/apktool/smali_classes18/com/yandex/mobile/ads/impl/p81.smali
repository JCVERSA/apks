.class public final Lcom/yandex/mobile/ads/impl/p81;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/o8;)J
    .locals 2

    const-string v0, "adResponse"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->n()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->u()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/yandex/mobile/ads/impl/ts;->f:Lcom/yandex/mobile/ads/impl/ts;

    if-ne v0, p0, :cond_0

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
