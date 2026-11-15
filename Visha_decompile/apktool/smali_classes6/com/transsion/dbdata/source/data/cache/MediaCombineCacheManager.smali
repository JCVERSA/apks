.class public final Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 q2\u00020\u0001:\u0001qB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J#\u0010\r\u001a\u00020\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J%\u0010\u0017\u001a\u00020\u00042\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ\u001d\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001f\u0010#\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008#\u0010%J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008&\u0010%J\u0017\u0010\'\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008\'\u0010%J\u001d\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008*\u0010+J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010+J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010-J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010\u0015J%\u00100\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u00080\u00101J\u0015\u00102\u001a\u00020\t2\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u00082\u00103J\u0015\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020 \u00a2\u0006\u0004\u00085\u00103J\u001d\u00107\u001a\u00020\u00042\u0006\u00104\u001a\u00020 2\u0006\u00106\u001a\u00020\t\u00a2\u0006\u0004\u00087\u00108J\u001d\u0010;\u001a\u00020\u00042\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 \u00a2\u0006\u0004\u0008;\u0010<J\u0015\u0010=\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008=\u0010>J\u001b\u0010=\u001a\u00020\u00042\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u0008\u00a2\u0006\u0004\u0008=\u0010?J\u001f\u0010@\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008@\u0010$J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008@\u0010%J\u001f\u0010@\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008B\u0010%J\u0017\u0010C\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008C\u0010%J\u001d\u0010E\u001a\u00020\u00042\u0006\u0010)\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008E\u0010FJ\u001d\u0010G\u001a\u00020\u00042\u0006\u0010)\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008G\u0010FJ\u001d\u0010G\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008G\u0010-J\u001d\u0010G\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008G\u0010\u0015J%\u0010H\u001a\u00020\u00042\u0006\u00109\u001a\u00020 2\u0006\u0010/\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008H\u0010IJ\r\u0010J\u001a\u00020\u0004\u00a2\u0006\u0004\u0008J\u0010\u0003J\r\u0010K\u001a\u00020\u0004\u00a2\u0006\u0004\u0008K\u0010\u0003J\u0019\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0L\u00a2\u0006\u0004\u0008M\u0010NJ\u001f\u0010O\u001a\u0004\u0018\u00010D2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010O\u001a\u0004\u0018\u00010D2\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008O\u0010QJ\u001f\u0010R\u001a\u0004\u0018\u00010D2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008R\u0010SJ\u001b\u0010T\u001a\u0008\u0012\u0004\u0012\u00020D0\u00082\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008T\u0010UR\u0014\u0010W\u001a\u00020V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0014\u0010Z\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001b\u0010a\u001a\u00020\\8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010^\u001a\u0004\u0008d\u0010eR\u001b\u0010k\u001a\u00020g8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008h\u0010^\u001a\u0004\u0008i\u0010jR\u001b\u0010p\u001a\u00020l8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010^\u001a\u0004\u0008n\u0010o\u00a8\u0006r"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;",
        "",
        "<init>",
        "()V",
        "Lzfb;",
        "clear",
        "fetchData",
        "init",
        "",
        "",
        "mediaIds",
        "",
        "isVideo",
        "updateScanRecentAdd",
        "(Ljava/util/List;Z)V",
        "oldMediaId",
        "newMediaId",
        "updateRecentId",
        "(IIZ)V",
        "mediaId",
        "deleteRecentId",
        "(IZ)V",
        "id",
        "recordPreviewedId",
        "recordFilePreviewedId",
        "(I)V",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "items",
        "item",
        "isRecentAdd",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z",
        "isRecentAddOther",
        "",
        "path",
        "fromVideo",
        "isFavorite",
        "(Ljava/lang/String;Z)Z",
        "(Ljava/lang/String;)Z",
        "isVideoFavorite",
        "isAudioFavorite",
        "Lcom/transsion/dbdata/database/SimpleMediaItem;",
        "mediaItem",
        "addFavorite",
        "(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V",
        "removeFavorite",
        "(Ljava/lang/String;Z)V",
        "oldMediaItem",
        "newMediaItem",
        "updateFavorite",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V",
        "getPlayCount",
        "(Ljava/lang/String;)I",
        "filePath",
        "recordPlayCount",
        "playCount",
        "syncPlayCount",
        "(Ljava/lang/String;I)V",
        "oldPath",
        "newPath",
        "synCountWhenReName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "synCountWhenDelete",
        "(Ljava/lang/String;)V",
        "(Ljava/util/List;)V",
        "isMissing",
        "(IZ)Z",
        "isVideoMissing",
        "isAudioMissing",
        "Lqe6;",
        "addMissing",
        "(Lqe6;Z)V",
        "removeMissing",
        "updateMissing",
        "(Ljava/lang/String;Lqe6;Z)V",
        "forceRefreshMissingCache",
        "forceReloadAll",
        "Lkotlin/Pair;",
        "getMissingCacheStats",
        "()Lkotlin/Pair;",
        "getMissingItemByPath",
        "(Ljava/lang/String;Z)Lqe6;",
        "(Ljava/lang/String;)Lqe6;",
        "getMissingItemById",
        "(IZ)Lqe6;",
        "getAllMissingItems",
        "(Z)Ljava/util/List;",
        "Lnk1;",
        "mCoroutineScope",
        "Lnk1;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "mIsInitialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;",
        "mMediaRecentAddCache$delegate",
        "Lyi5;",
        "getMMediaRecentAddCache",
        "()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;",
        "mMediaRecentAddCache",
        "Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;",
        "mMediaFavoritesCache$delegate",
        "getMMediaFavoritesCache",
        "()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;",
        "mMediaFavoritesCache",
        "Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;",
        "mMediaPlayCountCache$delegate",
        "getMMediaPlayCountCache",
        "()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;",
        "mMediaPlayCountCache",
        "Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;",
        "mMediaMissingDataCache$delegate",
        "getMMediaMissingDataCache",
        "()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;",
        "mMediaMissingDataCache",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaCombineCacheManager"

