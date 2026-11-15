.class Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;
.super Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteCallbackWrapper"
.end annotation


# instance fields
.field mResult:Lcom/transsion/apiinvoke/ipc/ParcelResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;->mResult:Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    return-void
.end method
