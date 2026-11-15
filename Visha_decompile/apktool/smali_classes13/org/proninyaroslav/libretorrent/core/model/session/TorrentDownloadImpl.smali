.class Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;,
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;
    }
.end annotation


# static fields
.field private static final CRITICAL_WORK_WAIT_TIMEOUT:J = 0x7530L

.field private static final DEFAULT_PIECE_DEADLINE:I = 0x3e8

.field private static final INNER_LISTENER_TYPES:[I

.field private static final MAX_RATIO:D = 9999.0

.field private static final PRELOAD_PIECES_COUNT:I = 0x5

.field private static final SAVE_RESUME_SYNC_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoManaged:Z

.field private criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

.field private fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

.field private hasFirstLastPiecePriority:Z

.field private hasMissingFiles:Z

.field private id:Ljava/lang/String;

.field private lastSaveResumeTime:J

.field private listener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

.field private listeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partsFile:Landroid/net/Uri;

.field private repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

.field private resumeDataRejected:Z

.field private sessionManager:Lorg/libtorrent4j/SessionManager;

.field private stopEvent:Lhb1;

.field private stopRequested:Z

.field private stopped:Z

.field private th:Lorg/libtorrent4j/TorrentHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->STATE_CHANGED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v1

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_FINISHED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v2

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_REMOVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v3

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_PAUSED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v4

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_RESUMED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v5

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v6

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->STORAGE_MOVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v7

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->STORAGE_MOVED_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v8

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->METADATA_RECEIVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v9

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->PIECE_FINISHED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v10

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->READ_PIECE:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v11

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_ERROR:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v12

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->METADATA_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v13

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->FILE_ERROR:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v14

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->FASTRESUME_REJECTED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v15

    sget-object v0, Lorg/libtorrent4j/alerts/AlertType;->TORRENT_CHECKED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AlertType;->swig()I

    move-result v16

    filled-new-array/range {v1 .. v16}, [I

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->INNER_LISTENER_TYPES:[I

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/SessionManager;Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;Ljava/util/Queue;Ljava/lang/String;Lorg/libtorrent4j/TorrentHandle;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/SessionManager;",
            "Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;",
            "Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;",
            "Ljava/util/Queue<",
            "Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/libtorrent4j/TorrentHandle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    iput-object p5, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    iput-boolean p7, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->autoManaged:Z

    iput-object p4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->listeners:Ljava/util/Queue;

    iput-object p6, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p6}, Lorg/libtorrent4j/TorrentHandle;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->name:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getPartsFile()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->partsFile:Landroid/net/Uri;

    new-instance p3, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lura;)V

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->listener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    invoke-virtual {p1, p3}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    invoke-interface {p2, p5}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->firstLastPiecePriority:Z

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->applyFirstLastPiecePriority(Z)V

    :cond_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->needSaveResumeData()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic A()[I
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->INNER_LISTENER_TYPES:[I

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Llb1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$requestStop$9(Llb1;)V

    return-void
.end method

.method private advancedPeerInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    new-instance v0, Lorg/libtorrent4j/swig/peer_info_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/peer_info_vector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_handle;->get_peer_info(Lorg/libtorrent4j/swig/peer_info_vector;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/peer_info_vector;->size()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/peer_info_vector;->get(I)Lorg/libtorrent4j/swig/peer_info;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;-><init>(Lorg/libtorrent4j/swig/peer_info;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private applyFirstLastPiecePriority(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-direct {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->applyFirstLastPiecePriority(Z[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    return-void
.end method

.method private applyFirstLastPiecePriority(Z[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 12

    .line 2
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download first and last piece first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v0, p2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p2

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->piecePriorities()[Lorg/libtorrent4j/Priority;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 9
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_6

    .line 10
    aget-object v5, p2, v4

    .line 11
    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 12
    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    .line 13
    :cond_3
    invoke-static {v5}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)Lorg/libtorrent4j/Priority;

    move-result-object v5

    .line 14
    invoke-direct {p0, v1, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getFilePieces(Lorg/libtorrent4j/TorrentInfo;I)Landroidx/core/util/Pair;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v2, v4}, Lorg/libtorrent4j/FileStorage;->fileSize(I)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentInfo;->pieceLength()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    move v9, v3

    :goto_2
    int-to-double v10, v9

    cmpg-double v10, v10, v7

    if-gez v10, :cond_5

    .line 16
    iget-object v10, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    aput-object v5, v0, v10

    .line 17
    iget-object v10, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v9

    aput-object v5, v0, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_6
    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/TorrentHandle;->prioritizePieces([Lorg/libtorrent4j/Priority;)V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/util/concurrent/atomic/AtomicLong;Llb1;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$requestStop$7(Ljava/util/concurrent/atomic/AtomicLong;Llb1;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;)V

    return-void
.end method

.method public static synthetic c(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$handleReadPiece$4(Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private checkError(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getErrorMsg(Lorg/libtorrent4j/alerts/Alert;)Landroidx/core/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v2

    sget-object v3, Lorg/libtorrent4j/alerts/AlertType;->FASTRESUME_REJECTED:Lorg/libtorrent4j/alerts/AlertType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->resumeDataRejected:Z

    check-cast p1, Lorg/libtorrent4j/alerts/FastresumeRejectedAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FastresumeRejectedAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/ErrorCode;->getValue()I

    move-result p1

    sget-object v3, Lorg/libtorrent4j/swig/libtorrent_errors;->mismatching_file_size:Lorg/libtorrent4j/swig/libtorrent_errors;

    invoke-virtual {v3}, Lorg/libtorrent4j/swig/libtorrent_errors;->swigValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    :cond_0
    if-eqz v1, :cond_3

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torrent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->resume()V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_2
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->pause()V

    :cond_3
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/session/d;

    invoke-direct {p1, p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/d;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    return-void
.end method

.method public static synthetic d(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$setDownloadPath$10(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private doPause()V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->unsetFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->pause()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method private doResume()V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->forceRecheck()V

    :cond_1
    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->autoManaged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->unsetFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    :goto_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->resume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method private doStop()V
    .locals 2

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->listener:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopEvent:Lhb1;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;ZLorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$onStorageMoved$0(ZLorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic f(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$handleMetadata$2(Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private forceStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doStop()V

    return-void
.end method

.method public static synthetic g(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$checkError$1(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private getErrorMsg(Lorg/libtorrent4j/alerts/Alert;)Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$2;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, "] "

    const-string v1, "["

    const-string v2, "/"

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p1, Lorg/libtorrent4j/alerts/FastresumeRejectedAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FastresumeRejectedAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->getValue()I

    move-result p1

    sget-object v0, Lorg/libtorrent4j/swig/libtorrent_errors;->mismatching_file_size:Lorg/libtorrent4j/swig/libtorrent_errors;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/libtorrent_errors;->swigValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p0, "file sizes mismatch"

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fast resume data was rejected, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Lorg/libtorrent4j/alerts/FileErrorAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FileErrorAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FileErrorAlert;->filename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FileErrorAlert;->filename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/FileErrorAlert;->operation()Lorg/libtorrent4j/Operation;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z

    move-result v3

    :goto_0
    move-object p0, p1

    goto :goto_2

    :pswitch_2
    check-cast p1, Lorg/libtorrent4j/alerts/MetadataFailedAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/MetadataFailedAlert;->getError()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    check-cast p1, Lorg/libtorrent4j/alerts/TorrentErrorAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentErrorAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentErrorAlert;->filename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentErrorAlert;->filename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentErrorAlert;->filename()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFileIndicesBep53([Lorg/libtorrent4j/Priority;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_3

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v5

    sget-object v6, Lorg/libtorrent4j/Priority;->IGNORE:Lorg/libtorrent4j/Priority;

    invoke-virtual {v6}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-static {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->indicesToStr(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    if-ne v3, v1, :cond_2

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->indicesToStr(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFilePieces(Lorg/libtorrent4j/TorrentInfo;I)Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/TorrentInfo;",
            "I)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result p0

    if-lt p2, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/libtorrent4j/FileStorage;->fileSize(I)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lorg/libtorrent4j/FileStorage;->fileOffset(I)J

    move-result-wide v2

    new-instance p0, Landroidx/core/util/Pair;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->pieceLength()I

    move-result p2

    int-to-long v4, p2

    div-long v4, v2, v4

    long-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentInfo;->pieceLength()I

    move-result p1

    int-to-long v0, p1

    div-long/2addr v2, v0

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic h(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Llb1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$requestStop$8(Llb1;Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleMetadata(Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Exception;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->setMagnetUri(Ljava/lang/String;)V

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v4, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {v4, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Lorg/libtorrent4j/TorrentInfo;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->name:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v5, v4, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v3, v2

    goto :goto_2

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->name:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, v4, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, v4, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v5, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v3, v3, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadPath:Landroid/net/Uri;

    invoke-interface {v5, v3}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->a(Landroid/net/Uri;)J

    move-result-wide v5

    iget-wide v3, v4, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->torrentSize:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v3, v5, v3

    if-ltz v3, :cond_7

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->setMagnetUri(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iput-object p1, v3, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    :cond_5
    aget-object p1, v0, v1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p1, v3}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    goto :goto_3

    :cond_7
    :try_start_3
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;

    const-string v4, "Not enough free space"

    invoke-direct {v3, v4}, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_2

    :cond_8
    :try_start_4
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    aput-object p1, v0, v1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->pause()V

    new-instance v4, Lorg/proninyaroslav/libretorrent/core/model/session/k;

    invoke-direct {v4, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/k;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/Exception;)V

    invoke-direct {p0, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->setMagnetUri(Ljava/lang/String;)V

    if-eqz v3, :cond_9

    iput-object v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    :cond_9
    aget-object v1, v0, v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :cond_a
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1, p1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_b
    :goto_3
    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/session/l;

    invoke-direct {p1, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/l;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;[Ljava/lang/Exception;)V

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_4
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v5, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->setMagnetUri(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    iput-object v3, v4, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    :cond_c
    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    :cond_d
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v4}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_e
    throw p1
.end method

.method private handleReadPiece(Lorg/libtorrent4j/alerts/ReadPieceAlert;)V
    .locals 7

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ReadPieceAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ReadPieceAlert;->error()Lorg/libtorrent4j/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ReadPieceAlert;->piece()I

    move-result v2

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ReadPieceAlert;->size()I

    move-result v3

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/ReadPieceAlert;->bufferPtr()J

    move-result-wide v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;-><init>(IIJLjava/lang/Exception;)V

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/model/session/j;

    invoke-direct {p1, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/j;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    return-void
.end method

.method private handleTorrentChecked()V
    .locals 1

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->resumeDataRejected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    :cond_0
    return-void
.end method

.method private handleTorrentFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/c;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/c;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method private hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic i(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;[Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$handleMetadata$3([Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private static indicesToStr(II)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d-%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isPaused(Lorg/libtorrent4j/TorrentStatus;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentStatus;->flags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    sget-object p1, Lorg/libtorrent4j/TorrentFlags;->PAUSED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_flags_t;->non_zero()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$torrentRemoved$5(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic k(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lambda$handleTorrentFinished$6(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static bridge synthetic l(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    return p0
.end method

.method private synthetic lambda$checkError$1(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$handleMetadata$2(Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$handleMetadata$3([Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentMetadataLoaded(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$handleReadPiece$4(Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onReadPiece(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/ReadPieceInfo;)V

    return-void
.end method

.method private synthetic lambda$handleTorrentFinished$6(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentFinished(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onStorageMoved$0(ZLorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentMoved(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$requestStop$7(Ljava/util/concurrent/atomic/AtomicLong;Llb1;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-wide v0, p3, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->changeTime:J

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p3, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->changeTime:J

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-interface {p2}, Llb1;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->isDuringChange()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doStop()V

    invoke-interface {p2}, Llb1;->onComplete()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$requestStop$8(Llb1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error waiting for critical work: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Llb1;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doStop()V

    invoke-interface {p1}, Llb1;->onComplete()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestStop$9(Llb1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Llb1;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->observeStateChanging()Lmc7;

    move-result-object v1

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lmc7;->g0(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v1

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/session/e;

    invoke-direct {v2, p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/e;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/util/concurrent/atomic/AtomicLong;Llb1;)V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/f;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/f;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Llb1;)V

    invoke-virtual {v1, v2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    invoke-interface {p1, p0}, Llb1;->setDisposable(Lrc2;)V

    return-void
.end method

.method private synthetic lambda$setDownloadPath$10(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentMoving(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$torrentRemoved$5(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic n(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Lorg/libtorrent4j/TorrentHandle;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    return-object p0
.end method

.method private notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->listeners:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;->apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->applyFirstLastPiecePriority(Z)V

    return-void
.end method

.method private onStorageMoved(Z)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setMoving(Z)V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/b;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/b;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method private operationNotAllowed()Z
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static bridge synthetic p(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/Alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->checkError(Lorg/libtorrent4j/alerts/Alert;)V

    return-void
.end method

.method public static bridge synthetic q(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->handleMetadata(Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V

    return-void
.end method

.method public static bridge synthetic r(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/ReadPieceAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->handleReadPiece(Lorg/libtorrent4j/alerts/ReadPieceAlert;)V

    return-void
.end method

.method private resetTorrentError()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->error:Ljava/lang/String;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public static bridge synthetic s(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->handleTorrentChecked()V

    return-void
.end method

.method private serializeResumeData(Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;->params()Lorg/libtorrent4j/AddTorrentParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent;->write_resume_data(Lorg/libtorrent4j/swig/add_torrent_params;)Lorg/libtorrent4j/swig/entry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/entry;->bencode()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->e(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setSaveResume(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setSaveResume(Z)V

    throw p1
.end method

.method private stateToStateCode(Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$2;->$SwitchMap$org$libtorrent4j$TorrentStatus$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic t(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->handleTorrentFinished()V

    return-void
.end method

.method private torrentRemoved()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/h;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/h;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->forceStop()V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->partsFile:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->d(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static bridge synthetic u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    return-void
.end method

.method public static bridge synthetic v(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->onStorageMoved(Z)V

    return-void
.end method

.method public static bridge synthetic w(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->resetTorrentError()V

    return-void
.end method

.method public static bridge synthetic x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->serializeResumeData(Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V

    return-void
.end method

.method public static bridge synthetic y(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stateToStateCode(Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->torrentRemoved()V

    return-void
.end method


# virtual methods
.method public addTrackers(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/libtorrent4j/swig/announce_entry;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/announce_entry;-><init>()V

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/announce_entry;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    new-instance v2, Lorg/libtorrent4j/AnnounceEntry;

    invoke-direct {v2, v1}, Lorg/libtorrent4j/AnnounceEntry;-><init>(Lorg/libtorrent4j/swig/announce_entry;)V

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/TorrentHandle;->addTracker(Lorg/libtorrent4j/AnnounceEntry;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method public forceRecheck()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->forceRecheck()V

    return-void
.end method

.method public getActiveTime()J
    .locals 4

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->activeDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getAvailability([I)D
    .locals 4

    if-eqz p1, :cond_5

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_2

    aget v3, p1, v2

    if-ge v3, v1, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p1

    move v2, v0

    :goto_1
    if-ge v0, p0, :cond_4

    aget v3, p1, v0

    if-lez v3, :cond_3

    if-le v3, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    int-to-double v2, v2

    array-length p0, p1

    int-to-double p0, p0

    div-double/2addr v2, p0

    int-to-double p0, v1

    add-double/2addr v2, p0

    return-wide v2

    :cond_5
    :goto_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getBencode()[B
    .locals 6

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$1;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {v3, v2}, Lorg/libtorrent4j/SessionManager;->addListener(Lorg/libtorrent4j/AlertListener;)V

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v3}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v4, Lorg/libtorrent4j/TorrentHandle;->SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {v3, v4}, Lorg/libtorrent4j/TorrentHandle;->saveResumeData(Lorg/libtorrent4j/swig/resume_data_flags_t;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    return-object v0

    :goto_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/SessionManager;->removeListener(Lorg/libtorrent4j/AlertListener;)V

    throw v0
.end method

.method public getConnectedLeechers()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numPeers()I

    move-result v0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numSeeds()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getConnectedPeers()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numPeers()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getConnectedSeeds()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numSeeds()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDownloadSpeed()J
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isSeeding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->downloadPayloadRate()I

    move-result p0

    int-to-long v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getDownloadSpeedLimit()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->getDownloadLimit()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getETA()J
    .locals 9

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const-wide/32 v1, 0x83d600

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getStateCode()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v0

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq v0, v3, :cond_1

    return-wide v1

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->totalWanted()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->totalWantedDone()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->downloadPayloadRate()I

    move-result p0

    int-to-long v5, p0

    const-wide/16 v7, 0x0

    cmp-long p0, v3, v7

    if-gtz p0, :cond_2

    return-wide v7

    :cond_2
    cmp-long p0, v5, v7

    if-gtz p0, :cond_3

    return-wide v1

    :cond_3
    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->filePriorities()[Lorg/libtorrent4j/Priority;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert([Lorg/libtorrent4j/Priority;)[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p0

    return-object p0
.end method

.method public getFileSizes()[J
    .locals 5

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/FileStorage;->numFiles()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/FileStorage;->fileSize(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFilesAvailability([I)[D
    .locals 12

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [D

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p0, v1, [D

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result v2

    if-gez v2, :cond_2

    new-array p0, v1, [D

    return-object p0

    :cond_2
    new-array v3, v2, [D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz p1, :cond_8

    array-length v6, p1

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    move v6, v1

    :goto_0
    if-ge v6, v2, :cond_7

    invoke-direct {p0, v0, v6}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getFilePieces(Lorg/libtorrent4j/TorrentInfo;I)Landroidx/core/util/Pair;

    move-result-object v7

    if-nez v7, :cond_4

    aput-wide v4, v3, v6

    goto :goto_3

    :cond_4
    iget-object v8, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v1

    :goto_1
    iget-object v10, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-gt v8, v10, :cond_6

    aget v10, p1, v8

    if-lez v10, :cond_5

    goto :goto_2

    :cond_5
    move v11, v1

    :goto_2
    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    int-to-double v8, v9

    iget-object v10, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v7, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v10, v7

    add-int/2addr v10, v11

    int-to-double v10, v10

    div-double/2addr v8, v10

    aput-wide v8, v3, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v3

    :cond_8
    :goto_4
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    return-object v3
.end method

.method public getFilesReceivedBytes()[J
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v0, Lorg/libtorrent4j/swig/torrent_handle;->piece_granularity:Lorg/libtorrent4j/swig/file_progress_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/TorrentHandle;->fileProgress(Lorg/libtorrent4j/swig/file_progress_flags_t;)[J

    move-result-object p0

    return-object p0
.end method

.method public getInfoHash()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/Sha1Hash;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMaxConnections()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->max_connections()I

    move-result p0

    return p0
.end method

.method public getMaxUploads()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_handle;->max_uploads()I

    move-result p0

    return p0
.end method

.method public getNumDownloadedPieces()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numPieces()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPartsFile()Landroid/net/Uri;
    .locals 5

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    iget-object v2, v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadPath:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentInfo;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".parts"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error changing save path: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getPeerInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->advancedPeerInfo()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;

    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;

    invoke-direct {v3, v2, p0}, Lorg/proninyaroslav/libretorrent/core/model/data/PeerInfo;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;Lorg/libtorrent4j/TorrentStatus;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPiecesAvailability()[I
    .locals 6

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v2, Lorg/libtorrent4j/TorrentHandle;->QUERY_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/TorrentHandle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/TorrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentStatus;->pieces()Lorg/libtorrent4j/PieceIndexBitfield;

    move-result-object v0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->advancedPeerInfo()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v2

    new-array v2, v2, [I

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/libtorrent4j/PieceIndexBitfield;->getBit(I)Z

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/session/AdvancedPeerInfo;->pieces()Lorg/libtorrent4j/PieceIndexBitfield;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-virtual {v0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Lorg/libtorrent4j/PieceIndexBitfield;->getBit(I)Z

    move-result v5

    if-eqz v5, :cond_3

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public getProgress()I
    .locals 3

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->progress()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/16 v2, 0x64

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-lez p0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public getReceivedBytes()J
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->totalDone()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSeedingTime()J
    .locals 4

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->seedingDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getShareRatio()D
    .locals 15

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->allTimeUpload()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->allTimeDownload()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->totalDone()J

    move-result-wide v7

    long-to-double v9, v5

    long-to-double v11, v7

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    cmpg-double p0, v9, v11

    if-gez p0, :cond_1

    move-wide v5, v7

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    const-wide v9, 0x40c3878000000000L    # 9999.0

    if-nez p0, :cond_3

    cmp-long p0, v3, v7

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v9

    :goto_0
    return-wide v1

    :cond_3
    long-to-double v0, v3

    long-to-double v2, v5

    div-double/2addr v0, v2

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 3

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentInfo;->totalSize()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public getStateCode()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {v0}, Lorg/libtorrent4j/SessionManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused(Lorg/libtorrent4j/TorrentStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentStatus;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentStatus;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentStatus;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0

    :cond_5
    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentStatus;->state()Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stateToStateCode(Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object p0

    return-object p0
.end method

.method public getStream(I)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
    .locals 15

    move-object v0, p0

    move/from16 v2, p1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object v3

    invoke-direct {p0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getFilePieces(Lorg/libtorrent4j/TorrentInfo;I)Landroidx/core/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v11, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    iget-object v5, v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    iget-object v0, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentInfo;->pieceLength()I

    move-result v8

    invoke-virtual {v3, v2}, Lorg/libtorrent4j/FileStorage;->fileOffset(I)J

    move-result-wide v9

    invoke-virtual {v3, v2}, Lorg/libtorrent4j/FileStorage;->fileSize(I)J

    move-result-wide v12

    iget-object v0, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/TorrentInfo;->pieceSize(I)I

    move-result v14

    move-object v0, v11

    move-object v1, v5

    move/from16 v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    move-wide v6, v9

    move-wide v8, v12

    move v10, v14

    invoke-direct/range {v0 .. v10}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;-><init>(Ljava/lang/String;IIIIJJI)V

    return-object v11

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect file index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTorrentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getTorrentMetaInfo()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/DecodeException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Lorg/libtorrent4j/TorrentInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getInfoHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getTorrentName()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    invoke-direct {v1, p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getTorrentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getTotalLeechers()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numIncomplete()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->listPeers()I

    move-result v0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->listSeeds()I

    move-result p0

    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public getTotalPeers()I
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numComplete()I

    move-result v0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numIncomplete()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->listPeers()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTotalSeeds()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->numComplete()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->listSeeds()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTotalSentBytes()J
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->allTimeUpload()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTotalWanted()J
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->totalWanted()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTrackerInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->trackers()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/AnnounceEntry;

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;

    invoke-direct {v2, v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TrackerInfo;-><init>(Lorg/libtorrent4j/AnnounceEntry;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTrackersUrl()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->trackers()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/AnnounceEntry;

    invoke-virtual {v1}, Lorg/libtorrent4j/AnnounceEntry;->url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUploadSpeed()J
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isSeeding()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->uploadPayloadRate()I

    move-result p0

    int-to-long v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getUploadSpeedLimit()I
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->getUploadLimit()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasMissingFiles()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMissingFiles:Z

    return p0
.end method

.method public havePiece(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/TorrentHandle;->havePiece(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoManaged()Z
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->flags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    sget-object v0, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_flags_t;->non_zero()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDownloading()Z
    .locals 4

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getDownloadSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFinished()Z
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstLastPiecePriority()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    return p0
.end method

.method public isPaused()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->status(Z)Lorg/libtorrent4j/TorrentStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused(Lorg/libtorrent4j/TorrentStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    .line 2
    invoke-virtual {v0}, Lorg/libtorrent4j/SessionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {p0}, Lorg/libtorrent4j/SessionManager;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSeeding()Z
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->isSeeding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSequentialDownload()Z
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->status()Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->flags()Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    sget-object v0, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/torrent_flags_t;->and_(Lorg/libtorrent4j/swig/torrent_flags_t;)Lorg/libtorrent4j/swig/torrent_flags_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_flags_t;->non_zero()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopped()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result p0

    return p0
.end method

.method public makeMagnet(Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->makeMagnetUri()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->filePriorities()[Lorg/libtorrent4j/Priority;

    move-result-object p0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->getFileIndicesBep53([Lorg/libtorrent4j/Priority;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&so="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doPause()V

    return-void
.end method

.method public pauseManually()V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->manuallyPaused:Z

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doPause()V

    return-void
.end method

.method public pieces()[Z
    .locals 3

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Z

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v0, Lorg/libtorrent4j/TorrentHandle;->QUERY_PIECES:Lorg/libtorrent4j/swig/status_flags_t;

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/TorrentHandle;->status(Lorg/libtorrent4j/swig/status_flags_t;)Lorg/libtorrent4j/TorrentStatus;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentStatus;->pieces()Lorg/libtorrent4j/PieceIndexBitfield;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v0

    new-array v0, v0, [Z

    :goto_0
    invoke-virtual {p0}, Lorg/libtorrent4j/PieceIndexBitfield;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/libtorrent4j/PieceIndexBitfield;->getBit(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public prioritizeFiles([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 3
    .param p1    # [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/PriorityConverter;->convert([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)[Lorg/libtorrent4j/Priority;

    move-result-object v1

    invoke-virtual {v0}, Lorg/libtorrent4j/TorrentInfo;->numFiles()I

    move-result v0

    array-length v2, v1

    if-eq v0, v2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->prioritizeFiles([Lorg/libtorrent4j/Priority;)V

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->applyFirstLastPiecePriority(Z[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    :cond_4
    return-void
.end method

.method public readPiece(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/TorrentHandle;->readPiece(I)V

    return-void
.end method

.method public remove(Z)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->g(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v0, Lorg/libtorrent4j/SessionHandle;->DELETE_FILES:Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-virtual {p1, p0, v0}, Lorg/libtorrent4j/SessionManager;->remove(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->sessionManager:Lorg/libtorrent4j/SessionManager;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v0, Lorg/libtorrent4j/SessionHandle;->DELETE_PARTFILE:Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-virtual {p1, p0, v0}, Lorg/libtorrent4j/SessionManager;->remove(Lorg/libtorrent4j/TorrentHandle;Lorg/libtorrent4j/swig/remove_flags_t;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public replaceTrackers(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/libtorrent4j/swig/announce_entry;

    invoke-direct {v2}, Lorg/libtorrent4j/swig/announce_entry;-><init>()V

    invoke-virtual {v2, v1}, Lorg/libtorrent4j/swig/announce_entry;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lorg/libtorrent4j/AnnounceEntry;

    invoke-direct {v1, v2}, Lorg/libtorrent4j/AnnounceEntry;-><init>(Lorg/libtorrent4j/swig/announce_entry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/TorrentHandle;->replaceTrackers(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method public requestStop()Lhb1;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopEvent:Lhb1;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopped:Z

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopRequested:Z

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/g;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/g;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    invoke-static {v0}, Lhb1;->b(Lrb1;)Lhb1;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->stopEvent:Lhb1;

    return-object v0
.end method

.method public requestTrackerAnnounce()V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->forceReannounce()V

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->manuallyPaused:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doResume()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resumeManually()V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->manuallyPaused:Z

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->doResume()V

    return-void
.end method

.method public saveResumeData(Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_1

    iget-wide v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lastSaveResumeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->lastSaveResumeTime:J

    :try_start_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setSaveResume(Z)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v0, Lorg/libtorrent4j/TorrentHandle;->SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {p1, v0}, Lorg/libtorrent4j/TorrentHandle;->saveResumeData(Lorg/libtorrent4j/swig/resume_data_flags_t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error triggering resume data of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setSaveResume(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAutoManaged(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->autoManaged:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object p1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/TorrentHandle;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object p1, Lorg/libtorrent4j/TorrentFlags;->AUTO_MANAGED:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/TorrentHandle;->unsetFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized setDownloadPath(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->criticalWork:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->setMoving(Z)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->downloadPath:Landroid/net/Uri;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {v1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/i;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/i;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->notifyListeners(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->fs:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->h(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/MoveFlags;->ALWAYS_REPLACE_FILES:Lorg/libtorrent4j/MoveFlags;

    invoke-virtual {v0, p1, v1}, Lorg/libtorrent4j/TorrentHandle;->moveStorage(Ljava/lang/String;Lorg/libtorrent4j/MoveFlags;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->TAG:Ljava/lang/String;

    const-string v1, "Error changing save path: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setDownloadSpeedLimit(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/TorrentHandle;->setDownloadLimit(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method

.method public setFirstLastPiecePriority(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasFirstLastPiecePriority:Z

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->hasMetadata()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->applyFirstLastPiecePriority(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean p1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->firstLastPiecePriority:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_2
    return-void
.end method

.method public setInterestedPieces(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;II)V
    .locals 6
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p2, :cond_5

    if-gez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_5

    add-int v1, p2, v0

    iget v2, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    if-le v1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x3e8

    if-ne v0, p3, :cond_4

    const/4 v3, 0x5

    :goto_1
    iget v4, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->lastFilePiece:I

    if-gt v1, v4, :cond_1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v4, v1}, Lorg/libtorrent4j/TorrentHandle;->havePiece(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v5, Lorg/libtorrent4j/Priority;->TOP_PRIORITY:Lorg/libtorrent4j/Priority;

    invoke-virtual {v4, v1, v5}, Lorg/libtorrent4j/TorrentHandle;->piecePriority(ILorg/libtorrent4j/Priority;)V

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v4, v1, v2}, Lorg/libtorrent4j/TorrentHandle;->setPieceDeadline(II)V

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v3, v1}, Lorg/libtorrent4j/TorrentHandle;->havePiece(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v4, Lorg/libtorrent4j/Priority;->TOP_PRIORITY:Lorg/libtorrent4j/Priority;

    invoke-virtual {v3, v1, v4}, Lorg/libtorrent4j/TorrentHandle;->piecePriority(ILorg/libtorrent4j/Priority;)V

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v3, v1, v2}, Lorg/libtorrent4j/TorrentHandle;->setPieceDeadline(II)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_max_connections(I)V

    return-void
.end method

.method public setMaxUploads(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {p0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_handle;->set_max_uploads(I)V

    return-void
.end method

.method public setSequentialDownload(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->setFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    sget-object v1, Lorg/libtorrent4j/TorrentFlags;->SEQUENTIAL_DOWNLOAD:Lorg/libtorrent4j/swig/torrent_flags_t;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/TorrentHandle;->unsetFlags(Lorg/libtorrent4j/swig/torrent_flags_t;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean p1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->sequentialDownload:Z

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    :cond_2
    return-void
.end method

.method public setTorrentName(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;->name:Ljava/lang/String;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->repo:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;->c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public setUploadSpeedLimit(I)V
    .locals 1

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->operationNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->th:Lorg/libtorrent4j/TorrentHandle;

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/TorrentHandle;->setUploadLimit(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    return-void
.end method
