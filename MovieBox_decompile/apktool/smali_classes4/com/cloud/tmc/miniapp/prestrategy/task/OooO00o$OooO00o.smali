.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/cloud/tmc/integration/net/BaseResponse<",
        "+",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic OooO0O0:Landroid/app/Application;

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO00o:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0O0:Landroid/app/Application;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Prefetch:AppInfoTask"

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO00o:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->generateAppModel(Lcom/cloud/tmc/integration/model/AppInfoModel;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0O0:Landroid/app/Application;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, "_pre"

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v2, v3, p1, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0O0:Landroid/app/Application;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->refreshUpdateTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    const-string p1, "request success."

    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o$OooO00o;->OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
