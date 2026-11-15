.class public final Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ3\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00152\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u0011\u0010\u0019J\'\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0010\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010\"\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\"\u0010#J\u001b\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010$\u001a\u00020\u0010\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010*\u001a\u00020)2\u0006\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u001b\u00a2\u0006\u0004\u0008*\u0010+J%\u0010.\u001a\u00020)2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008.\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00102R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00105\u001a\u0004\u0008;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u00105\u001a\u0004\u0008@\u0010A\u00a8\u0006C"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;",
        "",
        "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "playListRepository",
        "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "videoRecordRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "mAudioPlayRecordRepository",
        "<init>",
        "(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "item",
        "",
        "fromVideo",
        "Lkotlin/Function1;",
        "delete",
        "",
        "deleteSystemMediaItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)I",
        "Ld82$l;",
        "action",
        "",
        "deleteSystemMediaItems",
        "(Ld82$l;)Ljava/util/List;",
        "Ld82$k;",
        "(Ld82$k;)I",
        "mediaId",
        "",
        "filePath",
        "coverPath",
        "smartUpdateAudioCustomCover",
        "(ILjava/lang/String;Ljava/lang/String;)I",
        "getAudioCustomCover",
        "(I)Ljava/lang/String;",
        "recordVideo2Audio",
        "(ILjava/lang/String;)I",
        "limitCount",
        "getConvertedAudioPaths",
        "(I)Ljava/util/List;",
        "newPath",
        "oldPath",
        "Lzfb;",
        "updateInMediaStore",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "oldMediaItem",
        "newMediaItem",
        "updateSystemMediaItemName",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V",
        "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;",
        "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;",
        "mMediaStoreOperateRepository$delegate",
        "Lyi5;",
        "getMMediaStoreOperateRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;",
        "mMediaStoreOperateRepository",
        "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mediaDataMissingRepository$delegate",
        "getMediaDataMissingRepository",
        "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;",
        "mediaDataMissingRepository",
        "Lnjb;",
        "mUserBehaviorItemDao$delegate",
        "getMUserBehaviorItemDao",
        "()Lnjb;",
        "mUserBehaviorItemDao",
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


# instance fields
.field private final mAudioPlayRecordRepository:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

.field private final mMediaStoreOperateRepository$delegate:Lyi5;

.field private final mUserBehaviorItemDao$delegate:Lyi5;

.field private final mediaDataMissingRepository$delegate:Lyi5;

.field private final playListRepository:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

.field private final videoRecordRepository:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V
    .locals 1

    const-string v0, "playListRepository"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoRecordRepository"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAudioPlayRecordRepository"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->playListRepository:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    iput-object p2, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->videoRecordRepository:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    iput-object p3, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mAudioPlayRecordRepository:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    new-instance p1, Lpjb;

    invoke-direct {p1}, Lpjb;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mMediaStoreOperateRepository$delegate:Lyi5;

    new-instance p1, Lqjb;

    invoke-direct {p1}, Lqjb;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mediaDataMissingRepository$delegate:Lyi5;

    new-instance p1, Lrjb;

    invoke-direct {p1}, Lrjb;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mUserBehaviorItemDao$delegate:Lyi5;

    return-void
.end method

.method public static synthetic a()Lnjb;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mUserBehaviorItemDao_delegate$lambda$2()Lnjb;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mediaDataMissingRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mMediaStoreOperateRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;

    move-result-object v0

    return-object v0
.end method

