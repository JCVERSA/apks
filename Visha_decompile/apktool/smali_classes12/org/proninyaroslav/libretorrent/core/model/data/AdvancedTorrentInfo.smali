.class public Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;
.super Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activeTime:J

.field public availability:D

.field public downloadedPieces:I

.field public filesAvailability:[D

.field public filesReceivedBytes:[J

.field public leechers:I

.field public seedingTime:J

.field public seeds:I

.field public shareRatio:D

.field public torrentId:Ljava/lang/String;

.field public totalLeechers:I

.field public totalSeeds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    .line 4
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    .line 5
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    .line 6
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    const-wide/16 v3, 0x0

    .line 8
    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    .line 9
    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    .line 10
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    .line 11
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 25
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Landroid/os/Parcel;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    .line 28
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    .line 29
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    .line 30
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    const-wide/16 v3, 0x0

    .line 32
    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    .line 33
    iput-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    .line 34
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    .line 35
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[JIIIDJJD[DII)V
    .locals 3

    move-object v0, p0

    .line 12
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    .line 13
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    move-object v1, p2

    .line 14
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    move v1, p3

    .line 15
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    move v1, p4

    .line 16
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    move v1, p5

    .line 17
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    move-wide v1, p6

    .line 18
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    move-wide v1, p8

    .line 19
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    move-wide v1, p10

    .line 20
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    move-wide v1, p12

    .line 21
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    move/from16 v1, p15

    .line 23
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    move/from16 v1, p16

    .line 24
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    if-ne p0, p1, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvancedTorrentInfo{torrentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", totalSeeds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seeds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadedPieces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filesReceivedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seedingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", filesAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leechers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalLeechers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesReceivedBytes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalSeeds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seeds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->downloadedPieces:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->shareRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->activeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->seedingTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->availability:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->filesAvailability:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->leechers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AdvancedTorrentInfo;->totalLeechers:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
