.class public final Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;
.super Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\u000b\u001a\u00020\n*\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u001b\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0006\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0008J1\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ-\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00062\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008!\u0010\"J\u0013\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006\u00a2\u0006\u0004\u0008#\u0010\u001eJ!\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0006\u00a2\u0006\u0004\u0008$\u0010%J-\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008&\u0010\u001cJ\u0013\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006\u00a2\u0006\u0004\u0008\'\u0010\u001eJ#\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\n\u00a2\u0006\u0004\u0008*\u0010+J5\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0008\u0008\u0002\u0010-\u001a\u00020\n2\u0008\u0008\u0002\u0010.\u001a\u00020\n\u00a2\u0006\u0004\u0008/\u00100J+\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006\u00a2\u0006\u0004\u00082\u00103J\u001d\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u00084\u0010\u0008J\u0013\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006\u00a2\u0006\u0004\u00085\u0010\u001eJ\u0019\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001f06\u00a2\u0006\u0004\u00087\u00108\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;",
        "<init>",
        "()V",
        "",
        "parentPath",
        "",
        "getNotSupportAndHlsVideoFilePath",
        "(Ljava/lang/String;)Ljava/util/List;",
        "Ljava/io/File;",
        "",
        "isValidHlsWithLogging",
        "(Ljava/io/File;)Z",
        "Landroid/net/Uri;",
        "providerUri",
        "()Landroid/net/Uri;",
        "Lxk8$x;",
        "action",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "querySingle",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;",
        "querySingleMV",
        "searchText",
        "searchMVList",
        "",
        "mediaIds",
        "displayName",
        "queryMVList",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "queryAllMVList",
        "()Ljava/util/List;",
        "",
        "bucketId",
        "queryBucketMVList",
        "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;",
        "queryRecentMVList",
        "queryBatchVideoByIds",
        "(Ljava/util/List;)Ljava/util/List;",
        "queryBatchVideoByIdsAndName",
        "queryAllVideo",
        "duration",
        "isLongerThan",
        "queryBatchVideoByDuration",
        "(JZ)Ljava/util/List;",
        "paths",
        "needFileTableVideoQueryCondition",
        "checkFileSuffix",
        "queryBatchVideoByPaths",
        "(Ljava/util/List;ZZ)Ljava/util/List;",
        "mediaItems",
        "queryBatchVideoByParentPath",
        "(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;",
        "searchVideo",
        "queryRecentVideo",
        "Lkotlin/Pair;",
        "getVideoTotalTrack",
        "()Lkotlin/Pair;",
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

