.class public final Lcom/yandex/mobile/ads/impl/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/o2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/o2;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/j2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o2;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerStatusValidityDurationProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j2;->a:Lcom/yandex/mobile/ads/impl/o2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/i2;)Z
    .locals 4

    const-string v0, "adBlockerState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j2;->a:Lcom/yandex/mobile/ads/impl/o2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o2;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->b()J

    move-result-wide p0

    add-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
