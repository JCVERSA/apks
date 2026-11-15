.class public Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public comment:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public createdBy:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public creationDate:J

.field public fileCount:I

.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;",
            ">;"
        }
    .end annotation
.end field

.field public numPieces:I

.field public pieceLength:I

.field public sha1Hash:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public torrentName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public torrentSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 59
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 61
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 62
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    .line 72
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 46
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 48
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 49
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    .line 51
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->getMetaInfoFromBencode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;

    invoke-direct {p1, p0}, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 7
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 9
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 10
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/TorrentInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 33
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 35
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 36
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->getMetaInfo(Lorg/libtorrent4j/AddTorrentParams;Lorg/libtorrent4j/TorrentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;

    invoke-direct {p1, p0}, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    .line 20
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    .line 22
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    .line 23
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->getMetaInfoFromBencode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;

    invoke-direct {p1, p0}, Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private getMetaInfo(Lorg/libtorrent4j/AddTorrentParams;Lorg/libtorrent4j/TorrentInfo;)V
    .locals 4

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/libtorrent4j/AddTorrentParams;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/AddTorrentParams;->getCreatedBy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/AddTorrentParams;->getCreationDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    :goto_1
    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->totalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object p1

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->c(Lorg/libtorrent4j/FileStorage;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->pieceLength()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    invoke-virtual {p2}, Lorg/libtorrent4j/TorrentInfo;->numPieces()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    return-void
.end method

.method private getMetaInfoFromBencode([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    new-instance v1, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p1, v0, v1}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lorg/libtorrent4j/swig/libtorrent;->load_torrent_parsed(Lorg/libtorrent4j/swig/bdecode_node;)Lorg/libtorrent4j/swig/add_torrent_params;

    move-result-object p1

    new-instance v0, Lorg/libtorrent4j/AddTorrentParams;

    invoke-direct {v0, p1}, Lorg/libtorrent4j/AddTorrentParams;-><init>(Lorg/libtorrent4j/swig/add_torrent_params;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/AddTorrentParams;->getTorrentInfo()Lorg/libtorrent4j/TorrentInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->getMetaInfo(Lorg/libtorrent4j/AddTorrentParams;Lorg/libtorrent4j/TorrentInfo;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid torrent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    iget-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    iget-wide v4, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

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

    const-string v1, "TorrentMetaInfo{torrentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sha1Hash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comment=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdBy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", torrentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pieceLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numPieces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->createdBy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->creationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->pieceLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->numPieces:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
