.class public final Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;
.super Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J1\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ)\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008!\u0010\nJ-\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010$\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\'\u0010\u0017J\u001f\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008)\u0010\u0017J\u0013\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008*\u0010\u0019J\u0017\u0010+\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008+\u0010\u0014J\u0019\u0010+\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008,\u0010\u000eJ!\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0007\u00a2\u0006\u0004\u0008-\u0010.J!\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0007\u00a2\u0006\u0004\u0008/\u0010.J\u0013\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u00080\u0010\u0019J/\u00107\u001a\u0008\u0012\u0004\u0012\u000203062\u0006\u00101\u001a\u00020\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020402\u00a2\u0006\u0004\u00087\u00108J#\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u00109\u001a\u00020\"2\u0006\u0010;\u001a\u00020:\u00a2\u0006\u0004\u0008<\u0010=J-\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008>\u0010\u001eJ+\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008?\u0010&J!\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008@\u0010\u0017J\u001d\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008A\u0010\u0017J\u0013\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008B\u0010\u0019J\u0019\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\"0C\u00a2\u0006\u0004\u0008D\u0010EJ\u0013\u0010G\u001a\u0008\u0012\u0004\u0012\u00020F0\u0007\u00a2\u0006\u0004\u0008G\u0010\u0019\u00a8\u0006H"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;",
        "<init>",
        "()V",
        "",
        "primaryConditionClause",
        "primaryConditionArg",
        "",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "queryMVListByPrimaryCondition",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "Landroid/net/Uri;",
        "uri",
        "queryOtherAppVideoItem",
        "(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "providerUri",
        "()Landroid/net/Uri;",
        "Lxk8$x;",
        "action",
        "querySingleMV",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "searchText",
        "searchMVList",
        "(Ljava/lang/String;)Ljava/util/List;",
        "queryAllMVList",
        "()Ljava/util/List;",
        "",
        "mediaIds",
        "displayName",
        "queryMVList",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "albumName",
        "artistName",
        "queryAlbumArtistMVList",
        "",
        "bucketId",
        "parentPath",
        "queryBucketMVList",
        "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;",
        "queryParentPathMVList",
        "title",
        "queryTitleMVList",
        "queryRecentMVList",
        "querySingle",
        "querySingle$dbdata_release",
        "queryBatchByIds",
        "(Ljava/util/List;)Ljava/util/List;",
        "queryWhatsAppMedias",
        "queryAll",
        "limitedCount",
        "Lkotlin/Function1;",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lzfb;",
        "indexUpdate",
        "Landroid/util/SparseArray;",
        "queryBuckets",
        "(ILe74;)Landroid/util/SparseArray;",
        "duration",
        "",
        "isLongerThan",
        "queryBatchByDuration",
        "(JZ)Ljava/util/List;",
        "queryBatchByIdsAndName",
        "queryBatchByBucket",
        "queryBatchByParentPath",
        "search",
        "queryRecent",
        "Lkotlin/Pair;",
        "getVideoTotalTrack",
        "()Lkotlin/Pair;",
        "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;",
        "getVideoInfoTrack",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;-><init>()V

    return-void
.end method