.method public static synthetic c(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->getNotSupportAndHlsVideoFilePath$lambda$17(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->querySingleMV$lambda$1(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->getNotSupportAndHlsVideoFilePath$lambda$15(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryRecentVideo$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->searchVideo$lambda$24(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private final getNotSupportAndHlsVideoFilePath(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "/"

    invoke-static {p1, v3, v1, v2, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Luf1;->a:Luf1;

    invoke-virtual {v1}, Luf1;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lhi;->K([Ljava/lang/Object;)Lpc9;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lu9a;

    invoke-direct {v1}, Lu9a;-><init>()V

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lv9a;

    invoke-direct {v1, p0}, Lv9a;-><init>(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;)V

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    move-object v0, p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static final getNotSupportAndHlsVideoFilePath$lambda$15(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method private static final getNotSupportAndHlsVideoFilePath$lambda$17(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lge6;->a:Lge6;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lge6;->f(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->isValidHlsWithLogging(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic h(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByDuration$lambda$9(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryMVList$lambda$3(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private final isValidHlsWithLogging(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Ltr4;->b(Ljava/io/File;)Lqv5;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLS verification failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p1

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    const-string v1, "Unknown error"

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HLS checks for abnormalities ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByPaths$lambda$10(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryAllVideo$lambda$8(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->querySingle$lambda$0(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBucketMVList$lambda$5$lambda$4(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(ZLandroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByPaths$lambda$11(ZLandroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->searchMVList$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryRecentMVList$lambda$6(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIdsAndName$lambda$7(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAllVideo$lambda$8(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchVideoByDuration$lambda$9(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchVideoByIdsAndName$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchVideoByIdsAndName$lambda$7(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchVideoByPaths$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByPaths(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchVideoByPaths$lambda$10(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildFileQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchVideoByPaths$lambda$11(ZLandroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p0

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBucketMVList$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBucketMVList(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBucketMVList$lambda$5$lambda$4(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryMVList$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryMVList$lambda$3(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryRecentMVList$lambda$6(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryRecentVideo$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final querySingle$lambda$0(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final querySingleMV$lambda$1(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final searchMVList$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static final searchVideo$lambda$24(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 8

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildMediaItem$default(Landroid/database/Cursor;Landroid/net/Uri;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getVideoTotalTrack()Lkotlin/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryBatchNoResult(uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") start"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v3

    if-le v0, v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move v8, v5

    move v11, v8

    const-wide/16 v9, 0x0

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") start query"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p0

    :try_start_1
    invoke-static {v12, v0, v1, v8, v3}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v13

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") end query,count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    const/16 v6, 0x8

    invoke-static {v0, v6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    const-wide/16 v16, 0x0

    :goto_2
    add-long v9, v9, v16

    const/4 v6, 0x6

    invoke-static {v0, v6}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    invoke-static {v6, v5, v15, v7}, Lge6;->q(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v6

    if-lt v11, v6, :cond_3

    :cond_6
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v13, v7}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    move v14, v5

    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-static {v13, v6}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    :goto_4
    move v14, v5

    goto :goto_5

    :cond_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") cursor is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v14, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") error:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    add-int/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") ,count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", totalNumber:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pageSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v14, v3, :cond_8

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v11, v0, :cond_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public providerUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lqq3;->b:Lqq3;

    invoke-virtual {p0}, Lqq3;->f()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllMVList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryMVList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllVideo()Ljava/util/List;
    .locals 2
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

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Lx9a;

    invoke-direct {v1}, Lx9a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchVideoByDuration(JZ)Ljava/util/List;
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
    invoke-static {p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toDurationSelection(JZ)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lq9a;

    invoke-direct {p2}, Lq9a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchVideoByIds(Ljava/util/List;)Ljava/util/List;
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

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchVideoByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
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

    invoke-static {p2, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lt9a;

    invoke-direct {p2}, Lt9a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchVideoByParentPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "mediaItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->getNotSupportAndHlsVideoFilePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->queryBatchVideoByPaths$default(Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;Ljava/util/List;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchVideoByPaths(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    const-string v0, "paths"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toDataInSelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Lz9a;

    invoke-direct {p2, p1}, Lz9a;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildFileQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    :goto_0
    new-instance p2, Laaa;

    invoke-direct {p2, p3}, Laaa;-><init>(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Ln9a;

    invoke-direct {p2}, Ln9a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p2

    :cond_1
    return-object p2
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

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lo9a;

    invoke-direct {p2}, Lo9a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryRecentMVList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date_modified > ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    const v3, 0x93a80

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Lw9a;

    invoke-direct {v1}, Lw9a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryRecentVideo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date_modified > ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    const v3, 0x93a80

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Ly9a;

    invoke-direct {v1}, Ly9a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lqq3;->b:Lqq3;

    invoke-virtual {v0}, Lqq3;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;->toQueryBundle(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ls9a;

    invoke-direct {v0}, Ls9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final querySingleMV(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;->toQueryMVBundle(Lxk8$x;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lp9a;

    invoke-direct {v0}, Lp9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

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

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lr9a;

    invoke-direct {v0}, Lr9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final searchVideo(Ljava/lang/String;)Ljava/util/List;
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
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildSearchCondition(Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lm9a;

    invoke-direct {v0}, Lm9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
