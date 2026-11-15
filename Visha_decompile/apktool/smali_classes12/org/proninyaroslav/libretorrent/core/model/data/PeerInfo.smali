.class public Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;
.super Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo$ConnectionType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public client:Ljava/lang/String;

.field public connectionType:I

.field public downSpeed:I

.field public ip:Ljava/lang/String;

.field public port:I

.field public progress:I

.field public relevance:D

.field public totalDownload:J

.field public totalUpload:J

.field public upSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJDIIIII)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    .line 15
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    .line 16
    iput-wide p5, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    .line 17
    iput-wide p7, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    .line 18
    iput p9, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    .line 19
    iput p10, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    .line 20
    iput p11, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    .line 21
    iput p12, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    .line 22
    iput p13, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;Lorg/libtorrent4j/TorrentStatus;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->ip()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->ip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->client()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->totalDownload()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    .line 5
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->totalUpload()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->calcRelevance(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;Lorg/libtorrent4j/TorrentStatus;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    .line 7
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->getConnectionType(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;)I

    move-result p2

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    .line 8
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->port()I

    move-result p2

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    .line 9
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->progress()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    .line 10
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->downSpeed()I

    move-result p2

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    .line 11
    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->upSpeed()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    return-void
.end method

.method private calcRelevance(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;Lorg/libtorrent4j/TorrentStatus;)D
    .locals 3

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentStatus;->pieces()Lorg/libtorrent4j/PieceIndexBitfield;

    move-result-object p0

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->pieces()Lorg/libtorrent4j/PieceIndexBitfield;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    invoke-virtual {p0, p2}, Lorg/libtorrent4j/PieceIndexBitfield;->getBit(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p2}, Lorg/libtorrent4j/PieceIndexBitfield;->getBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    int-to-double p0, v1

    int-to-double v0, v0

    div-double/2addr p0, v0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x0

    :goto_1
    return-wide p0
.end method

.method private getConnectionType(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;)I
    .locals 1

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->isUtp()Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo$2;->a:[I

    invoke-virtual {p1}, Lorg/libtorrent4j/PeerInfo;->connectionType()Lorg/libtorrent4j/PeerInfo$ConnectionType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

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

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    if-ne v2, v3, :cond_4

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    if-ne p0, p1, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v2

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeerInfo{ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", client=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalUpload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", relevance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", connectionType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

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

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->client:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalDownload:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->totalUpload:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->relevance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->connectionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->downSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;->upSpeed:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
