.class public Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Landroid/os/Handler;

.field private static sP:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj()Landroid/os/Handler;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->sP:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v0, :cond_5

    .line 15
    .line 16
    const-class v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;

    .line 17
    .line 18
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Landroid/os/Handler;

    .line 24
    .line 25
    sget-object v2, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->sP:Landroid/os/HandlerThread;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj:Landroid/os/Handler;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_5

    .line 41
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 42
    throw v1

    .line 43
    :cond_2
    :goto_2
    const-class v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;

    .line 44
    .line 45
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->sP:Landroid/os/HandlerThread;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    :goto_3
    const-string v1, "csj_ev"

    .line 60
    .line 61
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->sP:Landroid/os/HandlerThread;

    .line 66
    .line 67
    new-instance v1, Landroid/os/Handler;

    .line 68
    .line 69
    sget-object v2, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->sP:Landroid/os/HandlerThread;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    sput-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj:Landroid/os/Handler;

    .line 79
    .line 80
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    goto :goto_5

    .line 82
    :goto_4
    :try_start_4
    monitor-exit v0

    .line 83
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    :catchall_2
    :cond_5
    :goto_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj:Landroid/os/Handler;

    .line 85
    .line 86
    return-object v0
.end method
