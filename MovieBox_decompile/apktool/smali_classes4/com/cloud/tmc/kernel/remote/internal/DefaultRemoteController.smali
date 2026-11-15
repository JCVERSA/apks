.class public Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/remote/RemoteController;


# instance fields
.field private mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;


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
.method public bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected createRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public declared-synchronized getRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->createRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public isRemoteCallExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->getRemoteControlManagement()Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;->isRemoteExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public remoteCall(Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;)Lcom/cloud/tmc/kernel/remote/RemoteCallResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public declared-synchronized setRemoteControlManagement(Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteController;->mRemoteControlManagement:Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
