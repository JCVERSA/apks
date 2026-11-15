.class public Lcom/hunantv/imgo/entity/BaseConfigData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mgtv/json/JsonInterface;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hunantv/imgo/entity/BaseConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adModule:Lcom/hunantv/imgo/entity/AdModule;

.field public n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

.field public netRetry:Lcom/mgtv/task/http/retry/RetryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/entity/BaseConfigData$1;

    invoke-direct {v0}, Lcom/hunantv/imgo/entity/BaseConfigData$1;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/entity/BaseConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/hunantv/imgo/entity/AdModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/entity/AdModule;

    iput-object v0, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->adModule:Lcom/hunantv/imgo/entity/AdModule;

    .line 4
    const-class v0, Lcom/mgtv/task/http/host/HostConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mgtv/task/http/host/HostConfig;

    iput-object v0, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

    .line 5
    const-class v0, Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mgtv/task/http/retry/RetryConfig;

    iput-object p1, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->netRetry:Lcom/mgtv/task/http/retry/RetryConfig;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->adModule:Lcom/hunantv/imgo/entity/AdModule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/hunantv/imgo/entity/BaseConfigData;->netRetry:Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
