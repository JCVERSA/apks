.class public final Lio/appmetrica/analytics/impl/M1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ha;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ha;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ha;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/M1;-><init>(Lio/appmetrica/analytics/impl/ha;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ha;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/M1;->b:Z

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/M1;->a:Lio/appmetrica/analytics/impl/ha;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/M1;->a:Lio/appmetrica/analytics/impl/ha;

    const-string v1, "metrica_service_settings.dat"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromAppStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Qa;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "delay"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/M1;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/M1;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/M1;->b:Z

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
