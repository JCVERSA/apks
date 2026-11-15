.class public Lcom/mgtv/thirdsdk/config/ConfigData;
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
            "Lcom/mgtv/thirdsdk/config/ConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cdnModule:Lcom/mgtv/thirdsdk/config/CDNModuleConfig;

.field public n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

.field public netRetry:Lcom/mgtv/task/http/retry/RetryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/thirdsdk/config/ConfigData$1;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/config/ConfigData$1;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/config/ConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

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
    const-class v0, Lcom/mgtv/task/http/host/HostConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mgtv/task/http/host/HostConfig;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

    .line 4
    const-class v0, Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mgtv/task/http/retry/RetryConfig;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->netRetry:Lcom/mgtv/task/http/retry/RetryConfig;

    .line 5
    const-class v0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->cdnModule:Lcom/mgtv/thirdsdk/config/CDNModuleConfig;

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

    iget-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->netRetry:Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->cdnModule:Lcom/mgtv/thirdsdk/config/CDNModuleConfig;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
