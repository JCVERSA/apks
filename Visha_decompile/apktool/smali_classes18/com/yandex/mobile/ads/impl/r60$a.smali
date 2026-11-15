.class final Lcom/yandex/mobile/ads/impl/r60$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/r60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r60;Z)Lcom/yandex/mobile/ads/impl/mi1;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nw0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/nw0;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/mi1;

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/mi1;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/r60;->K(Lcom/yandex/mobile/ads/impl/r60;)Lcom/yandex/mobile/ads/impl/ed;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/ed;->a(Lcom/yandex/mobile/ads/impl/nw0;)V

    :cond_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/mi1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/nw0;->b()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/mi1;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
