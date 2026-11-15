.class public Lcom/bytedance/sdk/openadsdk/dNu/TKC;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile EjP:Landroid/os/Handler;

.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

.field private static volatile TKC:Landroid/os/HandlerThread;

.field private static sP:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "pag__bus_monitor"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 9
    .line 10
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

.method static synthetic EjP()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static HiB()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/sef;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    sget-object v2, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_4

    .line 43
    :goto_1
    monitor-exit v0

    .line 44
    throw v1

    .line 45
    :cond_2
    :goto_2
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/sef;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catchall_1
    move-exception v1

    .line 62
    goto :goto_5

    .line 63
    :cond_3
    :goto_3
    const-string v1, "csj_init_handle"

    .line 64
    .line 65
    const/4 v2, -0x1

    .line 66
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 71
    .line 72
    new-instance v1, Landroid/os/Handler;

    .line 73
    .line 74
    sget-object v2, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC:Landroid/os/HandlerThread;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    .line 82
    .line 83
    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    .line 84
    .line 85
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_5
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP:Landroid/os/Handler;

    .line 87
    .line 88
    return-object v0

    .line 89
    :goto_5
    monitor-exit v0

    .line 90
    throw v1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;-><init>()V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/sP;)Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    return-object v0
.end method

.method static synthetic Sj(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method static synthetic TKC()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->HiB()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method public static sP()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Z)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/HiB;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/bytedance/sdk/openadsdk/dNu/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method
