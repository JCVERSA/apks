.class public Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I

.field private path:Ljava/lang/String;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    .line 4
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->compareTo(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;)I
    .locals 0
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    return-wide v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BencodeFileItem{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
