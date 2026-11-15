.class public final Lcom/yandex/mobile/ads/impl/gf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/mobile/ads/impl/aj0;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/aj0;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/gf;->a:Lcom/yandex/mobile/ads/impl/aj0;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/aj0;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/gf;->a:Lcom/yandex/mobile/ads/impl/aj0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/aj0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string p0, "getApplicationContext(...)"

    invoke-static {v3, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v4

    new-instance v5, Lcom/yandex/mobile/ads/impl/hf;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/hf;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ff;

    new-instance p0, Lcom/yandex/mobile/ads/impl/ef;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ef;-><init>()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v2

    invoke-direct {v6, p0, v2}, Lcom/yandex/mobile/ads/impl/ff;-><init>(Lcom/yandex/mobile/ads/impl/ef;Lcom/yandex/mobile/ads/impl/ue;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/nu0;

    sget p0, Lcom/yandex/mobile/ads/impl/rs0;->b:I

    const-string p0, "context"

    invoke-static {v3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "YadPreferenceFile"

    invoke-static {v3, p0}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/yandex/mobile/ads/impl/nu0;-><init>(Lcom/yandex/mobile/ads/impl/ps0;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/aj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ue;Lcom/yandex/mobile/ads/impl/hf;Lcom/yandex/mobile/ads/impl/ff;Lcom/yandex/mobile/ads/impl/nu0;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/gf;->a:Lcom/yandex/mobile/ads/impl/aj0;

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
    sget-object p0, Lcom/yandex/mobile/ads/impl/gf;->a:Lcom/yandex/mobile/ads/impl/aj0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method
