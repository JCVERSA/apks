.class public abstract Ls3d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = false

.field public static c:J

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(J)J
    .locals 0

    sput-wide p0, Ls3d;->c:J

    return-wide p0
.end method

.method public static declared-synchronized b()V
    .locals 6

    const-class v0, Ls3d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmgtv/qt/c;->k:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Ls3d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ls3d;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Ls3d;->b:Z

    new-instance v1, Ls4d;

    sget-wide v2, Ls3d;->d:J

    const-string v4, "init"

    const-string v5, "-1"

    invoke-direct {v1, v2, v3, v4, v5}, Ls4d;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lmgtv/qt/c;->k:Landroid/app/Application;

    invoke-static {v2, v1}, Lmgtv/qt/c;->i(Landroid/app/Application;Ls4d;)V

    const-wide/16 v1, 0x0

    sput-wide v1, Ls3d;->c:J

    sget-object v1, Lmgtv/qt/c;->k:Landroid/app/Application;

    new-instance v2, Lmgtv/qt/b;

    invoke-direct {v2}, Lmgtv/qt/b;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public static synthetic c()J
    .locals 2

    sget-wide v0, Ls3d;->c:J

    return-wide v0
.end method

.method public static synthetic d()J
    .locals 2

    sget-wide v0, Ls3d;->d:J

    return-wide v0
.end method
