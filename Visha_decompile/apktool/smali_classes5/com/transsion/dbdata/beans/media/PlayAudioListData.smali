.class public Lcom/transsion/dbdata/beans/media/PlayAudioListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/media/PlayAudioListData$RemoveListener;,
        Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/transsion/dbdata/beans/media/PlayAudioListData;


# instance fields
.field public init:Z

.field volatile mCurrentPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSource:Ljava/lang/String;

.field volatile mLastPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSource:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPlayIndex:I

.field private mPlayListTitle:Ljava/lang/String;

.field private mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private mRepeat:Liz;

.field private mShuffleIndex:I

.field mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLock:Ljava/lang/Object;

    new-instance v0, Liz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Liz;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "audio_play_repeat_mode"

    invoke-static {v0, v2, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {p0, v0}, Liz;->e(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$setPlayMediaItem$1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synFilter$9()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$setUpMd5Async$3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V

    return-void
.end method

.method private checkLastPlayList()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic d(Ljava/util/Set;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synFilter$10(Ljava/util/Set;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synDelete$5(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synFilter$8(Ljava/util/List;)V

    return-void
.end method

.method private filterData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic g(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synFilter$6(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;-><init>()V

    sput-object v1, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synFilter$7(Ljava/util/Set;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$persistPlayListAsync$0(Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$deleteItem$13(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$deleteItem$14(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synRename$12(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method private static synthetic lambda$deleteItem$13(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$deleteItem$14(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->deleteItem(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$persistPlayListAsync$0(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "music_playlist"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "music_playlist_source"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setPlayMediaItem$1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$setUpMd5Async$2(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;->onMd5Computed(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setUpMd5Async$3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lzu3;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lf28;

    invoke-direct {v0, p1, p0}, Lf28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$synDelete$4()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2}, [Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ln28;

    invoke-direct {v1, p0}, Ln28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$synDelete$5(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lav3;->x(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$synFilter$10(Ljava/util/Set;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$synFilter$6(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$synFilter$7(Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synFilter(Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$synFilter$8(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lk28;

    invoke-direct {v0}, Lk28;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2}, [Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ll28;

    invoke-direct {v1, p0, p1}, Ll28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$synFilter$9()V
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lo28;

    invoke-direct {v1, p0, v0}, Lo28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/List;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$synRename$11(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synRename(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$synRename$12(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synDelete$4()V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$synRename$11(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private nextInsert(ZILjava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-le p2, p0, :cond_0

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p2, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-le p2, p0, :cond_2

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p2, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic o(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->lambda$setUpMd5Async$2(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V

    return-void
.end method

.method private persistPlayListAsync(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    new-instance v0, Li28;

    invoke-direct {v0, p1, p2, p0}, Li28;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setUpMd5Async(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lq28;

    invoke-direct {v0, p1, p2}, Lq28;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupMd5(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lzu3;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public addToPlayList(Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearPlayList()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2}, [Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj28;

    invoke-direct {v1, p0, p1}, Lj28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deleteItem(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ls28;

    invoke-direct {p0, p1}, Ls28;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public filterData()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->filterData(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->filterData(Ljava/util/List;)V

    return-void
.end method

.method public getLastPlayList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNewShuffleList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNextIndex(II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method public getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    monitor-exit v0

    return p2

    :cond_2
    :goto_0
    monitor-exit v0

    return p2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    :goto_0
    return-object p0
.end method

.method public getPlayListFlag()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public getPlayListTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayListTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviousSafe(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    :cond_0
    return p1
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public haveLastPlayList()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->checkLastPlayList()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllDemaged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isCurrentListEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public later(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x441

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public next(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->nextInsert(ZILjava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->nextInsert(ZILjava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->nextInsert(ZILjava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->nextInsert(ZILjava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x441

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public playIndex()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    return v0
.end method

.method public playIndexReal()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result p0

    :goto_0
    return p0
.end method

.method public playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public playNext()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_2
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public playNextByBtn()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public playPrevious()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPreviousSafe(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPreviousSafe(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public playPreviousByBtn()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPreviousSafe(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPreviousSafe(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPreviousSafe(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPlayListIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "queryPlayListIndex"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v0
.end method

.method public queryShuffleIndex()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public removeAndPlayNext(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndexSafe(IILcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_3
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public removeAndPlayNextNotSafe()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndex(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getNextIndex(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :try_start_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public declared-synchronized removeAndReFreshPlayList(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-ne v3, p1, :cond_1

    iput v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-ne v4, p1, :cond_5

    iput v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_5
    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_6

    :cond_8
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->persistPlayListAsync(Ljava/util/List;Z)V

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-ne v3, p1, :cond_d

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {p1}, Liz;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    if-gez p1, :cond_9

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_9
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_a

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_a
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    goto :goto_7

    :cond_b
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    if-lt p1, v2, :cond_c

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    :cond_c
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    :goto_7
    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData$RemoveListener;->onRemoveAndPlayNew(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_8

    :cond_d
    invoke-virtual {p0, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    :cond_e
    :goto_8
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "audio_play_list_change"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public restore(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->init:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "music_playlist"

    invoke-virtual {v0, v2}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/media/PlayAudioListData$1;

    invoke-direct {v2, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData$1;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    const-string v4, "music_playing"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->init:Z

    return-void

    :cond_2
    invoke-static {v0, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->init:Z

    return-void

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    :cond_4
    if-eqz p1, :cond_8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v5, "music_playlist_source"

    invoke-virtual {p1, v5}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p1, v2}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore setPlayMediaItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayAudioListData"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v3, 0x0

    if-nez v2, :cond_c

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    :goto_3
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_c
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    :cond_d
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x42d

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_e
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->init:Z

    return-void
.end method

.method public selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method public declared-synchronized setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;",
            "Liz;",
            ")",
            "Lcom/transsion/dbdata/beans/media/PlayAudioListData;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->persistPlayListAsync(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->checkLastPlayList()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    :cond_1
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "audio_play_list_change"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlayListTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayListTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 1

    if-ltz p1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    :cond_1
    return-object p0
.end method

.method public setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 2

    .line 1
    new-instance v0, Lt28;

    invoke-direct {v0, p1}, Lt28;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setUpMd5Async(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleIndex:I

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    if-ltz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    .line 7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlayMediaItem "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayAudioListData"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "music_playing"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v_current_playing_audio_uri"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object p0
.end method

.method public setRepeatMode(Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    :cond_0
    return-object p0
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Liz;->e(I)V

    :cond_0
    return-void
.end method

.method public setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mSource:Ljava/lang/StringBuffer;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 p0, 0x19

    if-ne v1, p0, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 p0, 0x1a

    if-ne v1, p0, :cond_3

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/16 p0, 0x16

    if-ne v1, p0, :cond_4

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/16 p0, 0x14

    if-ne v1, p0, :cond_5

    const-string p0, "TAG_NEW_AUDIO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    return-void
.end method

.method public sortSyn(Ljava/util/List;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)",
            "Lcom/transsion/dbdata/beans/media/PlayAudioListData;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mRepeat:Liz;

    invoke-virtual {v0}, Liz;->c()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->queryPlayListIndex(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mPlayIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public switchData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentSource:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    return-void
.end method

.method public synDelete()V
    .locals 1

    .line 1
    new-instance v0, Lg28;

    invoke-direct {v0, p0}, Lg28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synDelete(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lp28;

    invoke-direct {p0}, Lp28;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synFilter(Landroid/content/Context;)V
    .locals 0

    .line 1
    new-instance p1, Lm28;

    invoke-direct {p1, p0}, Lm28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synFilter(Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lu28;

    invoke-direct {p0, p1}, Lu28;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mShuffleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->mLastPlayList:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2}, [Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh28;

    invoke-direct {v1, p0, p1, p2}, Lh28;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synRename(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lr28;

    invoke-direct {p0, p1, p2}, Lr28;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
