.class public Lcom/mgtv/thirdsdk/config/CDNModuleConfig;
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
            "Lcom/mgtv/thirdsdk/config/CDNModuleConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hlsconfig:I

.field public useMGHttpDns:I

.field public videoDownloadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig$1;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/config/CDNModuleConfig$1;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->hlsconfig:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->videoDownloadType:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->useMGHttpDns:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->hlsconfig:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->videoDownloadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/mgtv/thirdsdk/config/CDNModuleConfig;->useMGHttpDns:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
