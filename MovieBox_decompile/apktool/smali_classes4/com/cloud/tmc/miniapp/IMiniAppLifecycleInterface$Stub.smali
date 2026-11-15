.class public abstract Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub;
.super Landroid/os/Binder;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

.field public static final TRANSACTION_onCreate:I = 0x1

.field public static final TRANSACTION_onDestroy:I = 0x6

.field public static final TRANSACTION_onPause:I = 0x4

.field public static final TRANSACTION_onResume:I = 0x3

.field public static final TRANSACTION_onStart:I = 0x2

.field public static final TRANSACTION_onStop:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDefaultImpl(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface$Stub$Proxy;->sDefaultImpl:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "setDefaultImpl() called twice"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface"

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onDestroy()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStop()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onPause()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onResume()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStart()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onCreate()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
