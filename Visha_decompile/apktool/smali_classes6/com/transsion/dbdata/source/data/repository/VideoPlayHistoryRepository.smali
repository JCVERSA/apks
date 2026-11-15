.class public final Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\r\u0010\u0003J>\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0014\u0008\u0004\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\n0\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00192\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001e\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\'\u0010#\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010\'\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008)\u0010*J+\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00192\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008/\u00100J\u001f\u0010\u000b\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008\u000b\u00102J\u001d\u00103\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u00085\u00106R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u00109\u001a\u0004\u0008?\u0010@R\u0014\u0010C\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR \u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000e0E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001b\u0010L\u001a\u00020H8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u00109\u001a\u0004\u0008J\u0010K\u00a8\u0006N"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "",
        "<init>",
        "()V",
        "",
        "isOnlineVideo",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "videoData",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItem",
        "Lzfb;",
        "deleteRecord",
        "(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)V",
        "updateCache",
        "Lcom/transsion/dbdata/database/VideoRecord;",
        "videoRecord",
        "",
        "data",
        "canDelete",
        "Lkotlin/Function1;",
        "predicate",
        "processYoutubeItem",
        "(Lcom/transsion/dbdata/database/VideoRecord;Ljava/lang/String;ZLe74;)V",
        "updateMediaItemWithRecordData",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V",
        "",
        "",
        "mediaIds",
        "queryBatchByIds",
        "(Ljava/util/List;)Ljava/util/List;",
        "mediaId",
        "query",
        "(I)Lcom/transsion/dbdata/database/VideoRecord;",
        "Lcom/transsion/dbdata/beans/PlayerStates;",
        "playStates",
        "insertOrUpdate",
        "(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z",
        "oldMediaItem",
        "newMediaItem",
        "updateByRename",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z",
        "delete",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)V",
        "count",
        "fromPlayer",
        "queryAll",
        "(IZZ)Ljava/util/List;",
        "queryOnline",
        "(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "filePath",
        "(ILjava/lang/String;)I",
        "deleteBatchRecords",
        "(Ljava/util/List;)I",
        "deleteAllRecords",
        "()I",
        "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository$delegate",
        "Lyi5;",
        "getMVideoQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository$delegate",
        "getMFileQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mVideoRecordCacheLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "mVideoRecordCache",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lg5c;",
        "mVideoRecordDao$delegate",
        "getMVideoRecordDao",
        "()Lg5c;",
        "mVideoRecordDao",
        "Companion",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$Companion;

.field private static final TAG:Ljava/lang/String; = "VideoRecordRepository"


# instance fields
.field private final mFileQueryRepository$delegate:Lyi5;

.field private final mVideoQueryRepository$delegate:Lyi5;

