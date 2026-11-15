.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupEntrance(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO00o:Z

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final OooO0O0(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "warmupWebView"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-class p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmUpWorker()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO00o:Z

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/g;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/g;-><init>(Z)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
