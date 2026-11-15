.class public Lcom/hisavana/common/utils/AdmobInitUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile handlerThread:Landroid/os/HandlerThread; = null

.field private static volatile started:Z = false

.field private static threadName:Ljava/lang/String; = "admob init thread"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getHanderThread()Landroid/os/HandlerThread;
    .locals 4

    .line 1
    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-class v1, Lcom/hisavana/common/utils/AdmobInitUtil;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroid/os/HandlerThread;

    .line 16
    .line 17
    sget-object v3, Lcom/hisavana/common/utils/AdmobInitUtil;->threadName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    throw v2

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    :goto_2
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    throw v1
.end method

.method public static declared-synchronized quit()V
    .locals 2

    .line 1
    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v1
.end method

.method public static declared-synchronized start()V
    .locals 2

    .line 1
    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z

    .line 18
    .line 19
    xor-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    sput-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method
