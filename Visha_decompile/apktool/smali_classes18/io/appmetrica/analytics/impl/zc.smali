.class public final Lio/appmetrica/analytics/impl/zc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/J8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Fg;

.field public final b:Lio/appmetrica/analytics/impl/Le;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zc;->a:Lio/appmetrica/analytics/impl/Fg;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/zc;->b:Lio/appmetrica/analytics/impl/Le;

    const-string p1, "activation_unlock_event_sending"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zc;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/impl/Le;->a(Z)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Lio/appmetrica/analytics/impl/zc;->a(Lio/appmetrica/analytics/impl/F4;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/F4;)Z
    .locals 1

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->b:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Le;->b(Z)V

    .line 25
    const-string v0, "timer"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/zc;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/zc;->c:Ljava/lang/String;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    const-string v1, "framework"

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->framework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    const-string v1, "appmetrica_plugin_id"

    .line 7
    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 8
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->h()Lio/appmetrica/analytics/impl/T9;

    move-result-object v2

    .line 9
    iget-object v3, v2, Lio/appmetrica/analytics/impl/T9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/T9;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "io.appmetrica.analytics.plugin_id"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    const-string v1, "activation_offset"

    .line 12
    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 13
    iget-object v2, v2, Lio/appmetrica/analytics/impl/ua;->D:Lio/appmetrica/analytics/impl/Wj;

    .line 14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    iget-object v4, v2, Lio/appmetrica/analytics/impl/Wj;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 16
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lio/appmetrica/analytics/impl/Wj;->b:J

    sub-long/2addr v4, v6

    .line 17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 19
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v1, Lio/appmetrica/analytics/impl/Dj;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Dj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->a:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/ch;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ch;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zc;->b:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Le;->b(Z)V

    const-string v0, "activation"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/zc;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/zc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
