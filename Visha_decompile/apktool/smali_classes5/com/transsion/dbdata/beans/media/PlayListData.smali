.class public Lcom/transsion/dbdata/beans/media/PlayListData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/transsion/dbdata/beans/media/PlayListData; = null

.field private static final TAG:Ljava/lang/String; = "PlayListData"


# instance fields
.field private isRestored:Z

.field private isRestoredShuffle:Z

.field private mCurrentListSource:Ljava/lang/String;

.field private mCurrentListSourceShuffle:Ljava/lang/String;

.field public mCurrentPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsManualSort:Z

.field private mLastListSource:Ljava/lang/String;

.field private mLastPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayIndex:I

.field private mPlayIndexShuffle:I

.field private mPlayListTitle:Ljava/lang/String;

.field private mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field private mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

.field private mRepeat:Z

.field public mShuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSourceShuffle:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestored:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestoredShuffle:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mRepeat:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/media/PlayListData;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->lambda$setPlayListInternal$0(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/PlayListData;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->lambda$setPlayListInternal$1(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->lambda$setPlayListInternal$2(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method private containsInNewList(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method private filterData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 7
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/beans/media/PlayListData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;-><init>()V

    sput-object v1, Lcom/transsion/dbdata/beans/media/PlayListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayListData;

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
    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayListData;->INSTANCE:Lcom/transsion/dbdata/beans/media/PlayListData;

    return-object v0
.end method

.method private handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 6

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v1

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    add-int/2addr v1, v4

    if-gez v1, :cond_3

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_3
    if-lt v1, v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v2

    if-eqz p1, :cond_7

    move v4, v5

    :cond_7
    add-int/2addr v2, v4

    if-gez v2, :cond_9

    iget-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mRepeat:Z

    if-nez p1, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v3, v0, -0x1

    goto :goto_1

    :cond_9
    if-lt v2, v0, :cond_a

    iget-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mRepeat:Z

    if-nez p1, :cond_b

    return-object v1

    :cond_a
    move v3, v2

    :cond_b
    :goto_1
    if-eqz v0, :cond_e

    if-gez v3, :cond_c

    goto :goto_2

    :cond_c
    if-nez p2, :cond_d

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_d
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p1

    :cond_e
    :goto_2
    return-object v1
.end method

.method private isDiffMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eq p2, v0, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private synthetic lambda$setPlayListInternal$0(Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->containsInNewList(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setPlayListInternal$1(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->containsInNewList(Ljava/util/List;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$setPlayListInternal$2(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private setPlayListInternal(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "PlayListData"

    if-nez p1, :cond_0

    const-string p0, "setPlayListInternal playList is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayList: playList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentPlayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastPlayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentListSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastListSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lhsb;->b()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayList same source,mCurrentPlayList.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lz38;

    invoke-direct {v3, p0, p1}, Lz38;-><init>(Lcom/transsion/dbdata/beans/media/PlayListData;Ljava/util/ArrayList;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, La48;

    invoke-direct {v3, p0}, La48;-><init>(Lcom/transsion/dbdata/beans/media/PlayListData;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    new-instance v1, Lb48;

    invoke-direct {v1}, Lb48;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayList mCurrentPlayList.size()="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Media: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "video_play_list_change"

    invoke-virtual {p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playlist"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "v_playlist_source"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setShuffleList(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p3, "v_shuffle_playlist"

    invoke-virtual {p1, p3, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "v_playlist_shuffle_source"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearCurrentPlayList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayList(Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    return-void
.end method

.method public filterData()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->filterData(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->filterData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListData"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getLastPlayList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getListSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    return-object p0
.end method

.method public getNext()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 5

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v1

    add-int/2addr v1, v4

    if-lt v1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_0
    move-object v3, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v3

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_3

    return-object v3

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v1

    add-int/2addr v1, v4

    if-lt v1, v0, :cond_4

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_3
    move-object v3, p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v3
.end method

.method public getPlayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPlayListFlag()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object p0, v0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play list current flag:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "PlayListData"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getPlayListTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayListTitle:Ljava/lang/String;

    return-object p0
.end method

.method public handleMediaItem(Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 5

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v1, v2

    if-gez v1, :cond_2

    return-object v4

    :cond_2
    if-lt v1, v0, :cond_3

    return-object v4

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    return-object v4

    :cond_5
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result v1

    if-eqz p1, :cond_6

    move v2, v3

    :cond_6
    add-int/2addr v1, v2

    if-gez v1, :cond_7

    return-object v4

    :cond_7
    if-lt v1, v0, :cond_8

    return-object v4

    :cond_8
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public hasNextInList()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->handleMediaItem(Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPreviousInList()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->handleMediaItem(Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCurrentListEmpty()Z
    .locals 4

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method public isManualSort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    return p0
.end method

.method public next()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public playIndex()I
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    :cond_1
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    return p0

    :cond_2
    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    return p0
.end method

.method public playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-static {}, Lhsb;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->copy(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->copy(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object v0
.end method

.method public playNext()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public playPrevious()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public pre()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->handlePlayback(ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/util/List;)I

    move-result p0

    return p0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v3, :cond_3

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-nez v3, :cond_3

    sget-object v3, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v3, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v2, :cond_4

    return v1

    .line 10
    :cond_3
    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return p0
.end method

.method public queryNormalIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public queryShuffleIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized removeMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->removeMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryNormalIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-ne v3, p1, :cond_1

    iput v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-ne v2, p1, :cond_8

    const-string v2, "PlayListData"

    const-string v3, "removeMediaItem: same to current play item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current play item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    if-lt p1, v2, :cond_6

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    :cond_6
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_7
    if-eqz p2, :cond_9

    invoke-static {}, Lhsb;->b()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;->onRemoveResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_4

    :cond_8
    const-string p2, "PlayListData"

    const-string v0, "removeMediaItem: not same to current play item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current play item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryNormalIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    :cond_9
    :goto_4
    const-string p1, "PlayListData"

    const-string p2, "removeMediaItem: "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current play item:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v0, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "video_play_list_change"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "v_playlist"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_a
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "video_play_list_change"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-ne v3, p1, :cond_1

    iput v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-ne v2, p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    if-lt p1, v2, :cond_6

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    :cond_6
    iget p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_7
    if-eqz p2, :cond_9

    invoke-static {}, Lhsb;->b()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {p2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;->onRemoveResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "v_shuffle_playlist"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_a
    :goto_5
    :try_start_1
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string p2, "video_play_list_change"

    invoke-virtual {p1, p2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public restore(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestored:Z

    const-string v1, "PlayListData"

    if-eqz v0, :cond_0

    const-string p0, "video play list has restored,do not need update"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "v_playlist"

    invoke-virtual {v0, v2}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video play list history restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lcom/transsion/dbdata/beans/media/PlayListData$1;

    invoke-direct {v2, p0}, Lcom/transsion/dbdata/beans/media/PlayListData$1;-><init>(Lcom/transsion/dbdata/beans/media/PlayListData;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v6}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playing_item"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_current_playing_media_uri"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restore setPlayMediaItem "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_a
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playlist_source"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayListInternal(Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestored:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "change_minibar_state"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public restoreShuffle(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestoredShuffle:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_shuffle_playlist"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/transsion/dbdata/beans/media/PlayListData$2;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/beans/media/PlayListData$2;-><init>(Lcom/transsion/dbdata/beans/media/PlayListData;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playing_item"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_current_playing_media_uri"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_9
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playlist_shuffle_source"

    invoke-virtual {p1, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSourceShuffle:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setShuffleList(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->isRestoredShuffle:Z

    :cond_a
    return-void
.end method

.method public selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItemShuffle()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public selectedPlayMediaItemShuffle()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSelected(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setListSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    return-void
.end method

.method public setManualSort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    return-void
.end method

.method public setPlayList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setShuffleList(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayListInternal(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public setPlayListTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayListTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayMediaItem(I)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 2

    .line 14
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    .line 17
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    .line 20
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryNormalIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    .line 4
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->isDiffMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_0

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "setPlayMediaItem: "

    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PlayListData"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_playing_item"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v_current_playing_media_uri"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-object p0
.end method

.method public setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryNormalIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->isDiffMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "setPlayMediaItem: "

    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PlayListData"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_playing_item"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v_current_playing_media_uri"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-object p0
.end method

.method public setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->isDiffMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_playing_item"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v_current_playing_media_uri"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-object p0
.end method

.method public setRepeat(Z)Lcom/transsion/dbdata/beans/media/PlayListData;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mRepeat:Z

    return-object p0
.end method

.method public switchList()V
    .locals 3

    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->setShuffleList(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastPlayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mLastListSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayListInternal(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCurrentPlayPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string v1, "v_playing_item"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized updatePlayListOrder(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lhsb;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_shuffle_playlist"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playlist_shuffle_source"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSourceShuffle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItemNotSyncShuffle(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentPlayList:Ljava/util/ArrayList;

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_playlist"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "v_playlist_source"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mCurrentListSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :goto_1
    const/4 p1, 0x1

    :try_start_4
    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mIsManualSort:Z

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "video_play_list_change"

    invoke-virtual {p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public updateShuffleList()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mShuffleList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayMediaItemShuffle:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryShuffleIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayListData;->mPlayIndexShuffle:I

    return-void
.end method
