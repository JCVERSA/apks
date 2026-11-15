.class public final Lcom/yandex/mobile/ads/impl/jd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/mobile/ads/impl/hd;


# direct methods
.method public static final a()Lcom/yandex/mobile/ads/impl/le;
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/jd;->a:Lcom/yandex/mobile/ads/impl/hd;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/hd;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/jd;->a:Lcom/yandex/mobile/ads/impl/hd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/hd;

    sget v2, Lcom/yandex/mobile/ads/impl/ms0;->f:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ms0$a;->a()Lcom/yandex/mobile/ads/impl/ms0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ms0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/hd;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/jd;->a:Lcom/yandex/mobile/ads/impl/hd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method