.method public static synthetic c(JZLcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByDuration$lambda$20(JZLcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->search$lambda$28(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByDuration$lambda$21(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName$lambda$23(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByParentPath$lambda$27(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingle$lambda$11(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingle$lambda$12(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAllMVList$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryOtherAppVideoItem$lambda$8(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingle$lambda$13(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName$lambda$22(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryOtherAppVideoItem$lambda$9(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->searchMVList$lambda$1(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVList$lambda$3(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->search$lambda$29(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAll$lambda$16(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAllMVList$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByBucket$default(Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByBucket$lambda$24(Ljava/lang/Long;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket_id = ?"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {}, Loa1;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setLimitedCount(I)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByBucket$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByDuration$lambda$20(JZLcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toDurationSelection(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByDuration$lambda$21(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByIdsAndName$default(Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByIdsAndName$lambda$22(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    check-cast p1, Ljava/util/Collection;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByIdsAndName$lambda$23(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByParentPath$default(Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByParentPath$lambda$26(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date_modified DESC"

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByParentPath$lambda$27(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBucketMVList$default(Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBuckets$lambda$17(ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setLimitedCount(I)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic queryMVList$default(Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryMVList$lambda$3(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private final queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lzaa;

    invoke-direct {p2}, Lzaa;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryMVListByPrimaryCondition$lambda$7(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private final queryOtherAppVideoItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lgba;

    invoke-direct {v0, p1}, Lgba;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Lhba;

    invoke-direct {v1}, Lhba;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;->toMediaItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static final queryOtherAppVideoItem$lambda$8(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setUri(Landroid/net/Uri;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryOtherAppVideoItem$lambda$9(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryRecent$lambda$30(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date_modified > ?"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {}, Loa1;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setLimitedCount(I)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryRecent$lambda$31(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final querySingle$lambda$11(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final querySingle$lambda$12(Landroid/net/Uri;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setUri(Landroid/net/Uri;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final querySingle$lambda$13(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final querySingleMV$lambda$0(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBuckets$lambda$17(ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->querySingleMV$lambda$0(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final search$lambda$28(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildVideoQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    check-cast p1, Ljava/util/Collection;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final search$lambda$29(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final searchMVList$lambda$1(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition$lambda$7(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByParentPath$lambda$26(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryRecent$lambda$31(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByBucket$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryAll$lambda$16(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/Long;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByBucket$lambda$24(Ljava/lang/Long;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryRecent$lambda$30(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getVideoInfoTrack()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryBatchNoResult(uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") start"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v6

    if-le v0, v6, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") start query"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, p0

    :try_start_1
    invoke-static {v11, v0, v4, v9, v6}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v12

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v3, ") end query,count:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x6

    invoke-static {v0, v14}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v8, v15, v2}, Lge6;->q(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v14, :cond_4

    :try_start_5
    invoke-static {v3}, Lav3;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v14, v0

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    :goto_2
    const/4 v3, 0x1

    if-eqz v14, :cond_5

    add-int/2addr v10, v3

    :cond_5
    :try_start_6
    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v14

    if-lt v10, v14, :cond_3

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object v14, v0

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    :goto_4
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v12, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v14, v0

    move v13, v8

    :goto_5
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v15, v0

    :try_start_9
    invoke-static {v12, v14}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    :goto_6
    move v13, v8

    goto :goto_7

    :cond_7
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") cursor is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v13, v8

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_6

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    add-int/2addr v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ") ,count:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", totalNumber:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", pageSize:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v13, v6, :cond_8

    invoke-virtual {v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v10, v0, :cond_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v4, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;

    invoke-direct {v4, v3, v2}, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    return-object v0
.end method

.method public final getVideoTotalTrack()Lkotlin/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryBatchNoResult(uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") start"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v5

    if-le v0, v5, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    move v10, v7

    move v13, v10

    const-wide/16 v11, 0x0

    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") start query"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v14, p0

    :try_start_1
    invoke-static {v14, v0, v3, v10, v5}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v15, v0

    check-cast v15, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v15

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    const-string v2, ") end query,count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    :try_start_6
    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v0

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x0

    goto :goto_a

    :cond_3
    const-wide/16 v1, 0x0

    :goto_4
    add-long/2addr v11, v1

    const/4 v1, 0x6

    :try_start_8
    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v9, 0x0

    invoke-static {v1, v7, v2, v9}, Lge6;->q(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    add-int/2addr v13, v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    :try_start_9
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-lt v13, v2, :cond_2

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-object v9, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x1

    :goto_7
    :try_start_a
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v2, 0x0

    :try_start_b
    invoke-static {v15, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_8
    const/4 v2, 0x0

    :goto_9
    move-object v9, v0

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v1, 0x1

    goto :goto_8

    :catchall_5
    move-exception v0

    const/4 v1, 0x1

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v9, v0

    move v8, v7

    :goto_a
    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    move-object/from16 v16, v0

    :try_start_d
    invoke-static {v15, v9}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v16
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_1
    move-exception v0

    :goto_b
    move v8, v7

    goto :goto_c

    :cond_6
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") cursor is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move v8, v7

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_b

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") error:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    add-int/2addr v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") ,count:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", totalNumber:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pageSize:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v8, v5, :cond_8

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v13, v0, :cond_7

    goto :goto_e

    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public providerUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lqtb;->b:Lqtb;

    invoke-virtual {p0}, Lqtb;->f()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final queryAlbumArtistMVList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "album LIKE ?"

    invoke-static {p2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "artist LIKE ?"

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final queryAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Laba;

    invoke-direct {v1}, Laba;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllMVList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Lpba;

    invoke-direct {v1}, Lpba;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lwaa;

    invoke-direct {p2, p1}, Lwaa;-><init>(Ljava/lang/Long;)V

    invoke-static {p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lxaa;

    invoke-direct {p2}, Lxaa;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByDuration(JZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lbba;

    invoke-direct {v0, p1, p2, p3}, Lbba;-><init>(JZ)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lcba;

    invoke-direct {p2}, Lcba;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByIds(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
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
    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildIdsAndNameCondition(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lmba;

    invoke-direct {v0, p2, p1}, Lmba;-><init>(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lnba;

    invoke-direct {p2}, Lnba;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByParentPath(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    const-string v0, "relative_path = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "_data LIKE ?"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v1, Liba;

    invoke-direct {v1, v0, p1}, Liba;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Ljba;

    invoke-direct {v0}, Ljba;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

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
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "bucket_id = ?"

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public final queryBuckets(ILe74;)Landroid/util/SparseArray;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le74;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, "indexUpdate"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Lyaa;

    move/from16 v3, p1

    invoke-direct {v0, v3}, Lyaa;-><init>(I)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryBatchNoResult(uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") start"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v5

    if-le v0, v5, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") start query"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v10, p0

    :try_start_1
    invoke-static {v10, v0, v3, v8, v5}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") end query,count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_a

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v13, :cond_2

    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v0

    move/from16 v16, v8

    goto/16 :goto_9

    :cond_2
    const/4 v13, -0x1

    :goto_4
    :try_start_5
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/dbdata/beans/media/MediaBucket;

    const/4 v15, 0x6

    invoke-static {v0, v15}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v15

    if-nez v13, :cond_6

    invoke-static {v0, v4, v7, v1}, Lcom/transsion/dbdata/source/data/ktx/MediaBucketExtKt;->toVideoBucket(Landroid/database/Cursor;Landroid/net/Uri;ZLe74;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v13, :cond_4

    move/from16 v16, v8

    :try_start_6
    iget-wide v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v7, v7

    invoke-virtual {v2, v7, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_6

    :cond_3
    iget-object v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object v7, v0

    goto :goto_9

    :cond_4
    move/from16 v16, v8

    move-object v13, v14

    :cond_5
    :goto_6
    if-eqz v13, :cond_8

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    move/from16 v16, v8

    goto :goto_5

    :cond_6
    move/from16 v16, v8

    if-eqz v15, :cond_8

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_7

    :cond_7
    iget-object v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v13, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    :cond_8
    :goto_7
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v7

    if-lt v9, v7, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v8, v16

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v16, v8

    :goto_8
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v11, v14}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    move/from16 v16, v8

    move-object v7, v0

    const/4 v12, 0x0

    :goto_9
    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v8, v0

    :try_start_9
    invoke-static {v11, v7}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    :goto_a
    move/from16 v16, v8

    :goto_b
    const/4 v12, 0x0

    goto :goto_c

    :cond_b
    move/from16 v16, v8

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") cursor is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const/4 v12, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_a

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") error:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    add-int v8, v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") ,count:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", totalNumber:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pageSize:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v5, :cond_d

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v9, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") end"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildIdsAndNameCondition(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lkba;

    invoke-direct {p2}, Lkba;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryParentPathMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "relative_path = ?"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_data LIKE ?"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final queryRecent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const v2, 0x93a80

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltaa;

    invoke-direct {v1, v0}, Ltaa;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Luaa;

    invoke-direct {v1}, Luaa;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryRecentMVList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const v2, 0x93a80

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date_modified > ?"

    invoke-direct {p0, v1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lqtb;->b:Lqtb;

    invoke-virtual {v0}, Lqtb;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;->toQueryBundle(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Llba;

    invoke-direct {p1}, Llba;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lxk8$x;->f()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryOtherAppVideoItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle$dbdata_release(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsaa;

    invoke-direct {v0, p1}, Lsaa;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Ldba;

    invoke-direct {v0}, Ldba;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;->toQueryMVBundle(Lxk8$x;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Loba;

    invoke-direct {v0}, Loba;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final queryTitleMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "title LIKE ?"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->queryMVListByPrimaryCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryWhatsAppMedias(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lykc;->a()Lykc;

    move-result-object p0

    invoke-virtual {p0}, Lykc;->b()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final search(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildSearchCondition(Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Leba;

    invoke-direct {v1, v0, p1}, Leba;-><init>(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lfba;

    invoke-direct {v0}, Lfba;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final searchMVList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "searchText"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildSearchCondition$default(Ljava/lang/String;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lvaa;

    invoke-direct {v0}, Lvaa;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
