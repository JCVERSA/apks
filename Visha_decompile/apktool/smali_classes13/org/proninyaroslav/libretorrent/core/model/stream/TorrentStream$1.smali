.class Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;",
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
.method public a(Landroid/os/Parcel;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
    .locals 0

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
    .locals 0

    new-array p0, p1, [Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream$1;->a(Landroid/os/Parcel;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream$1;->b(I)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object p0

    return-object p0
.end method
