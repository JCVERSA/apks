.class public final Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;
.super Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO0O0:Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o$OooO00o;

.field public static OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "IpcMiniLauncherChannelImpl"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public launchHostProcess()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/multiprogress/IpcMainProcessClientService;->OooO0O0:Lcom/cloud/tmc/miniapp/ipc/multiprogress/IpcMainProcessClientService$OooO00o;

    .line 2
    .line 3
    const-class v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v2, Lcom/cloud/tmc/miniapp/ipc/multiprogress/IpcMainProcessClientService;

    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 26
    .line 27
    invoke-virtual {v2, v1, v0}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_2
    const-string v1, "IpcMainProcessClientService"

    .line 36
    .line 37
    const-string v2, "Exception startService"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method public launcherMiniApp(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "IpcMiniLauncherChannelImpl"

    .line 19
    .line 20
    const-string p2, "Launcher Failed Application is null"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public preLauncherData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    const-string v0, "IpcMiniLauncherChannelImpl"

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "bundle"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "preLauncherData"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, "keyMiniAppSyncData"

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v1, p1, p2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public registerMiniAppLifecycleListener(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public syncLauncherLifecycletoMiniapp(II)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "syncLauncherLifecycletoMiniapp type="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " requestSize="

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string p2, "IpcMiniLauncherChannelImpl"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public syncLauncherNewsData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "syncLauncherNewsData"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public updateLauncherData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO00o:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "updateLauncherData key="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, " data="

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2, v1, p1, p2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    const-string p2, "IpcMiniLauncherChannelImpl"

    .line 67
    .line 68
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return v0
.end method

.method public warmupWebview(Z)Z
    .locals 3

    .line 1
    const-string v0, "warmupWebview"

    .line 2
    .line 3
    const-string v1, "IpcMiniLauncherChannelImpl"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 17
    .line 18
    invoke-virtual {v2, v0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupEntrance(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method
