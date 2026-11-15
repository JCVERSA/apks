.class public final Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o$OooO00o;
.super Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onCreate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onDestroy()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onPause()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onResume()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onStart()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getMiniAppLifecycleListener$com_cloud_tmc_miniapp_sdk()Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager$MiniAppLifecycleListener;->onStop()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
