.class public final Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 h2\u00020\u0001:\u0001hB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000c\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u001d\u0010\r\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\tJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\'\u0010\u001b\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00040\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0008\u0008\u0002\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0008\u0008\u0002\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008&\u0010%J+\u0010)\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010+\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0004\u0008+\u0010\u0013J\u0015\u0010,\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008,\u0010\u0018J\u001b\u0010.\u001a\u00020\u00072\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0004\u00a2\u0006\u0004\u0008.\u0010\tJ\u0017\u00100\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020/\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u00082\u0010\"J\u001d\u00103\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0008\u0008\u0002\u0010#\u001a\u00020\u0007\u00a2\u0006\u0004\u00083\u0010%J-\u00107\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00042\n\u0008\u0002\u00106\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u00087\u00108J\u001b\u00109\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00089\u0010:J\u001b\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010;\u001a\u00020\u0015\u00a2\u0006\u0004\u0008<\u0010=J)\u0010@\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0008\u0010>\u001a\u0004\u0018\u0001052\u0008\u0010?\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u0008@\u0010AJ-\u0010E\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010B2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u0008E\u0010FJ\u001f\u0010G\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0008\u0010D\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u0008G\u0010:J\u001f\u0010I\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0008\u0010H\u001a\u0004\u0018\u000105\u00a2\u0006\u0004\u0008I\u0010:J\u0013\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004\u00a2\u0006\u0004\u0008J\u0010\u001eJ\u0015\u0010M\u001a\u00020\u000e2\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008M\u0010NR\u001b\u0010T\u001a\u00020O8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010SR\u001b\u0010Y\u001a\u00020U8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010Q\u001a\u0004\u0008W\u0010XR\u001a\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\n0Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u001a\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\n0Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010\\R#\u0010c\u001a\n _*\u0004\u0018\u00010^0^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010Q\u001a\u0004\u0008a\u0010bR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0014\u0010g\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008g\u0010f\u00a8\u0006i"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItemList",
        "",
        "insertBatchByUser",
        "(Ljava/util/List;)Z",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "mediaItems",
        "updateAllUserAddCache",
        "updateAllScanCache",
        "Lzfb;",
        "clearAllUserAddCache",
        "clearAllScanCache",
        "mediaItem",
        "addToUserAddCache",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z",
        "addToScanCache",
        "",
        "mediaId",
        "removeFromUserAddCache",
        "(I)Z",
        "removeFromScanCache",
        "Lkotlin/Pair;",
        "getCacheSnapshot",
        "()Lkotlin/Pair;",
        "getAllCacheList",
        "()Ljava/util/List;",
        "Lxk8$x;",
        "action",
        "querySingleMVFromDB",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "isForceUpdate",
        "queryAllMVListFromSystem",
        "(Z)Ljava/util/List;",
        "queryAllMVListFromUser",
        "Lkotlin/Function1;",
        "predicate",
        "queryFromCache",
        "(Le74;)Ljava/util/List;",
        "insertSingleByUser",
        "deleteSingleByUser",
        "mediaIdList",
        "deleteBatchByUser",
        "Lxk8$g;",
        "querySingleMVFromCache",
        "(Lxk8$g;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "querySingleMV",
        "queryAllMVList",
        "mediaIds",
        "",
        "displayName",
        "queryMVList",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "searchMVList",
        "(Ljava/lang/String;)Ljava/util/List;",
        "minPlayCount",
        "queryTopPlayedMVList",
        "(I)Ljava/util/List;",
        "albumName",
        "artistName",
        "queryAlbumArtistMVList",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "",
        "bucketId",
        "parentPath",
        "queryBucketMVList",
        "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;",
        "queryParentPathMVList",
        "title",
        "queryTitleMVList",
        "queryRecentMVList",
        "Landroid/net/Uri;",
        "uri",
        "refreshCacheAndUserTable",
        "(Landroid/net/Uri;)V",
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
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "musicVideoAddByUserCache",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "scanMusicVideoCache",
        "Lbw6;",
        "kotlin.jvm.PlatformType",
        "mUserMusicVideoDao$delegate",
        "getMUserMusicVideoDao",
        "()Lbw6;",
        "mUserMusicVideoDao",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "scanMusicVideoCacheRWLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "musicVideoAddByUserCacheRWLock",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

