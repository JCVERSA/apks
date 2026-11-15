.class public final Lcom/cloud/tmc/miniapp/ipc/helper/OooO;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO;

    .line 7
    .line 8
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

.method public static final OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p1, "MiniAppPerformanceHelper"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "miniappWarmup"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    if-eqz p0, :cond_3

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    :try_start_1
    const-string p0, "warmupType"

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    if-eq p0, p2, :cond_1

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_1
    :try_start_2
    const-class p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 36
    .line 37
    invoke-interface {p0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmUpWorker()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :goto_1
    :try_start_3
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_2
    :try_start_4
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    const-string p2, "protocolInvoke"

    .line 62
    .line 63
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/miniapp/ipc/helper/a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/helper/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string p2, "MiniAppPerformanceHelper"

    .line 14
    .line 15
    const-string p3, "protocolInvoke"

    .line 16
    .line 17
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
