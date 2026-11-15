.class public final Lcom/yandex/mobile/ads/impl/rk0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/qk0$a;Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/pk0;)Lcom/yandex/mobile/ads/impl/qk0;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adIdStorageManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsObservable"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/qk0;

    new-instance v6, Lcom/yandex/mobile/ads/impl/sk0;

    invoke-direct {v6, p2}, Lcom/yandex/mobile/ads/impl/sk0;-><init>(Lcom/yandex/mobile/ads/impl/tk0;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/qk0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/qk0$a;Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/sk0;)V

    invoke-virtual {p4, v0}, Lcom/yandex/mobile/ads/impl/pk0;->b(Lcom/yandex/mobile/ads/impl/qk0;)V

    invoke-virtual {p4, v0}, Lcom/yandex/mobile/ads/impl/pk0;->a(Lcom/yandex/mobile/ads/impl/qk0;)V

    invoke-virtual {p4, v0}, Lcom/yandex/mobile/ads/impl/pk0;->c(Lcom/yandex/mobile/ads/impl/qk0;)V

    invoke-virtual {p4, v0}, Lcom/yandex/mobile/ads/impl/pk0;->a(Lcom/yandex/mobile/ads/impl/r11;)V

    return-object v0
.end method
