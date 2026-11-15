.class public abstract Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.apiinvoke.ipc.ICommonServiceInterface"

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_getSession:I = 0x3

.field static final TRANSACTION_serviceCall:I = 0x1

.field static final TRANSACTION_serviceCallWithChain:I = 0x2

.field static final TRANSACTION_updateApiSwitchConfig:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.transsion.apiinvoke.ipc.ICommonServiceInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.transsion.apiinvoke.ipc.ICommonServiceInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)Z
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.transsion.apiinvoke.ipc.ICommonServiceInterface"

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->updateApiSwitchConfig(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getServiceVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    goto :goto_0

    :cond_6
    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCallWithChain(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCall(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
