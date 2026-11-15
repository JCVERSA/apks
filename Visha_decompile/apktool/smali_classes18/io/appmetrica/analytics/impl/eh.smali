.class public final Lio/appmetrica/analytics/impl/eh;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/if;

.field public final c:Lio/appmetrica/analytics/impl/Un;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 6
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->t()Lio/appmetrica/analytics/impl/Un;

    move-result-object v2

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->s()Lio/appmetrica/analytics/impl/if;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/eh;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/if;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;Lio/appmetrica/analytics/impl/if;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/eh;->c:Lio/appmetrica/analytics/impl/Un;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/eh;->b:Lio/appmetrica/analytics/impl/if;

    .line 7
    iput-object p4, p0, Lio/appmetrica/analytics/impl/eh;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 8
    iput-object p5, p0, Lio/appmetrica/analytics/impl/eh;->e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 6
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/eh;->c:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Un;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ch;

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/ch;->e:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->F:Lio/appmetrica/analytics/impl/hb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/hb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->d:Lio/appmetrica/analytics/impl/hb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/hb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/eh;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/f5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "appInstaller"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "preloadInfo"

    iget-object v3, p0, Lio/appmetrica/analytics/impl/eh;->b:Lio/appmetrica/analytics/impl/if;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/U7;->h:Lio/appmetrica/analytics/impl/G6;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/U7;->a:Landroid/content/Context;

    invoke-interface {v4, v5}, Lio/appmetrica/analytics/impl/G6;->a(Landroid/content/Context;)V

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/U7;->c()Lio/appmetrica/analytics/impl/Y7;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ff;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v1

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/eh;->c:Lio/appmetrica/analytics/impl/Un;

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "init_event_done"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Vn;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    iget-object p1, p0, Lio/appmetrica/analytics/impl/eh;->c:Lio/appmetrica/analytics/impl/Un;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/eh;->e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/appmetrica/analytics/impl/Un;->a(J)V

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
