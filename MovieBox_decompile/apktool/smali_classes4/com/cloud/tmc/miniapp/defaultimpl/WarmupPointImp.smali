.class public final Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/point/WarmupPoint;


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


# virtual methods
.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public start(Landroid/content/Context;I)V
    .locals 12

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    const-string v3, "100000"

    .line 8
    .line 9
    new-instance v4, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "warmupType"

    .line 15
    .line 16
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    new-instance v5, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const/16 v10, 0xf0

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    move-object v1, p2

    .line 36
    move-object v2, p1

    .line 37
    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    const-class v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 47
    .line 48
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    .line 49
    .line 50
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp$OooO00o;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp$OooO00o;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p2, v1}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createWarmupController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p2

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit p1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit p1

    .line 73
    throw p2
.end method
