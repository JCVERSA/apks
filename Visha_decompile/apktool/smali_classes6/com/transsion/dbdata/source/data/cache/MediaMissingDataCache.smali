.class public final Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0005\u0018\u0000 <2\u00020\u0001:\u0001<B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u001f\u0010\u000c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u000eJ\u001f\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0014J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001bJ%\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0004\u00a2\u0006\u0004\u0008 \u0010\u0003J\u0019\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0!\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008$\u0010&J!\u0010\'\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00150)2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008*\u0010+R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010.R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R8\u00109\u001a&\u0012\u000c\u0012\n 7*\u0004\u0018\u00010\u00150\u0015 7*\u0012\u0012\u000c\u0012\n 7*\u0004\u0018\u00010\u00150\u0015\u0018\u000108068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R8\u0010;\u001a&\u0012\u000c\u0012\n 7*\u0004\u0018\u00010\u00150\u0015 7*\u0012\u0012\u000c\u0012\n 7*\u0004\u0018\u00010\u00150\u0015\u0018\u000108068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010:\u00a8\u0006="
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;",
        "",
        "<init>",
        "()V",
        "Lzfb;",
        "syncMissingData",
        "init",
        "clear",
        "",
        "path",
        "",
        "fromVideo",
        "isMissing",
        "(Ljava/lang/String;Z)Z",
        "(Ljava/lang/String;)Z",
        "",
        "mediaId",
        "(IZ)Z",
        "isVideoMissing",
        "isAudioMissing",
        "(I)Z",
        "Lqe6;",
        "mediaItem",
        "addMissing",
        "(Lqe6;Z)V",
        "removeMissing",
        "(Ljava/lang/String;Z)V",
        "(IZ)V",
        "oldPath",
        "newMediaItem",
        "updateMissing",
        "(Ljava/lang/String;Lqe6;Z)V",
        "forceRefresh",
        "Lkotlin/Pair;",
        "getCacheStats",
        "()Lkotlin/Pair;",
        "getMissingItemByPath",
        "(Ljava/lang/String;Z)Lqe6;",
        "(Ljava/lang/String;)Lqe6;",
        "getMissingItemById",
        "(IZ)Lqe6;",
        "",
        "getAllMissingItems",
        "(Z)Ljava/util/List;",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mVideoMissingLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mAudioMissingLock",
        "Loe6;",
        "mMediaDataMissingDao$delegate",
        "Lyi5;",
        "getMMediaDataMissingDao",
        "()Loe6;",
        "mMediaDataMissingDao",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "mVideoMissingData",
        "Ljava/util/Set;",
        "mAudioMissingData",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaMissingDataCache"


# instance fields
.field private final mAudioMissingData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lqe6;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mMediaDataMissingDao$delegate:Lyi5;

