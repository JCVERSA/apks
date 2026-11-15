.class public final Lcom/yandex/mobile/ads/impl/g11$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/g11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/bv1;)Lcom/yandex/mobile/ads/impl/g11;
    .locals 5

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->a()Lcom/yandex/mobile/ads/impl/g11;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->a()Lcom/yandex/mobile/ads/impl/g11;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/g11;

    new-instance v2, Lcom/yandex/mobile/ads/impl/b11;

    new-instance v3, Lcom/yandex/mobile/ads/impl/c11;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/c11;-><init>()V

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/b11;-><init>(Lcom/yandex/mobile/ads/impl/c11;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/f11;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/f11;-><init>()V

    new-instance v4, Lcom/yandex/mobile/ads/impl/nv1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/nv1;-><init>()V

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/yandex/mobile/ads/impl/g11;-><init>(Lcom/yandex/mobile/ads/impl/b11;Lcom/yandex/mobile/ads/impl/f11;Lcom/yandex/mobile/ads/impl/nv1;Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/g11;->b(Lcom/yandex/mobile/ads/impl/g11;)V

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
    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->a()Lcom/yandex/mobile/ads/impl/g11;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