.method private final deleteSystemMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            "Z",
            "Le74;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-interface {p3, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    const-string v0, "data"

    if-eqz p2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->videoRecordRepository:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->delete(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mAudioPlayRecordRepository:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    int-to-long v2, v2

    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->deleteByMediaId(JLjava/lang/String;)I

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMMediaStoreOperateRepository()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;->deleteFileInMediaStore(Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->playListRepository:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->deletePlayListElementById(I)I

    .line 8
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v1

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v1, v2}, Lnjb;->deleteByMediaId(I)I

    .line 9
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    move-result-object p0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;->deleteSingleMissingData(Ljava/lang/String;Z)I

    .line 10
    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->removeFavorite(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenDelete(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->deleteRecentId(IZ)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private final getMMediaStoreOperateRepository()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mMediaStoreOperateRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;

    return-object p0
.end method

.method private final getMUserBehaviorItemDao()Lnjb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mUserBehaviorItemDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnjb;

    return-object p0
.end method

.method private final getMediaDataMissingRepository()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->mediaDataMissingRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    return-object p0
.end method

.method private static final mMediaStoreOperateRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;-><init>()V

    return-object v0
.end method

.method private static final mUserBehaviorItemDao_delegate$lambda$2()Lnjb;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->l()Lnjb;

    move-result-object v0

    return-object v0
.end method

.method private static final mediaDataMissingRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final deleteSystemMediaItem(Ld82$k;)I
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ld82$k;->c()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p1}, Ld82$k;->b()Z

    move-result v1

    invoke-virtual {p1}, Ld82$k;->a()Le74;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)I

    move-result p0

    return p0
.end method

.method public final deleteSystemMediaItems(Ld82$l;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld82$l;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld82$l;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p1}, Ld82$l;->b()Z

    move-result v3

    invoke-virtual {p1}, Ld82$l;->a()Le74;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->deleteSystemMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getAudioCustomCover(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object p0

    invoke-interface {p0, p1}, Lnjb;->getByMediaId(I)Lcom/transsion/dbdata/database/UserBehaviorItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/UserBehaviorItem;->getCustomCover()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getConvertedAudioPaths(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object p0

    invoke-interface {p0, p1}, Lnjb;->getConvertedAudioPathsOrderByTime(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final recordVideo2Audio(ILjava/lang/String;)I
    .locals 18

    const-string v0, "filePath"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    new-instance v15, Lcom/transsion/dbdata/database/UserBehaviorItem;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v14, 0x3c1

    const/16 v16, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/transsion/dbdata/database/UserBehaviorItem;-><init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lnjb;->insertSingle(Lcom/transsion/dbdata/database/UserBehaviorItem;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final smartUpdateAudioCustomCover(ILjava/lang/String;Ljava/lang/String;)I
    .locals 16
    .annotation build Landroidx/room/Transaction;
    .end annotation

    move-object/from16 v9, p3

    const-string v0, "filePath"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverPath"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    move/from16 v1, p1

    invoke-interface {v0, v1, v9}, Lnjb;->updateCoverPath(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v15, Lcom/transsion/dbdata/database/UserBehaviorItem;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v13, 0x399

    const/4 v14, 0x0

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Lcom/transsion/dbdata/database/UserBehaviorItem;-><init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    invoke-interface {v0, v15}, Lnjb;->insertSingle(Lcom/transsion/dbdata/database/UserBehaviorItem;)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    return v0
.end method

.method public final updateInMediaStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "newPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMMediaStoreOperateRepository()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;->updateInMediaStore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateSystemMediaItemName(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 5

    const-string v0, "oldMediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newMediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->playListRepository:Lcom/transsion/dbdata/source/data/repository/PlayListRepository;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/dbdata/source/data/repository/PlayListRepository;->updatePlayListElement(IILjava/lang/String;)Ljava/util/List;

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {v0, v1}, Lnjb;->getByMediaId(I)Lcom/transsion/dbdata/database/UserBehaviorItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lnjb;->updateMediaIdAndPath(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnjb;->getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/UserBehaviorItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->getMUserBehaviorItemDao()Lnjb;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lnjb;->updateMediaIdAndPath(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "behaviorItemUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;->videoRecordRepository:Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;->updateByRename(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    :cond_3
    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateFavorite(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->updateRecentId(IIZ)V

    return-void
.end method
