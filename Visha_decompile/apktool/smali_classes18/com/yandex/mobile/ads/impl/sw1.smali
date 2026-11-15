.class public final Lcom/yandex/mobile/ads/impl/sw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/p62;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/e31;Lcom/yandex/mobile/ads/impl/to1;Lcom/yandex/mobile/ads/impl/bl0;Lcom/yandex/mobile/ads/impl/gh1;)Lcom/yandex/mobile/ads/impl/o62;
    .locals 0

    const-string p0, "noticeTrackingManager"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderTrackingManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "indicatorManager"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phoneStateTracker"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/rw1;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/rw1;-><init>(Lcom/yandex/mobile/ads/impl/e31;Lcom/yandex/mobile/ads/impl/to1;Lcom/yandex/mobile/ads/impl/bl0;Lcom/yandex/mobile/ads/impl/gh1;)V

    return-object p0
.end method
