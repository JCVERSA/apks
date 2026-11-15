.class public abstract Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/auth/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/auth/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o$OooO00o;
    }
.end annotation


# static fields
.field public static final synthetic OooO00o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.transsion.palmsdk.auth.IPalmAuthService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO00o(Landroid/os/IBinder;)Lcom/transsion/palmsdk/auth/OooO0O0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.transsion.palmsdk.auth.IPalmAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/palmsdk/auth/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/palmsdk/auth/OooO0O0;

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o$OooO00o;

    invoke-direct {v0, p0}, Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o$OooO00o;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const-string v1, "com.transsion.palmsdk.auth.IPalmAuthService"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;->OooO00o(Landroid/os/IBinder;)Lcom/transsion/palmsdk/auth/OooO00o;

    move-result-object p1

    check-cast p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;->OooO0O0(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;->OooO00o(Landroid/os/IBinder;)Lcom/transsion/palmsdk/auth/OooO00o;

    move-result-object p1

    check-cast p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;->OooO00o(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
