.class public Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;
.super Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dhtNodes:J

.field public downloadSpeed:J

.field public listenPort:I

.field public totalDownload:J

.field public totalUpload:J

.field public uploadSpeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    .line 3
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    .line 4
    iput-wide p5, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    .line 5
    iput-wide p7, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    .line 6
    iput-wide p9, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    .line 7
    iput p11, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;->parcelId:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;->parcelId:Ljava/lang/String;

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

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionStats{dhtNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listenPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

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

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->dhtNodes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalDownload:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->totalUpload:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->downloadSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->uploadSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/SessionStats;->listenPort:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