.field private static final manager$delegate:Lyi5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyi5;"
        }
    .end annotation
.end field


# instance fields
.field private final mFileQueryRepository$delegate:Lyi5;

.field private final mUserMusicVideoDao$delegate:Lyi5;

.field private final mVideoQueryRepository$delegate:Lyi5;

.field private final musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private final musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private final scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lbs;

    invoke-direct {v1}, Lbs;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->manager$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltr;

    invoke-direct {v0}, Ltr;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mVideoQueryRepository$delegate:Lyi5;

    new-instance v0, Lur;

    invoke-direct {v0}, Lur;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mFileQueryRepository$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lvr;

    invoke-direct {v0}, Lvr;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mUserMusicVideoDao$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public static synthetic a(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->refreshCacheAndUserTable$lambda$54(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getManager$delegate$cp()Lyi5;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->manager$delegate:Lyi5;

    return-object v0
.end method

.method private final addToScanCache(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :goto_3
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :goto_4
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method private final addToUserAddCache(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :goto_3
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :goto_4
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->manager_delegate$lambda$55()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryTopPlayedMVList$lambda$44(Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final clearAllScanCache()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private final clearAllUserAddCache()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->refreshCacheAndUserTable$lambda$53(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private static final deleteBatchByUser$lambda$10$lambda$9$lambda$7(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final deleteBatchByUser$lambda$10$lambda$9$lambda$8(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->removeFromUserAddCache$lambda$17(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryTopPlayedMVList$lambda$45(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->removeFromScanCache$lambda$18(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private final getAllCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getCacheSnapshot()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private final getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mFileQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-object p0
.end method

.method private final getMUserMusicVideoDao()Lbw6;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mUserMusicVideoDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbw6;

    return-object p0
.end method

.method private final getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mVideoQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    return-object p0
.end method

.method public static synthetic h(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->deleteBatchByUser$lambda$10$lambda$9$lambda$7(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->removeFromUserAddCache$lambda$16(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private final insertBatchByUser(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/AudioItem;->convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p1

    invoke-interface {p1, v0}, Lbw6;->insertAll(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertBatchByUser error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MVRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object p0, p1

    :cond_6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->deleteBatchByUser$lambda$10$lambda$9$lambda$8(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->refreshCacheAndUserTable$lambda$51(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryMVList$lambda$34(Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mUserMusicVideoDao_delegate$lambda$2()Lbw6;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    return-object v0
.end method

.method private static final mVideoQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final manager_delegate$lambda$55()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;-><init>()V

    return-object v0
.end method

.method public static synthetic n()Lbw6;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mUserMusicVideoDao_delegate$lambda$2()Lbw6;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryTopPlayedMVList$lambda$43(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->mFileQueryRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->removeFromScanCache$lambda$19(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic queryAllMVList$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final queryAllMVListFromSystem(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->clearAllScanCache()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAllMVList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllMVList()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->updateAllScanCache(Ljava/util/List;)Z

    return-object p1
.end method

.method public static synthetic queryAllMVListFromSystem$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVListFromSystem(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final queryAllMVListFromUser(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->clearAllUserAddCache()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p1

    invoke-interface {p1}, Lbw6;->getAll()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->updateAllUserAddCache(Ljava/util/List;)Z

    return-object v0
.end method

.method public static synthetic queryAllMVListFromUser$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVListFromUser(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBucketMVList$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final queryFromCache(Le74;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getCacheSnapshot()Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p1, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static synthetic queryMVList$default(Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryMVList$lambda$34(Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method private final querySingleMVFromDB(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    invoke-virtual {p1}, Lxk8$g;->c()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$g;->c()I

    move-result p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoById(I)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoListByPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoListByDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final queryTopPlayedMVList$lambda$43(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object v0
.end method

.method private static final queryTopPlayedMVList$lambda$44(Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getPlayCount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryTopPlayedMVList$lambda$45(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic r(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->refreshCacheAndUserTable$lambda$52(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final refreshCacheAndUserTable$lambda$51(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final refreshCacheAndUserTable$lambda$52(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final refreshCacheAndUserTable$lambda$53(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

.method private static final refreshCacheAndUserTable$lambda$54(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final removeFromScanCache(I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lkr;

    invoke-direct {v1, p1}, Lkr;-><init>(I)V

    new-instance p1, Llr;

    invoke-direct {p1, v1}, Llr;-><init>(Le74;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private static final removeFromScanCache$lambda$18(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final removeFromScanCache$lambda$19(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final removeFromUserAddCache(I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lzr;

    invoke-direct {v1, p1}, Lzr;-><init>(I)V

    new-instance p1, Las;

    invoke-direct {p1, v1}, Las;-><init>(Le74;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private static final removeFromUserAddCache$lambda$16(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final removeFromUserAddCache$lambda$17(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->searchMVList$lambda$39(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method private static final searchMVList$lambda$39(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v1, "displayName"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, v1}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final updateAllScanCache(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private final updateAllUserAddCache(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public final deleteBatchByUser(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "mediaIdList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lrr;

    invoke-direct {v2, v0}, Lrr;-><init>(I)V

    new-instance v3, Lsr;

    invoke-direct {v3, v2}, Lsr;-><init>(Le74;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object v1

    invoke-interface {v1, v0}, Lbw6;->deleteById(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteBatchByUser error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MVRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, p1

    :cond_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final deleteSingleByUser(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->deleteBatchByUser(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final insertSingleByUser(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->insertBatchByUser(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final queryAlbumArtistMVList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAlbumArtistMVList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p2}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final queryAllMVList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVListFromSystem(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVListFromUser(Z)Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    move-object v0, p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p2}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :cond_5
    return-object p0
.end method

.method public final queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljr;

    invoke-direct {v0, p2, p1}, Ljr;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryFromCache(Le74;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lbw6;->getAllByTitleAndIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-interface {p0, p1}, Lbw6;->getAllByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_1
    const/16 p1, 0xa

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v3, v2}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    :cond_5
    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p0, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryParentPathMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryParentPathMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final queryRecentMVList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryRecentMVList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryRecentMVList()Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->querySingleMVFromCache(Lxk8$g;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_2
    move-object v0, v1

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->querySingleMVFromDB(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final querySingleMVFromCache(Lxk8$g;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getAllCacheList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lxk8$g;->c()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1}, Lxk8$g;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    :cond_4
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v3, "data"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v0

    :cond_7
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v0

    :cond_a
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_b
    :goto_0
    return-object v1
.end method

.method public final queryTitleMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryTitleMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final queryTopPlayedMVList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAllMVList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllMVList()Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p0

    new-instance v0, Lwr;

    invoke-direct {v0}, Lwr;-><init>()V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance v0, Lxr;

    invoke-direct {v0}, Lxr;-><init>()V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->U(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance v0, Lyr;

    invoke-direct {v0, p1}, Lyr;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final refreshCacheAndUserTable(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingle$dbdata_release(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->removeFromScanCache(I)Z

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->deleteSingleByUser(I)Z

    goto/16 :goto_3

    :cond_1
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mediaType:I

    if-nez v1, :cond_3

    sget-object v1, Lge6;->a:Lge6;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lge6;->f(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Lge6;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lmr;

    invoke-direct {v1, p1}, Lmr;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance v2, Lnr;

    invoke-direct {v2, v1}, Lnr;-><init>(Le74;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->scanMusicVideoCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    sget-object v1, Lge6;->a:Lge6;

    invoke-virtual {v1, v0}, Lge6;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lor;

    invoke-direct {v1, v0}, Lor;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance v2, Lpr;

    invoke-direct {v2, v1}, Lpr;-><init>(Le74;)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object v0

    invoke-interface {v0, p1}, Lbw6;->update(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->musicVideoAddByUserCacheRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public final searchMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const-string v0, "displayName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lqr;

    invoke-direct {v0, p1}, Lqr;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryFromCache(Le74;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->searchMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->searchMVList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->getMUserMusicVideoDao()Lbw6;

    move-result-object p0

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoByTitleOrDisplay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/16 p1, 0xa

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v4, v3}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_3
    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {p0, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
