.class public Lcom/transsion/apiinvoke/ipc/APISubscribeCenter$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public countSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSafePublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUnSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
