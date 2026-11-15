.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TaskQueueProxyImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;


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

.method public static final OooO00o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public addAppTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "uniqueId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 9
    .line 10
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/l;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/l;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1, v2}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "task"

    .line 19
    .line 20
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    const-string p2, "NormalTaskQueueUtils"

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
