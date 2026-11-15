.class public final Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010JA\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00080\u0013*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00080\u0013H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00080\u0013H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ)\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0008\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008 \u0010!J)\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0008\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010!R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010%\u001a\u0004\u00080\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010%\u001a\u0004\u00085\u00106R\u0018\u0010:\u001a\u00020\u0007*\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;",
        "",
        "<init>",
        "()V",
        "Lxk8$h;",
        "action",
        "",
        "",
        "",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "processAudioBuckets",
        "(Lxk8$h;)Ljava/util/Map;",
        "",
        "isAtLeastQ",
        "()Z",
        "processAlbumBuckets",
        "()Ljava/util/Map;",
        "processArtistBuckets",
        "keyAsTheName",
        "Lkotlin/Pair;",
        "",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "toMediaBuckets",
        "(Ljava/util/Map;Z)Lkotlin/Pair;",
        "bucket",
        "item",
        "Lzfb;",
        "queryAudioItemCover",
        "(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "processVideoBuckets",
        "()Lkotlin/Pair;",
        "processVideoBuckets2",
        "queryAudioBucketList",
        "(Lxk8$h;)Lkotlin/Pair;",
        "queryVideoBucketList",
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository$delegate",
        "Lyi5;",
        "getMAudioQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "mAudioQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository$delegate",
        "getMAudioMVRepository",
        "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;",
        "mAudioMVRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository$delegate",
        "getMVideoQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "mVideoQueryRepository",
        "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository$delegate",
        "getMFileQueryRepository",
        "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "mFileQueryRepository",
        "getBucketKey",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;",
        "bucketKey",
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
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

.field private static final mAudioMVRepository$delegate:Lyi5;

.field private static final mAudioQueryRepository$delegate:Lyi5;

.field private static final mFileQueryRepository$delegate:Lyi5;

.field private static final mVideoQueryRepository$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    new-instance v0, Lsb6;

    invoke-direct {v0}, Lsb6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioQueryRepository$delegate:Lyi5;

    new-instance v0, Ltb6;

    invoke-direct {v0}, Ltb6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioMVRepository$delegate:Lyi5;

    new-instance v0, Lub6;

    invoke-direct {v0}, Lub6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mVideoQueryRepository$delegate:Lyi5;

    new-instance v0, Lvb6;

    invoke-direct {v0}, Lvb6;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mFileQueryRepository$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mVideoQueryRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processVideoBuckets2$lambda$21$lambda$19(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mFileQueryRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processVideoBuckets$lambda$15$lambda$14$lambda$12(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processVideoBuckets2$lambda$17(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final getBucketKey(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->isAtLeastQ()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    const-string p1, "parentPath"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private final getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioMVRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    return-object p0
.end method

.method private final getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mAudioQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    return-object p0
.end method

.method private final getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mFileQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    return-object p0
.end method

.method private final getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->mVideoQueryRepository$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    return-object p0
.end method

.method private final isAtLeastQ()Z
    .locals 0
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1d
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static final mAudioMVRepository_delegate$lambda$1()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final mAudioQueryRepository_delegate$lambda$0()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mFileQueryRepository_delegate$lambda$3()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;-><init>()V

    return-object v0
.end method

.method private static final mVideoQueryRepository_delegate$lambda$2()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;-><init>()V

    return-object v0
.end method

.method private final processAlbumBuckets()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final processArtistBuckets()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final processAudioBuckets(Lxk8$h;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lxk8$h;->a()I

    move-result v0

    const/16 v1, 0x107

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMAudioQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v3, v1

    move v4, v0

    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1}, Lxk8$h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMAudioMVRepository()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;->queryAllMVList(Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterMVAudio(Ljava/util/List;ZZ)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v2, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object v2, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getBucketKey(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private final processVideoBuckets()Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAll()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5, v4, v4, v3}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllVideo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5, v4, v3, v3}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Loa1;->f()I

    move-result v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v7, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v0, :cond_6

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    new-instance v7, Lrb6;

    invoke-direct {v7, v1}, Lrb6;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {v6, v7}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toVideoBucket(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v7

    iget-wide v8, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v8, v8

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    iget-object v8, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/2addr v6, v3

    iput v6, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto :goto_2

    :cond_9
    invoke-static {v5}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate$processVideoBuckets$$inlined$compareBy$1;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate$processVideoBuckets$$inlined$compareBy$1;-><init>()V

    invoke-static {p0, v1}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final processVideoBuckets$lambda$15$lambda$14$lambda$12(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 2

    const-string v0, "$this$toVideoBucket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final processVideoBuckets2()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/dbdata/utils/FolderLabelUtils;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Loa1;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMVideoQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;

    move-result-object v3

    new-instance v4, Lpb6;

    invoke-direct {v4, v2}, Lpb6;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v3, v0, v4}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBuckets(ILe74;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v4, v0, :cond_7

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->getMFileQueryRepository()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllVideo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v7, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, ""

    :cond_1
    invoke-static {v7, v5, v5, v1}, Lcom/transsion/dbdata/source/data/ktx/FileValidExtKt;->isValidVideoFilePath(Ljava/lang/String;ZZZ)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lt v7, v0, :cond_4

    const/4 v6, 0x0

    move-object v7, v6

    goto :goto_2

    :cond_4
    new-instance v7, Lqb6;

    invoke-direct {v7, v2}, Lqb6;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {v4, v7}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toVideoBucket(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/2addr v4, v1

    iput v4, v7, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto :goto_1

    :cond_7
    invoke-static {v3}, Landroidx/core/util/SparseArrayKt;->valueIterator(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lzc9;->g(Ljava/util/Iterator;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate$processVideoBuckets2$$inlined$compareBy$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate$processVideoBuckets2$$inlined$compareBy$1;-><init>()V

    invoke-static {p0, v0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final processVideoBuckets2$lambda$17(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 2

    const-string v0, "$this$queryBuckets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final processVideoBuckets2$lambda$21$lambda$19(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/dbdata/beans/media/MediaBucket;)Lzfb;
    .locals 2

    const-string v0, "$this$toVideoBucket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setIndex(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final queryAudioItemCover(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v0}, Lsl;->getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-nez v0, :cond_2

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method private final toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toAudioBucket(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v3

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    invoke-direct {v0, v3, v2}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->queryAudioItemCover(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toMediaBuckets$default(Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final queryAudioBucketList(Lxk8$h;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$h;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$h;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lxk8$h;->a()I

    move-result v0

    const/16 v2, 0x107

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processAlbumBuckets()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processArtistBuckets()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->toMediaBuckets(Ljava/util/Map;Z)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :cond_1
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processAudioBuckets(Lxk8$h;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v3, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->toMediaBuckets$default(Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryVideoBucketList(Lxk8$h;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk8$h;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$h;->a()I

    move-result p1

    const/16 v0, 0x101

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->processVideoBuckets()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