.field private static final manager$delegate:Lyi5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyi5;"
        }
    .end annotation
.end field


# instance fields
.field private final mCoroutineScope:Lnk1;

.field private final mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMediaFavoritesCache$delegate:Lyi5;

.field private final mMediaMissingDataCache$delegate:Lyi5;

.field private final mMediaPlayCountCache$delegate:Lyi5;

.field private final mMediaRecentAddCache$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lbe6;

    invoke-direct {v1}, Lbe6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->manager$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mCoroutineScope:Lnk1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lxd6;

    invoke-direct {v1}, Lxd6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaRecentAddCache$delegate:Lyi5;

    new-instance v1, Lyd6;

    invoke-direct {v1}, Lyd6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaFavoritesCache$delegate:Lyi5;

    new-instance v1, Lzd6;

    invoke-direct {v1}, Lzd6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaPlayCountCache$delegate:Lyi5;

    new-instance v1, Lae6;

    invoke-direct {v1}, Lae6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaMissingDataCache$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaFavoritesCache_delegate$lambda$1()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMMediaFavoritesCache(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;)Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMMediaMissingDataCache(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;)Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMMediaPlayCountCache(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;)Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMMediaRecentAddCache(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;)Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getManager$delegate$cp()Lyi5;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->manager$delegate:Lyi5;

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->manager_delegate$lambda$4()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaMissingDataCache_delegate$lambda$3()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object v0

    return-object v0
.end method

.method private final clear()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->clear()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->clear()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->clear()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->clear()V

    return-void
.end method

.method public static synthetic d()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaPlayCountCache_delegate$lambda$2()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaRecentAddCache_delegate$lambda$0()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object v0

    return-object v0
.end method

.method private final fetchData()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mCoroutineScope:Lnk1;

    new-instance v3, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method private final getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaFavoritesCache$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    return-object p0
.end method

.method private final getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaMissingDataCache$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    return-object p0
.end method

.method private final getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaPlayCountCache$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    return-object p0
.end method

