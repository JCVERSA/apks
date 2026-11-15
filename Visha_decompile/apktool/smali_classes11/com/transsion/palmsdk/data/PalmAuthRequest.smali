.class public Lcom/transsion/palmsdk/data/PalmAuthRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/palmsdk/data/PalmAuthRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authManager:Law7;

.field private final authRequestId:Ljava/lang/String;

.field private final isFullSDK:Z

.field private isHostMode:Z

.field private isSilentMode:Z

.field private final palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

.field private final response:Lcom/transsion/palmsdk/auth/OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/data/PalmAuthRequest$1;

    invoke-direct {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest$1;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authRequestId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isFullSDK:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    .line 14
    const-class v1, Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;->OooO00o(Landroid/os/IBinder;)Lcom/transsion/palmsdk/auth/OooO00o;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/palmsdk/PalmAuthParam;ZLcom/transsion/palmsdk/auth/OooO00o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    .line 4
    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

    .line 5
    iput-boolean p2, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isFullSDK:Z

    .line 6
    iput-object p3, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    const/16 p1, 0x8

    .line 7
    invoke-static {p1}, Lvj7;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authRequestId:Ljava/lang/String;

    return-void
.end method

.method private finishRequest()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authManager:Law7;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authRequestId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Law7;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

    return-object p0
.end method

.method public getAuthRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public isFullSDK()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isFullSDK:Z

    return p0
.end method

.method public isHostMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    return p0
.end method

.method public isSilentMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    return p0
.end method

.method public onCancel()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/palmsdk/auth/OooO00o;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->finishRequest()V

    return-void
.end method

.method public setAuthManager(Law7;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authManager:Law7;

    return-void
.end method

.method public setException(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    if-eqz v0, :cond_0

    const p1, 0xc34f

    :cond_0
    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_message"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    invoke-interface {p1, v0}, Lcom/transsion/palmsdk/auth/OooO00o;->OooO00o(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->finishRequest()V

    return-void
.end method

.method public setHostMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    return-void
.end method

.method public setResult(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/palmsdk/auth/OooO00o;->OooO00o(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->finishRequest()V

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    return-void
.end method

.method public showPrevLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->isShowPrevLogin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->authRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isFullSDK:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isSilentMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->palmAuthParam:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->response:Lcom/transsion/palmsdk/auth/OooO00o;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean p0, p0, Lcom/transsion/palmsdk/data/PalmAuthRequest;->isHostMode:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