.field private final mVideoMissingData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lqe6;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Lxj6;

    invoke-direct {v0}, Lxj6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mMediaDataMissingDao$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lqe6;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing$lambda$17$lambda$15(Ljava/lang/String;Lqe6;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Loe6;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mMediaDataMissingDao_delegate$lambda$0()Loe6;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(ILqe6;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing$lambda$20$lambda$18(ILqe6;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing$lambda$20$lambda$19(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lqe6;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->updateMissing$lambda$24$lambda$22(Ljava/lang/String;Lqe6;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->updateMissing$lambda$24$lambda$23(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->removeMissing$lambda$17$lambda$16(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final getMMediaDataMissingDao()Loe6;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mMediaDataMissingDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loe6;

    return-object p0
.end method

.method private static final mMediaDataMissingDao_delegate$lambda$0()Loe6;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->h()Loe6;

    move-result-object v0

    return-object v0
.end method

.method private static final removeMissing$lambda$17$lambda$15(Ljava/lang/String;Lqe6;)Z
    .locals 0

    invoke-virtual {p1}, Lqe6;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeMissing$lambda$17$lambda$16(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeMissing$lambda$20$lambda$18(ILqe6;)Z
    .locals 0

    invoke-virtual {p1}, Lqe6;->f()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final removeMissing$lambda$20$lambda$19(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final syncMissingData()V
    .locals 9

    const/4 v0, 0x1

    const-string v1, "MediaMissingDataCache"

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string v2, "Start sync missing data from db(media_data_missing)"

    invoke-static {v1, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->getMMediaDataMissingDao()Loe6;

    move-result-object v2

    invoke-interface {v2}, Loe6;->getAllMissingData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish sync missing data, total count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start updating cache"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/database/MediaDataMissingItem;

    sget-object v6, Lqe6;->m:Lqe6$a;

    invoke-virtual {v6, v5}, Lqe6$a;->a(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lqe6;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/dbdata/database/MediaDataMissingItem;->getMediaType()I

    move-result v5

    if-eq v5, v0, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_4

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/2addr v8, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    iget-object v8, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, v7

    :goto_3
    if-ge v3, v6, :cond_5

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v3, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v7

    :goto_4
    move v6, v7

    :goto_5
    if-ge v6, v5, :cond_7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/2addr v6, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    invoke-interface {p0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    if-ge v7, v5, :cond_8

    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v7, v0

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    :catchall_1
    move-exception p0

    :goto_7
    if-ge v7, v5, :cond_9

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v7, v0

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :catchall_2
    move-exception p0

    :goto_8
    if-ge v7, v6, :cond_a

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/2addr v7, v0

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_a
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v0, "Success to sync missing data"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string v0, "Failed to sync missing data"

    invoke-static {v1, v0, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method private static final updateMissing$lambda$24$lambda$22(Ljava/lang/String;Lqe6;)Z
    .locals 0

    invoke-virtual {p1}, Lqe6;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final updateMissing$lambda$24$lambda$23(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addMissing(Lqe6;Z)V
    .locals 5

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-virtual {p1}, Lqe6;->g()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added missing data to cache: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fromVideo: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMissingDataCache"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-ge v3, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    :goto_6
    if-ge v3, v2, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :catchall_1
    move-exception p0

    :goto_7
    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final forceRefresh()V
    .locals 2

    const-string v0, "MediaMissingDataCache"

    const-string v1, "Force refreshing cache..."

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->syncMissingData()V

    return-void
.end method

.method public final getAllMissingItems(Z)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lqe6;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    :goto_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCacheStats()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    new-instance v1, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getMissingItemById(IZ)Lqe6;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    :goto_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lqe6;

    invoke-virtual {v0}, Lqe6;->f()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lqe6;

    return-object p2
.end method

.method public final getMissingItemByPath(Ljava/lang/String;)Lqe6;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    const-string v1, "mVideoMissingData"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    const-string v1, "mAudioMissingData"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lqe6;

    invoke-virtual {v1}, Lqe6;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lqe6;

    return-object v0
.end method

.method public final getMissingItemByPath(Ljava/lang/String;Z)Lqe6;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    .line 2
    :goto_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lqe6;

    invoke-virtual {v0}, Lqe6;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lqe6;

    return-object p2
.end method

.method public final init()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->syncMissingData()V

    return-void
.end method

.method public final isAudioMissing(I)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    const-string v0, "mAudioMissingData"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 6
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe6;

    .line 8
    invoke-virtual {v0}, Lqe6;->f()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isAudioMissing(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    const-string v0, "mAudioMissingData"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 2
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe6;

    .line 4
    invoke-virtual {v0}, Lqe6;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isMissing(IZ)Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isVideoMissing(I)Z

    move-result p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isAudioMissing(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isMissing(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isVideoMissing(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isAudioMissing(Ljava/lang/String;)Z

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

.method public final isMissing(Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isVideoMissing(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->isAudioMissing(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isVideoMissing(I)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    const-string v0, "mVideoMissingData"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 6
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe6;

    .line 8
    invoke-virtual {v0}, Lqe6;->f()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isVideoMissing(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    const-string v0, "mVideoMissingData"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 2
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe6;

    .line 4
    invoke-virtual {v0}, Lqe6;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final removeMissing(IZ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 17
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 21
    :try_start_0
    new-instance v4, Lvj6;

    invoke-direct {v4, p1}, Lvj6;-><init>(I)V

    new-instance v5, Lwj6;

    invoke-direct {v5, v4}, Lwj6;-><init>(Le74;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed missing data from cache by mediaId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fromVideo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMissingDataCache"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v3, v2, :cond_4

    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final removeMissing(Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 13
    :try_start_0
    new-instance v4, Ltj6;

    invoke-direct {v4, p1}, Ltj6;-><init>(Ljava/lang/String;)V

    new-instance v5, Luj6;

    invoke-direct {v5, v4}, Luj6;-><init>(Le74;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed missing data from cache by path: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fromVideo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMissingDataCache"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v3, v2, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final removeMissing(Lqe6;Z)V
    .locals 5

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 7
    invoke-virtual {p1}, Lqe6;->g()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed missing data from cache: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fromVideo: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMissingDataCache"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v3, v2, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final updateMissing(Ljava/lang/String;Lqe6;Z)V
    .locals 6

    const-string v0, "oldPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newMediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mVideoMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingData:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;->mAudioMissingLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

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
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqe6;

    invoke-virtual {v5}, Lqe6;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v4, Lrj6;

    invoke-direct {v4, p1}, Lrj6;-><init>(Ljava/lang/String;)V

    new-instance v5, Lsj6;

    invoke-direct {v5, v4}, Lsj6;-><init>(Le74;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-ge v3, v2, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-virtual {p2}, Lqe6;->g()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated missing data in cache: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fromVideo: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMissingDataCache"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
