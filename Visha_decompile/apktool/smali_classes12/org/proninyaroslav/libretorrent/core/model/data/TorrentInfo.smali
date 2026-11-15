.class public Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;
.super Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ETA:J = 0x83d600L


# instance fields
.field public ETA:J

.field public dateAdded:J

.field public downloadSpeed:J

.field public error:Ljava/lang/String;

.field public filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public fileSizesBytes:[J

.field public filesReceivedBytes:[J

.field public finishFileCount:I

.field public firstLastPiecePriority:Z

.field public name:Ljava/lang/String;

.field public peers:I

.field public progress:I

.field public receivedBytes:J

.field public sequentialDownload:Z

.field public stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public torrentId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public totalBytes:J

.field public totalPeers:I

.field public uploadSpeed:J

.field public uploadedBytes:J

.field public wantFileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 59
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    .line 62
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    .line 63
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    .line 64
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    .line 65
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    const-wide/32 v1, 0x83d600

    .line 66
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    .line 67
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    .line 68
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    .line 69
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    .line 70
    new-array v1, v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    .line 71
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    .line 87
    const-class v1, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->tags:Ljava/util/List;

    .line 89
    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    .line 4
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    .line 5
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    .line 6
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    .line 7
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    const-wide/32 v1, 0x83d600

    .line 8
    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    .line 9
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    .line 10
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    .line 11
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    .line 12
    new-array v1, v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    .line 13
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    .line 14
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    .line 16
    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    .line 17
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    .line 18
    iput-object p5, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;IJJJJJJJIILjava/lang/String;Z[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;",
            "IJJJJJJJII",
            "Ljava/lang/String;",
            "Z[",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 20
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    .line 21
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    move-object v1, p2

    .line 22
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    move-object v1, p3

    .line 23
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move v1, p4

    .line 24
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    move-wide v1, p5

    .line 25
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    move-wide v1, p7

    .line 26
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    move-wide v1, p9

    .line 27
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    move-wide v1, p11

    .line 28
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    move-wide/from16 v1, p13

    .line 29
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    move-wide/from16 v1, p15

    .line 30
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    move-wide/from16 v1, p17

    .line 31
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    move/from16 v1, p19

    .line 32
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    move/from16 v1, p20

    .line 33
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    move-object/from16 v1, p21

    .line 34
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    move/from16 v1, p22

    .line 35
    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    move-object/from16 v1, p23

    .line 36
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-object/from16 v1, p24

    .line 37
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->tags:Ljava/util/List;

    move/from16 v1, p25

    .line 38
    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;IJJJJLjava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;[J[J)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 39
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    .line 41
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    const-wide/32 v1, 0x83d600

    .line 42
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    const/4 v1, 0x0

    .line 43
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    .line 44
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    .line 45
    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    .line 46
    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    move-object v1, p1

    .line 47
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    move-object v1, p2

    .line 48
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    move-object v1, p3

    .line 49
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move v1, p4

    .line 50
    iput v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    move-wide v1, p5

    .line 51
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    move-wide v1, p7

    .line 52
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    move-wide v1, p9

    .line 53
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    move-wide v1, p11

    .line 54
    iput-wide v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    move-object/from16 v1, p13

    .line 55
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 56
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-object/from16 v1, p15

    .line 57
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filesReceivedBytes:[J

    move-object/from16 v1, p16

    .line 58
    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->fileSizesBytes:[J

    return-void
.end method


# virtual methods
.method public calculateFileCount()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->fileSizesBytes:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filesReceivedBytes:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->wantFileCount:I

    iput v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->finishFileCount:I

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

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
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFinishFileCount()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->finishFileCount:I

    return p0
.end method

.method public getWantFileCount()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->wantFileCount:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setFinishFileCount(I)V
    .locals 0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->finishFileCount:I

    return-void
.end method

.method public setWantFileCount(I)V
    .locals 0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->wantFileCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorrentInfo{torrentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stateCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", receivedBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uploadedBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downloadSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uploadSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ETA="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dateAdded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalPeers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sequentialDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filePriorities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstLastPiecePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/data/AbstractInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->receivedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->uploadSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->ETA:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->dateAdded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalPeers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->peers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->error:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->sequentialDownload:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->firstLastPiecePriority:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
