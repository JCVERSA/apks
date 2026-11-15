.class public Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;,
        Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private hookInterFace:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mCallback:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->hookInterFace:Landroid/os/IInterface;

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4
    :try_start_0
    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$MyDeathRecipient;-><init>(Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$1;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/os/IInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;)V

    .line 6
    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->mCallback:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterface()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->hookInterFace:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->hookInterFace:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized remove()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->hookInterFace:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
