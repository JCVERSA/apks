.class public final Lcom/yandex/mobile/ads/impl/f02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e02;Lcom/yandex/mobile/ads/impl/v20;)Ljh2;
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divExtensionHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/j20;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/j20;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/z10;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/z10;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/d20;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/d20;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/c20;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/c20;-><init>()V

    new-instance v4, Lcom/yandex/mobile/ads/impl/y10;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/y10;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/a20;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/a20;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/e20;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/e20;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/x10;

    const/4 v8, 0x6

    new-array v8, v8, [Lcom/yandex/div/core/a;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v6, v8, v1

    const/4 v1, 0x5

    aput-object v5, v8, v1

    invoke-direct {v7, v8}, Lcom/yandex/mobile/ads/impl/x10;-><init>([Lcom/yandex/div/core/a;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/w20;

    invoke-direct {v1, p2}, Lcom/yandex/mobile/ads/impl/w20;-><init>(Lcom/yandex/mobile/ads/impl/v20;)V

    new-instance p2, Ljh2$b;

    invoke-direct {p2, v0}, Ljh2$b;-><init>(Lwk2;)V

    invoke-virtual {p2, v7}, Ljh2$b;->c(Lcom/yandex/div/core/a;)Ljh2$b;

    move-result-object p2

    new-instance v0, Lcom/yandex/mobile/ads/impl/m30;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/m30;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Ljh2$b;->e(Lbu2;)Ljh2$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljh2$b;->d(Lwi2;)Ljh2$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljh2$b;->d(Lwi2;)Ljh2$b;

    move-result-object p0

    invoke-virtual {p0}, Ljh2$b;->b()Ljh2;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
