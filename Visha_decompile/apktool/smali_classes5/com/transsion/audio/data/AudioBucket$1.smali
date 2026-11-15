.class Lcom/transsion/audio/data/AudioBucket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/data/AudioBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/audio/data/AudioBucket;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/transsion/audio/data/AudioBucket;
    .locals 0

    .line 2
    new-instance p0, Lcom/transsion/audio/data/AudioBucket;

    invoke-direct {p0, p1}, Lcom/transsion/audio/data/AudioBucket;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audio/data/AudioBucket$1;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/audio/data/AudioBucket;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/transsion/audio/data/AudioBucket;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/transsion/audio/data/AudioBucket;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audio/data/AudioBucket$1;->newArray(I)[Lcom/transsion/audio/data/AudioBucket;

    move-result-object p0

    return-object p0
.end method
