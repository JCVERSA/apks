.class public final Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u0015\u001a\u00020\u00042\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001b\u0010\'\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010&R \u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;",
        "",
        "<init>",
        "()V",
        "Lzfb;",
        "syncMediaPlayCounts",
        "init",
        "",
        "path",
        "",
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
        "",
        "paths",
        "(Ljava/util/List;)V",
        "clear",
        "mPlayCountLock",
        "Ljava/lang/Object;",
        "Lg5c;",
        "mVideoRecordDao$delegate",
        "Lyi5;",
        "getMVideoRecordDao",
        "()Lg5c;",
        "mVideoRecordDao",
        "Lht;",
        "mAudioPlayHistoryDao$delegate",
        "getMAudioPlayHistoryDao",
        "()Lht;",
        "mAudioPlayHistoryDao",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "mPlayCountMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaPlayCountCacheManager"


# instance fields
.field private final mAudioPlayHistoryDao$delegate:Lyi5;

.field private final mPlayCountLock:Ljava/lang/Object;

.field private final mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoRecordDao$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    new-instance v0, Lal6;

    invoke-direct {v0}, Lal6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mVideoRecordDao$delegate:Lyi5;

    new-instance v0, Lbl6;

    invoke-direct {v0}, Lbl6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mAudioPlayHistoryDao$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a()Lg5c;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mVideoRecordDao_delegate$lambda$0()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lht;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mAudioPlayHistoryDao_delegate$lambda$1()Lht;

    move-result-object v0

    return-object v0
.end method

.method private final getMAudioPlayHistoryDao()Lht;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mAudioPlayHistoryDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    return-object p0
.end method

.method private final getMVideoRecordDao()Lg5c;
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mVideoRecordDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lg5c;

    return-object p0
.end method

.method private static final mAudioPlayHistoryDao_delegate$lambda$1()Lht;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->f()Lht;

    move-result-object v0

    return-object v0
.end method

.method private static final mVideoRecordDao_delegate$lambda$0()Lg5c;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object v0

    return-object v0
.end method

.method private final syncMediaPlayCounts()V
    .locals 5

    const-string v0, "MediaPlayCountCacheManager"

    const-string v1, "Start loading the play counts from db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->getMVideoRecordDao()Lg5c;

    move-result-object v1

    invoke-interface {v1}, Lg5c;->getAllVideoPlayCounts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->getMAudioPlayHistoryDao()Lht;

    move-result-object v2

    invoke-interface {v2}, Lht;->getAllAudioPlayCounts()Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/Collection;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lky5;->g(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lwn8;->d(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/MediaPlayCount;

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/MediaPlayCount;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/MediaPlayCount;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    const-string v0, "MediaPlayCountCacheManager"

    const-string v1, "Failed to sync play counts"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-string p0, "MediaPlayCountCacheManager"

    const-string v0, "Finish loading the play counts from db"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getPlayCount(Ljava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final init()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->syncMediaPlayCounts()V

    return-void
.end method

.method public final recordPlayCount(Ljava/lang/String;)I
    .locals 3

    const-string v0, "filePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final synCountWhenDelete(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final synCountWhenDelete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paths"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "oldPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final syncPlayCount(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountLock:Ljava/lang/Object;

    monitor-enter v0

    if-lez p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;->mPlayCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
