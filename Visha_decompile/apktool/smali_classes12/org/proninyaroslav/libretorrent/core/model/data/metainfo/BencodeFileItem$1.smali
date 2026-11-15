.class Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;",
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
.method public a(Landroid/os/Parcel;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;
    .locals 0

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;
    .locals 0

    new-array p0, p1, [Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem$1;->a(Landroid/os/Parcel;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem$1;->b(I)[Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    move-result-object p0

    return-object p0
.end method
