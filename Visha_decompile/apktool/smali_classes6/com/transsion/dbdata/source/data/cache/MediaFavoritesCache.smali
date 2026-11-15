.class public final Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0005\u0018\u0000 32\u00020\u0001:\u00013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006*\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\r\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u001f\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0019\u0010\u001dJ%\u0010!\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010$\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010%R\u001b\u0010,\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R8\u00100\u001a&\u0012\u000c\u0012\n .*\u0004\u0018\u00010\u00080\u0008 .*\u0012\u0012\u000c\u0012\n .*\u0004\u0018\u00010\u00080\u0008\u0018\u00010/0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R8\u00102\u001a&\u0012\u000c\u0012\n .*\u0004\u0018\u00010\u00080\u0008 .*\u0012\u0012\u000c\u0012\n .*\u0004\u0018\u00010\u00080\u0008\u0018\u00010/0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00101\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;",
        "",
        "<init>",
        "()V",
        "Lzfb;",
        "syncMediaFavorites",
        "",
        "Lhp3;",
        "Lcom/transsion/dbdata/database/SimpleMediaItem;",
        "groupByToSimpleItems",
        "(Ljava/util/List;)Ljava/util/List;",
        "init",
        "clear",
        "",
        "path",
        "",
        "fromVideo",
        "isFavorite",
        "(Ljava/lang/String;Z)Z",
        "(Ljava/lang/String;)Z",
        "isVideoFavorite",
        "isAudioFavorite",
        "mediaItem",
        "addFavorite",
        "(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V",
        "removeFavorite",
        "(Ljava/lang/String;Z)V",
        "",
        "mediaId",
        "(IZ)V",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "oldMediaItem",
        "newMediaItem",
        "updateFavorite",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mVideoFavoritesLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "mAudioFavoritesLock",
        "Lf68;",
        "mPlayListMediaDao$delegate",
        "Lyi5;",
        "getMPlayListMediaDao",
        "()Lf68;",
        "mPlayListMediaDao",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "mVideoFavorites",
        "Ljava/util/Set;",
        "mAudioFavorites",
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
.field public static final Companion:Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaFavoritesCacheManager"


# instance fields
.field private final mAudioFavorites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/dbdata/database/SimpleMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mPlayListMediaDao$delegate:Lyi5;

.field private final mVideoFavorites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/dbdata/database/SimpleMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Llf6;

    invoke-direct {v0}, Llf6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mPlayListMediaDao$delegate:Lyi5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(ILcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite$lambda$17$lambda$15(ILcom/transsion/dbdata/database/SimpleMediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->updateFavorite$lambda$21$lambda$19(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c()Lf68;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mPlayListMediaDao_delegate$lambda$0()Lf68;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite$lambda$14$lambda$12(Ljava/lang/String;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite$lambda$14$lambda$13(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->updateFavorite$lambda$21$lambda$20(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->removeFavorite$lambda$17$lambda$16(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final getMPlayListMediaDao()Lf68;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mPlayListMediaDao$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf68;

    return-object p0
.end method

.method private final groupByToSimpleItems(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhp3;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/SimpleMediaItem;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lhp3;

    invoke-virtual {v1}, Lhp3;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhp3;

    new-instance v1, Lcom/transsion/dbdata/database/SimpleMediaItem;

    invoke-virtual {v0}, Lhp3;->a()I

    move-result v2

    invoke-virtual {v0}, Lhp3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/transsion/dbdata/database/SimpleMediaItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private static final mPlayListMediaDao_delegate$lambda$0()Lf68;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object v0

    return-object v0
.end method

.method private static final removeFavorite$lambda$14$lambda$12(Ljava/lang/String;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final removeFavorite$lambda$14$lambda$13(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeFavorite$lambda$17$lambda$15(ILcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final removeFavorite$lambda$17$lambda$16(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final syncMediaFavorites()V
    .locals 9

    const-string v0, "MediaFavoritesCacheManager"

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string v1, "Start sync favorites info from db(media_playlist_item)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->getMPlayListMediaDao()Lf68;

    move-result-object v1

    invoke-interface {v1}, Lf68;->getFavoriteAudioMediaPathsGroup()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->groupByToSimpleItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->getMPlayListMediaDao()Lf68;

    move-result-object v2

    invoke-interface {v2}, Lf68;->getFavoriteVideoMediaPathsGroup()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->groupByToSimpleItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v1, v2}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Finish sync favorites,and start updating the cache"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    move v8, v7

    :goto_3
    if-ge v8, v6, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    if-ge v7, v6, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_5
    if-ge v7, v6, :cond_4

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_5
    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Lzfb;

    const-string v1, "Success to sync favorites"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v1, "Failed to sync favorites"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method private static final updateFavorite$lambda$21$lambda$19(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/SimpleMediaItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaPath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final updateFavorite$lambda$21$lambda$20(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V
    .locals 4

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final init()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->syncMediaFavorites()V

    return-void
.end method

.method public final isAudioFavorite(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    const-string v0, "mAudioFavorites"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/SimpleMediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isFavorite(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isVideoFavorite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isAudioFavorite(Ljava/lang/String;)Z

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

.method public final isFavorite(Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isVideoFavorite(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->isAudioFavorite(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isVideoFavorite(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    const-string v0, "mVideoFavorites"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/SimpleMediaItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final removeFavorite(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    :try_start_0
    new-instance v3, Lhf6;

    invoke-direct {v3, p1}, Lhf6;-><init>(I)V

    new-instance p1, Lif6;

    invoke-direct {p1, v3}, Lif6;-><init>(Le74;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v2, v1, :cond_3

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final removeFavorite(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V
    .locals 4

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v2, v1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final removeFavorite(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 11
    :try_start_0
    new-instance v3, Lmf6;

    invoke-direct {v3, p1}, Lmf6;-><init>(Ljava/lang/String;)V

    new-instance p1, Lnf6;

    invoke-direct {p1, v3}, Lnf6;-><init>(Le74;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-ge v2, v1, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    :goto_4
    if-ge v2, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public final updateFavorite(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 6

    const-string v0, "oldMediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newMediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mVideoFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p3, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavorites:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;->mAudioFavoritesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p3, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/SimpleMediaItem;

    invoke-virtual {v4}, Lcom/transsion/dbdata/database/SimpleMediaItem;->getMediaPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljf6;

    invoke-direct {v3, p1}, Ljf6;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    new-instance p1, Lkf6;

    invoke-direct {p1, v3}, Lkf6;-><init>(Le74;)V

    invoke-interface {p3, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p1, Lcom/transsion/dbdata/database/SimpleMediaItem;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {p2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v3, p2}, Lcom/transsion/dbdata/database/SimpleMediaItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_5
    if-ge v2, v1, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
