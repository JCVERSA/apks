.class public Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fileOffset:J

.field public fileSize:J

.field public firstFilePiece:I

.field public id:Ljava/lang/String;

.field public lastFilePiece:I

.field public lastFilePieceSize:I

.field public pieceLength:I

.field public selectedFileIndex:I

.field public torrentId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->selectedFileIndex:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileOffset:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIJJI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    .line 4
    iput p4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    .line 5
    iput p3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    .line 6
    iput p5, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    .line 7
    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->selectedFileIndex:I

    .line 8
    iput-wide p6, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileOffset:J

    .line 9
    iput-wide p8, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    .line 10
    iput p10, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    return-void
.end method


# virtual methods
.method public bytesToPieceIndex(J)I
    .locals 3

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    int-to-long v1, p0

    div-long/2addr p1, v1

    long-to-int p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorrentStream{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", torrentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", selectedFileIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->selectedFileIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstFilePiece="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastFilePiece="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastFilePieceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pieceLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->selectedFileIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->firstFilePiece:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePieceSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->pieceLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
