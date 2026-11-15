.class public final Lcom/yandex/mobile/ads/impl/uo1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/va;Lcom/yandex/mobile/ads/impl/cp1;)Lcom/yandex/mobile/ads/impl/to1;
    .locals 10

    sget-object v5, Lcom/yandex/mobile/ads/impl/s9;->b:Lcom/yandex/mobile/ads/impl/s9;

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adIdStorageManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adVisibilityValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderingImpressionTrackingListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adStructureType"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/rg0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rg0;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/u7;

    invoke-direct {v2, p4, v0}, Lcom/yandex/mobile/ads/impl/u7;-><init>(Lcom/yandex/mobile/ads/impl/va;Lcom/yandex/mobile/ads/impl/sa;)V

    new-instance p4, Lcom/yandex/mobile/ads/impl/to1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->j()Ljava/util/List;

    move-result-object v9

    const/4 v8, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/to1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u7;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/cp1;Lcom/yandex/mobile/ads/impl/wo1;Ljava/util/List;)V

    return-object p4
.end method