.method private final getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mMediaRecentAddCache$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    return-object p0
.end method

.method private static final mMediaFavoritesCache_delegate$lambda$1()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;-><init>()V

    return-object v0
.end method

.method private static final mMediaMissingDataCache_delegate$lambda$3()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;-><init>()V

    return-object v0
.end method

.method private static final mMediaPlayCountCache_delegate$lambda$2()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;-><init>()V

    return-object v0
.end method

.method private static final mMediaRecentAddCache_delegate$lambda$0()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;-><init>()V

    return-object v0
.end method

.method private static final manager_delegate$lambda$4()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->addFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V

    return-void
.end method

.method public final addMissing(Lqe6;Z)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->addMissing(Lqe6;Z)V

    return-void
.end method

.method public final deleteRecentId(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->deleteRecentId(IZ)V

    return-void
.end method

.method public final forceRefreshMissingCache()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->forceRefresh()V

    return-void
.end method

.method public final forceReloadAll()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->clear()V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->fetchData()V

    return-void
.end method

.method public final getAllMissingItems(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lqe6;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getAllMissingItems(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMissingCacheStats()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getCacheStats()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getMissingItemById(IZ)Lqe6;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getMissingItemById(IZ)Lqe6;

    move-result-object p0

    return-object p0
.end method

.method public final getMissingItemByPath(Ljava/lang/String;)Lqe6;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getMissingItemByPath(Ljava/lang/String;)Lqe6;

    move-result-object p0

    return-object p0
.end method

.method public final getMissingItemByPath(Ljava/lang/String;Z)Lqe6;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getMissingItemByPath(Ljava/lang/String;Z)Lqe6;

    move-result-object p0

    return-object p0
.end method

.method public final getPlayCount(Ljava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->getPlayCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final init()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->fetchData()V

    return-void
.end method

.method public final isAudioFavorite(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isAudioFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAudioMissing(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isAudioMissing(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFavorite(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFavorite(Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isFavorite(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isMissing(IZ)Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isMissing(IZ)Z

    move-result p0

    return p0
.end method

.method public final isMissing(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isMissing(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isMissing(Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isMissing(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isRecentAdd(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->isRecentAdd(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public final isRecentAddOther(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->isRecentAddOther(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public final isVideoFavorite(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isVideoFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isVideoMissing(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isVideoMissing(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final recordFilePreviewedId(I)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->recordPreviewedIdOther(I)V

    return-void
.end method

.method public final recordPlayCount(Ljava/lang/String;)I
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->recordPlayCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final recordPreviewedId(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->recordPreviewedId(IZ)V

    return-void
.end method

.method public final recordPreviewedId(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->recordPreviewedId(Ljava/util/List;Z)V

    return-void
.end method

.method public final removeFavorite(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite(IZ)V

    return-void
.end method

.method public final removeFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V

    return-void
.end method

.method public final removeFavorite(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeMissing(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing(IZ)V

    return-void
.end method

.method public final removeMissing(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeMissing(Lqe6;Z)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing(Lqe6;Z)V

    return-void
.end method

.method public final synCountWhenDelete(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->synCountWhenDelete(Ljava/lang/String;)V

    return-void
.end method

.method public final synCountWhenDelete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->synCountWhenDelete(Ljava/util/List;)V

    return-void
.end method

.method public final synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "oldPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final syncPlayCount(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaPlayCountCache()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->syncPlayCount(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateFavorite(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 1

    const-string v0, "oldMediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newMediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaFavoritesCache()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->updateFavorite(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    return-void
.end method

.method public final updateMissing(Ljava/lang/String;Lqe6;Z)V
    .locals 1

    const-string v0, "oldPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newMediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaMissingDataCache()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->updateMissing(Ljava/lang/String;Lqe6;Z)V

    return-void
.end method

.method public final updateRecentId(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->updateRecentId(IIZ)V

    return-void
.end method

.method public final updateScanRecentAdd(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getMMediaRecentAddCache()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->updateScanRecentAdd(Ljava/util/List;Z)V

    return-void
.end method
