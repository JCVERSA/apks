.class public Lcom/bytedance/sdk/openadsdk/EjP/aa;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;,
        Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;
    }
.end annotation


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;


# instance fields
.field private final EjP:Ljava/util/concurrent/Executor;

.field private HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

.field private final TKC:Landroid/os/Handler;

.field private sP:Landroid/os/HandlerThread;

.field private vS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->EjP:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "OpenAppSuccEvent_HandlerThread"

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    .line 29
    .line 30
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP:Landroid/os/HandlerThread;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/aa$1;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/aa;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    .line 47
    .line 48
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/aa;

    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->sP()V

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj:I

    mul-int/2addr v0, v2

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->sP:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 18
    iput v1, v0, Landroid/os/Message;->what:I

    .line 19
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/EjP/aa$sP;->Sj:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa;Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->sP(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->EjP:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Zq;->EjP()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/core/Zq;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Zq;->Sj(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    :goto_0
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    .line 40
    .line 41
    :cond_3
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v4, "is_background"

    .line 48
    .line 49
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->HiB:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v3, "has_focus"

    .line 59
    .line 60
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/EjP/aa;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->vS:Ljava/util/Map;

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->TKC:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/aa;->vS:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa$Sj;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
