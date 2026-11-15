.class public final Lcom/yandex/mobile/ads/impl/c2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/c2;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/c2;->a()Lcom/yandex/mobile/ads/impl/c2;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/c2;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/c2;->a()Lcom/yandex/mobile/ads/impl/c2;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/c2;

    new-instance v2, Lcom/yandex/mobile/ads/impl/zf0;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/zf0;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/h2;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/h2;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/f2;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/f2;-><init>()V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/c2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/h2;Lcom/yandex/mobile/ads/impl/f2;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/c2;->a(Lcom/yandex/mobile/ads/impl/c2;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/c2;->a()Lcom/yandex/mobile/ads/impl/c2;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
