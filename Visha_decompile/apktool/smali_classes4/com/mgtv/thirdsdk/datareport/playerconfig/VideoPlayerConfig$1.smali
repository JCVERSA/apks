.class final Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;
    .locals 0

    .line 1
    new-instance p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig$1;->a(Landroid/os/Parcel;)Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig$1;->a(I)[Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    move-result-object p0

    return-object p0
.end method
