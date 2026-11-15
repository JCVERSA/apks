.class public final Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$Companion;,
        Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 92\u00020\u0001:\u00029:B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000fJ\r\u0010\u0018\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\r\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J#\u0010\u001d\u001a\u00020\r2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001a2\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ%\u0010!\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008!\u0010\"J\u001d\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008$\u0010%J\u001d\u0010\'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\'\u0010%J\u0015\u0010(\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0007\u00a2\u0006\u0004\u0008(\u0010)J%\u0010\'\u001a\u00020\r2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\'\u0010\u001eJ\u001f\u0010+\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010-\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008-\u0010,R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R&\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R&\u00103\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00102R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00106R\u0014\u00108\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00106\u00a8\u0006;"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;",
        "",
        "<init>",
        "()V",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
        "",
        "",
        "map",
        "type",
        "getOrCreateThreadSafeSet",
        "(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;",
        "mediaType",
        "Lzfb;",
        "initPreviewedRecordsByMediaType",
        "(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V",
        "",
        "shouldRecord",
        "()Z",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "item",
        "isValidMediaItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z",
        "savePreviewedMediaIds",
        "init",
        "clear",
        "",
        "mediaIds",
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
        "recordPreviewedIdOther",
        "(I)V",
        "items",
        "isRecentAdd",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z",
        "isRecentAddOther",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "lastRecordTime",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "mPreviewedIds",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "mScanRecentIds",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mPreviewedLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mRecentLock",
        "mMkvLock",
        "Companion",
        "MediaType",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$Companion;

.field private static final RECORD_DEBOUNCE_TIME_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MediaRecentCacheManager"


# instance fields
.field private final lastRecordTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mMkvLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mRecentLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->lastRecordTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mRecentLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mMkvLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private final getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    const-string p1, "synchronized(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    :goto_2
    return-object p0
.end method

.method private final initPreviewedRecordsByMediaType(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start loading the preview record from mmkv for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRecentCacheManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v5, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_5

    :try_start_1
    iget-object v5, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mMkvLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;->getMmkvKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$initPreviewedRecordsByMediaType$1$idSet$1;

    invoke-direct {v5}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$initPreviewedRecordsByMediaType$1$idSet$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v6, v5}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception v5

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to init "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    if-ge v4, v3, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_8

    :goto_7
    if-ge v4, v3, :cond_7

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finish loading the preview record from mmkv for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final isValidMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, p1

    :goto_1
    xor-int/2addr p0, p1

    return p0
.end method

.method private final savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mMkvLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;->getMmkvKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method private final shouldRecord()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->lastRecordTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final deleteRecentId(IZ)V
    .locals 7

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    :goto_3
    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mRecentLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_9

    new-instance v5, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :cond_8
    :goto_7
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    :goto_8
    if-ge v3, v2, :cond_a

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_9
    if-ge v3, v2, :cond_b

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :goto_a
    if-ge v3, v2, :cond_c

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final init()V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->initPreviewedRecordsByMediaType(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->initPreviewedRecordsByMediaType(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->initPreviewedRecordsByMediaType(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    return-void
.end method

.method public final isRecentAdd(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->isValidMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_2

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isRecentAddOther(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string p2, "item"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->isValidMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    new-instance p2, Ljava/io/File;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Lit1;->e(J)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final recordPreviewedId(IZ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->shouldRecord()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    invoke-direct {p0, v5, v6}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;

    move-result-object v5

    .line 6
    new-instance v7, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v4, Ljava/util/HashSet;

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 12
    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 16
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {p0, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    .line 19
    invoke-direct {p0, v6}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    .line 20
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_4

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_6

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v3, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :goto_5
    const-string p2, "MediaRecentCacheManager"

    const-string v0, "Failed to record id"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_6
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->lastRecordTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final recordPreviewedId(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 24
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p2, :cond_1

    .line 25
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 27
    :try_start_0
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;

    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    invoke-direct {p0, v5, v6}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;

    move-result-object v5

    .line 29
    new-instance v6, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    new-instance v4, Ljava/util/HashSet;

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    check-cast p1, Ljava/lang/Iterable;

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 33
    iget v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    iget v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 37
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    .line 40
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    .line 41
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p2}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    .line 44
    invoke-direct {p0, v5}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    .line 45
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 46
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

    :cond_7
    :goto_6
    return-void
.end method

.method public final recordPreviewedIdOther(I)V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->shouldRecord()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;

    invoke-direct {p0, v4, v5}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->getOrCreateThreadSafeSet(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;

    move-result-object v4

    new-instance v6, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-ge v3, v2, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_5

    :catchall_0
    move-exception p1

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    const-string v0, "MediaRecentCacheManager"

    const-string v1, "Failed to record other id"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->lastRecordTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final updateRecentId(IIZ)V
    .locals 7

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mPreviewedIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->savePreviewedMediaIds(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    :goto_3
    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mRecentLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_9

    new-instance v5, Ljava/util/HashSet;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :cond_8
    :goto_7
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    :goto_8
    if-ge v3, v2, :cond_a

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_9
    if-ge v3, v2, :cond_b

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :goto_a
    if-ge v3, v2, :cond_c

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final updateScanRecentAdd(Ljava/util/List;Z)V
    .locals 5
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

    if-eqz p2, :cond_0

    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;->INSTANCE:Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;

    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mRecentLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;->mScanRecentIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    :goto_4
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method
