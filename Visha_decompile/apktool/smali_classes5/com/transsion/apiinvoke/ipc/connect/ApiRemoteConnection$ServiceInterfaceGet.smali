.class Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInterfaceGet"
.end annotation


# instance fields
.field private mServiceInterface:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;->updateServiceInterface(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V

    return-void
.end method


# virtual methods
.method public getInterface()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    return-object p0
.end method

.method public updateServiceInterface(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    return-void
.end method