.field private final mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mVideoRecordDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lutb;

    invoke-direct {v0}, Lutb;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoQueryRepository$delegate:Lyi5;

    new-instance v0, Lvtb;

    invoke-direct {v0}, Lvtb;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mFileQueryRepository$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lwtb;

    invoke-direct {v0}, Lwtb;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordDao$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a()Lg5c;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordDao_delegate$lambda$2()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method private final deleteRecord(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p1

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lg5c;->deleteVideoRecordByData(Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_5

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p1

    iget-object p2, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p1, p2, v0}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 5
    :try_start_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_6

    :catchall_0
    move-exception p0

    :goto_4
    if-ge v1, v0, :cond_4

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    :goto_5
    const-string p1, "VideoRecordRepository"

    const-string p2, "deleteRecord error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method private final getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mFileQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-object p0
.end method

.method private final getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    return-object p0
.end method

.method private final getMVideoRecordDao()Lg5c;
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lg5c;

    return-object p0
.end method

.method private static final mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mVideoRecordDao_delegate$lambda$2()Lg5c;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method private final processYoutubeItem(Lcom/transsion/dbdata/database/VideoRecord;Ljava/lang/String;ZLe74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            "Ljava/lang/String;",
            "Z",
            "Le74;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->updateMediaItemWithRecordData(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p2, "data"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isFavorite(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-interface {p4, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_0
    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p3

    iget p4, p1, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-interface {p3, p2, p4}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    iget-object p2, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p3

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result p4

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    move v1, v0

    :goto_1
    if-ge v1, p4, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lj05;->b(I)V

    :goto_2
    if-ge v0, p4, :cond_3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {v1}, Lj05;->a(I)V

    goto :goto_4

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lj05;->b(I)V

    :goto_3
    if-ge v0, p4, :cond_4

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {v1}, Lj05;->a(I)V

    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method private final queryBatchByIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryWhatsAppMedias(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Li81;->F0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Li81;->F0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v0
.end method

.method private final updateCache()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v4

    invoke-interface {v4}, Lg5c;->getAllRecordOrderRecordDate()Ljava/util/List;

    move-result-object v4

    const-string v5, "getAllRecordOrderRecordDate(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    check-cast v4, Ljava/lang/Iterable;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lky5;->g(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lwn8;->d(II)I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/transsion/dbdata/database/VideoRecord;

    iget v7, v7, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-ge v3, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method private final updateMediaItemWithRecordData(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V
    .locals 4

    iget p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolder(Z)V

    iget-object p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setVirtualFolderMatchName(Ljava/lang/String;)V

    iget p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iget p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iget p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSubtitleIndex(I)V

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v0, p2, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    const/16 p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget p0, p2, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    int-to-long v0, p0

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    return-void
.end method


# virtual methods
.method public final delete(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const-string v1, "VideoRecordRepository"

    if-gtz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid media item id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v3, v3

    invoke-interface {v0, v2, v3}, Lg5c;->getVideoRecordByMediaIdAndBuickId(II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v2

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v2, v3, v4}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    move v4, v5

    :goto_0
    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-ge v5, v4, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_5
    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x0

    :try_start_4
    invoke-static {v0, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :goto_5
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-static {v0, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_6
    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :goto_7
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_8
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "deleteVideoRecord error"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public final deleteAllRecords()I
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    invoke-interface {v0}, Lg5c;->deleteAllVideoRecord()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception p0

    :goto_3
    if-ge v4, v3, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_4
    :goto_4
    return v0
.end method

.method public final deleteBatchRecords(Ljava/util/List;)I
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg5c;->deleteBatchVideoRecordsByMediaIds(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v1, v4, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_5

    :goto_4
    if-ge v1, v4, :cond_5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_6
    :goto_5
    return v0
.end method

.method public final deleteRecord(ILjava/lang/String;)I
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_4

    .line 8
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception p0

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_4
    :goto_4
    return p2
.end method

.method public final insertOrUpdate(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "videoData"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaItem"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playStates"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    const-string v2, "VideoRecordRepository"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v4, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v4}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "recordVideoStates not isLegalID"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v4

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v4

    iget v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v4, v5}, Lg5c;->getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    iget v6, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_3

    goto :goto_2

    :cond_3
    iget v8, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not recordVideoStates the video can\'t play\uff0cisExistRecord:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    invoke-direct {p0, v1, p1, p2}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->deleteRecord(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_4
    return v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    iget-wide v8, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    int-to-long v10, v7

    mul-long/2addr v8, v10

    goto :goto_3

    :cond_6
    iget-wide v8, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :goto_3
    iget v2, p3, Lcom/transsion/dbdata/beans/PlayerStates;->state:I

    const/4 v7, 0x6

    if-eq v2, v7, :cond_8

    int-to-long v6, v6

    cmp-long v2, v6, v8

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v0

    :goto_5
    if-nez v4, :cond_9

    new-instance v6, Lcom/transsion/dbdata/database/VideoRecord;

    invoke-direct {v6}, Lcom/transsion/dbdata/database/VideoRecord;-><init>()V

    goto :goto_6

    :cond_9
    move-object v6, v4

    :goto_6
    if-eqz v1, :cond_a

    iget-object v7, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    goto :goto_7

    :cond_a
    iget-object v7, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_7
    iput-object v7, v6, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    iget-wide v7, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    long-to-int v1, v7

    goto :goto_8

    :cond_b
    iget v1, p3, Lcom/transsion/dbdata/beans/PlayerStates;->currentPosition:I

    :goto_8
    iput v1, v6, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    iget-wide v7, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    long-to-int v1, v7

    iput v1, v6, Lcom/transsion/dbdata/database/VideoRecord;->duration:I

    iput v2, v6, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput v1, v6, Lcom/transsion/dbdata/database/VideoRecord;->isVirtualFolder:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    if-nez p1, :cond_c

    const-string p1, ""

    :cond_c
    iput-object p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->virtualFolder_matchName:Ljava/lang/String;

    iget-wide v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int p1, v1

    iput p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->bucket_id:I

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    iget p1, p3, Lcom/transsion/dbdata/beans/PlayerStates;->subtitleIndex:I

    iput p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->subtitle_index:I

    if-eqz v5, :cond_e

    if-eqz v4, :cond_d

    iget p1, v4, Lcom/transsion/dbdata/database/VideoRecord;->playCount:I

    goto :goto_9

    :cond_d
    move p1, v3

    :goto_9
    add-int/2addr p1, v0

    goto :goto_a

    :cond_e
    move p1, v0

    :goto_a
    iput p1, v6, Lcom/transsion/dbdata/database/VideoRecord;->playCount:I

    if-eqz v5, :cond_10

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p1

    invoke-interface {p1, v6}, Lg5c;->updateVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)I

    move-result p1

    if-lez p1, :cond_f

    :goto_b
    move p1, v0

    goto :goto_c

    :cond_f
    move p1, v3

    goto :goto_c

    :cond_10
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p1

    invoke-interface {p1, v6}, Lg5c;->insertVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_b

    :goto_c
    if-eqz p1, :cond_16

    iget-object p2, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p3

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_d

    :cond_11
    move v1, v3

    :goto_d
    move v2, v3

    :goto_e
    if-ge v2, v1, :cond_12

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/2addr v2, v0

    goto :goto_e

    :cond_12
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v6, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p0, v3

    :goto_f
    if-ge p0, v1, :cond_13

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr p0, v0

    goto :goto_f

    :cond_13
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object p0, v6, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_14

    goto :goto_11

    :cond_14
    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    iget-object p2, v6, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    const-string p3, "data"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, v6, Lcom/transsion/dbdata/database/VideoRecord;->playCount:I

    invoke-virtual {p0, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->syncPlayCount(Ljava/lang/String;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p2, 0x4a4

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_11

    :catchall_0
    move-exception p0

    :goto_10
    if-ge v3, v1, :cond_15

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v3, v0

    goto :goto_10

    :cond_15
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_16
    :goto_11
    return p1
.end method

.method public final query(I)Lcom/transsion/dbdata/database/VideoRecord;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg5c;->getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object v1, v0

    goto :goto_4

    :catchall_0
    move-exception p0

    :goto_3
    if-ge v4, v3, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_4
    const/4 p0, 0x0

    move-object v1, p0

    :cond_5
    :goto_4
    return-object v1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method

.method public final queryAll(IZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->updateCache()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$queryAll$lambda$17$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository$queryAll$lambda$17$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/VideoRecord;

    iget v4, v4, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->queryBatchByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lky5;->g(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lwn8;->d(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "next(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/transsion/dbdata/database/VideoRecord;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_d

    iget-object v5, v4, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryAllVideoStates have duplicate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoRecordRepository"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v6, :cond_7

    invoke-direct {p0, v6, v4}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->updateMediaItemWithRecordData(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-nez p3, :cond_4

    invoke-static {v5}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, v4}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->updateMediaItemWithRecordData(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V

    sget-object v4, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v4

    iget-object v5, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v7, "data"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isFavorite(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v6

    iget v7, v4, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-interface {v6, v5, v7}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_9

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v7

    goto :goto_3

    :cond_9
    move v7, v8

    :goto_3
    move v9, v8

    :goto_4
    if-ge v9, v7, :cond_a

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object v9, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v4, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/VideoRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-ge v8, v7, :cond_b

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    :goto_6
    if-ge v8, v7, :cond_c

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_d
    return-object v0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method

.method public final queryOnline(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget p0, v0, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iget p0, v0, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iget-wide p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide p0, v0, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    const/16 v0, 0x3e8

    int-to-long v2, v0

    div-long/2addr p0, v2

    iput-wide p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object p0

    iget v0, v0, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-interface {p0, p1, v0}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    :goto_1
    return-object v1
.end method

.method public final updateByRename(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "oldMediaItem"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newMediaItem"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v1

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lg5c;->getVideoRecordListByMediaIdAndBuickId(II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/VideoRecord;

    if-eqz v1, :cond_6

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v3, v1, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->getMVideoRecordDao()Lg5c;

    move-result-object v3

    invoke-interface {v3, v1}, Lg5c;->updateVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/2addr v7, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v7, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->mVideoRecordCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v2, v6, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_5

    :catchall_0
    move-exception p0

    :goto_4
    if-ge v2, v6, :cond_4

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_5
    :goto_5
    move v2, v3

    :cond_6
    return v2
.end method
