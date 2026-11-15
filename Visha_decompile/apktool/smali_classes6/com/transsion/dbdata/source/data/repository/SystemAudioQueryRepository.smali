.class public final Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
.super Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0000\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J@\u0010\u000c\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0010\u0008\u0004\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nH\u0082\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J4\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ4\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\u0008\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ4\u0010!\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\u0008\u00a2\u0006\u0004\u0008!\u0010\u001eJ\u000f\u0010\"\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010&\u001a\u0004\u0018\u00010\u00102\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008*\u0010+JI\u00101\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100)002\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010-\u001a\u00020,2\u0008\u0008\u0002\u0010.\u001a\u00020,2\u0008\u0008\u0002\u0010/\u001a\u00020,\u00a2\u0006\u0004\u00081\u00102J-\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020 0)2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u00085\u00106J)\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00060)2\u0006\u00108\u001a\u00020 \u00a2\u0006\u0004\u00089\u0010:J9\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\u0008\u0010;\u001a\u0004\u0018\u00010\u00062\u0008\u0010<\u001a\u0004\u0018\u00010\u00062\u0008\u00104\u001a\u0004\u0018\u00010\u00062\u0006\u0010=\u001a\u00020 \u00a2\u0006\u0004\u0008>\u0010?J)\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\u0008\u0010;\u001a\u0004\u0018\u00010\u00062\u0008\u0010<\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008@\u0010AJ7\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010D\u001a\u00020,\u00a2\u0006\u0004\u0008E\u0010FJ!\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008G\u0010+J!\u0010I\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\u0008\u0002\u0010H\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008I\u0010+J\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\u0008\u0010J\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008K\u0010+J\u0013\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00100)\u00a2\u0006\u0004\u0008L\u0010MJ\u001b\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00100)2\u0006\u0010N\u001a\u00020 \u00a2\u0006\u0004\u0008O\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;",
        "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;",
        "<init>",
        "()V",
        "",
        "T",
        "",
        "key",
        "",
        "expireTime",
        "Lkotlin/Function0;",
        "producer",
        "getCachedResult",
        "(Ljava/lang/String;JLc74;)Ljava/lang/Object;",
        "Landroid/net/Uri;",
        "uri",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "queryOtherAppAudioItem",
        "(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Landroid/content/ContentResolver;",
        "resolver",
        "readAudioItemFromProviderUri",
        "(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Landroid/database/Cursor;",
        "cursor",
        "column",
        "Lkotlin/Function1;",
        "Lzfb;",
        "consumer",
        "readStringColumn",
        "(Landroid/database/Cursor;Ljava/lang/String;Le74;)V",
        "readLongColumn",
        "",
        "readIntColumn",
        "providerUri",
        "()Landroid/net/Uri;",
        "Lxk8$x;",
        "action",
        "querySingle",
        "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;",
        "sortOrder",
        "",
        "queryAll",
        "(Ljava/lang/String;)Ljava/util/List;",
        "",
        "filtered",
        "needFilter",
        "excludeConvertOutFolder",
        "Lkotlin/Pair;",
        "queryAllOptimized",
        "(Ljava/lang/String;ZZZ)Lkotlin/Pair;",
        "mediaIds",
        "displayName",
        "queryBatchByIdsAndName",
        "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;",
        "pathList",
        "count",
        "queryBatchByPath",
        "(Ljava/util/List;I)Ljava/util/List;",
        "albumName",
        "artistName",
        "flag",
        "queryAIAudioByMultiConditions",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;",
        "queryBatchByAlbumArtist",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "bucketId",
        "parentPath",
        "onlyMusic",
        "queryBatchByBucket",
        "(Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/List;",
        "queryBatchByParentPath",
        "title",
        "queryBatchByTitle",
        "searchText",
        "search",
        "queryRecent",
        "()Ljava/util/List;",
        "filterType",
        "queryByFilterType",
        "(I)Ljava/util/List;",
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
.field private static final CACHE_EXPIRE_TIME:J = 0x7530L

.field public static final Companion:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;

.field private static volatile sharedQueryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;->access$newSharedQueryCache(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->sharedQueryCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;-><init>()V

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryRecent$lambda$40(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->sharedQueryCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$queryOtherAppAudioItem(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryOtherAppAudioItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setSharedQueryCache$cp(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    sput-object p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->sharedQueryCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByBucket$lambda$31(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryOtherAppAudioItem$lambda$1(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->search$lambda$38(Ljava/lang/StringBuilder;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName$lambda$20(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/List;ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByPath$lambda$22(Ljava/util/List;ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private final getCachedResult(Ljava/lang/String;JLc74;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Lc74;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    cmp-long v0, v3, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p4}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    const/4 p4, 0x0

    if-nez p0, :cond_1

    return-object p4

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    new-instance v6, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;

    move-object v0, v6

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;-><init>(JJLkotlin/Pair;)V

    new-instance p2, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;

    invoke-direct {p2, v6, p4}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;-><init>(Ls74;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    :cond_2
    return-object p4
.end method

.method public static synthetic getCachedResult$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;JLc74;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    const-wide/16 p2, 0x7530

    :cond_0
    move-wide v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    sub-long p2, v1, p2

    cmp-long p2, p2, v3

    if-gez p2, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-interface {p4}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_2

    return-object p2

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    new-instance p3, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;-><init>(JJLkotlin/Pair;)V

    new-instance p4, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;

    invoke-direct {p4, p3, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;-><init>(Ls74;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method public static synthetic h(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAllOptimized$lambda$17(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryByFilterType$lambda$43(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static final invalidateCachedSingleQueries()V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;->invalidateCachedSingleQueries()V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByParentPath$lambda$33(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->search$lambda$39(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByAlbumArtist$lambda$29$lambda$27(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByAlbumArtist$lambda$29$lambda$28(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$lambda$16(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryOtherAppAudioItem$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAIAudioByMultiConditions$lambda$26$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByParentPath$lambda$34(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAIAudioByMultiConditions$lambda$26$lambda$24(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryAIAudioByMultiConditions$lambda$26$lambda$25(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryAll$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAll$lambda$15(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryAll$lambda$16(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryAllOptimized$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ZZZILjava/lang/Object;)Lkotlin/Pair;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAllOptimized(Ljava/lang/String;ZZZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final queryAllOptimized$lambda$17(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByAlbumArtist$lambda$29$lambda$27(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByAlbumArtist$lambda$29$lambda$28(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByBucket$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/Long;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByBucket$lambda$31(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByBucket$lambda$32(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByIdsAndName$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByIdsAndName$lambda$20(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

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

.method private static final queryBatchByIdsAndName$lambda$21(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByParentPath$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByParentPath$lambda$33(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByParentPath$lambda$34(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByPath$lambda$22(Ljava/util/List;ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toDataInSelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setLimitedCount(I)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByPath$lambda$23(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic queryBatchByTitle$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByTitle(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final queryBatchByTitle$lambda$35(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryBatchByTitle$lambda$36(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryByFilterType$lambda$42(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryByFilterType$lambda$43(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private final queryOtherAppAudioItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lge6;->a:Lge6;

    invoke-virtual {v1}, Lge6;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->readAudioItemFromProviderUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v2, Ln8a;

    invoke-direct {v2, v0}, Ln8a;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v2, Lo8a;

    invoke-direct {v2}, Lo8a;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    iget p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez p0, :cond_6

    iget-object p0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;->toMediaItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method private static final queryOtherAppAudioItem$lambda$1(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_display_name = ?"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryOtherAppAudioItem$lambda$2(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realUri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private static final queryRecent$lambda$40(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date_modified > ?"

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final queryRecent$lambda$41(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryRecent$lambda$41(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private final readAudioItemFromProviderUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    :try_start_1
    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    return-object v0

    :catchall_0
    move-exception p0

    move-object v6, p1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v6, p1

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_3
    const-string v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_4
    const-string v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_6

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    :cond_6
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_8

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_8
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    move-object v6, v1

    :cond_9
    if-eqz v6, :cond_a

    iput-object v6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_a
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAudioItemFromProviderUri(uri:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object p0

    :goto_4
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw p0
.end method

.method private final readIntColumn(Landroid/database/Cursor;Ljava/lang/String;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final readLongColumn(Landroid/database/Cursor;Ljava/lang/String;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final readStringColumn(Landroid/database/Cursor;Ljava/lang/String;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic s(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByBucket$lambda$32(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method private static final search$lambda$38(Ljava/lang/StringBuilder;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 1

    const-string v0, "$this$buildAudioQueryBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final search$lambda$39(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByTitle$lambda$35(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAIAudioByMultiConditions$lambda$26$lambda$24(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByPath$lambda$23(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$lambda$15(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByIdsAndName$lambda$21(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryBatchByTitle$lambda$36(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryByFilterType$lambda$42(Ljava/lang/String;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public providerUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lat;->b:Lat;

    invoke-virtual {p0}, Lat;->f()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final queryAIAudioByMultiConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x19

    const-string v1, "album"

    const/4 v2, 0x0

    if-eq p4, v0, :cond_1

    const/16 v0, 0x1a

    const-string v3, "artist"

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    move-object p1, v2

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p1, p3}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-static {v3, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string p1, "title"

    invoke-static {p1, p3, v2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v3, p2, v2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, v2}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance p3, Lt8a;

    invoke-direct {p3, p2, p1}, Lt8a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lv8a;

    invoke-direct {p2}, Lv8a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-static {p0, v2, p1, v2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->queryAll$default(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh9a;

    invoke-direct {v0, p1}, Lh9a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lk8a;

    invoke-direct {v0}, Lk8a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryAllOptimized(Ljava/lang/String;ZZZ)Lkotlin/Pair;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;"
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lc9a;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lc9a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMUri(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "queryBatchNoResult(uri:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v4

    if-le v0, v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$getMPageSize(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;)I

    move-result v0

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") start query"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lge6;->a:Lge6;

    invoke-virtual {v0}, Lge6;->g()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-static {v11, v0, v3, v10, v13}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->access$query(Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;Landroid/content/Context;Lcom/transsion/dbdata/source/data/repository/QueryBundle;II)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v8

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") end query,count:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_3
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v4, :cond_f

    const/4 v4, 0x6

    :try_start_4
    invoke-static {v0, v4}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_3
    sget-boolean v4, Lpp3;->A:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v4, :cond_6

    :try_start_5
    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->r()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_6

    if-eqz p2, :cond_4

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    :goto_4
    const/4 v12, 0x0

    goto :goto_6

    :cond_4
    const/16 v12, 0x1c

    const/16 v18, 0x0

    const/4 v7, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v27, v8

    move/from16 v28, v9

    move-wide/from16 v8, v19

    move/from16 v29, v10

    move-wide/from16 v10, v21

    move/from16 v30, v13

    move-object/from16 v13, v18

    :try_start_6
    invoke-static/range {v4 .. v13}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal$default(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v12, v1

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object v7, v0

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v27

    const/4 v12, 0x0

    goto/16 :goto_16

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :goto_6
    move v4, v12

    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_6
    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    goto :goto_5

    :goto_7
    :try_start_7
    sget-object v4, Lge6;->a:Lge6;

    invoke-virtual {v4, v6}, Lge6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-wide/16 v8, -0x1

    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide v10, v4

    goto :goto_8

    :cond_7
    move-wide v10, v8

    :goto_8
    const/4 v4, 0x7

    :try_start_9
    invoke-static {v0, v4}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    const/4 v12, 0x0

    goto :goto_a

    :cond_8
    move-wide v4, v8

    goto :goto_9

    :goto_a
    :try_start_b
    invoke-static {v0, v12}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v19, v13

    goto :goto_d

    :catchall_2
    move-exception v0

    :goto_b
    move-object v7, v0

    move/from16 v4, v16

    move/from16 v5, v17

    :goto_c
    move-object/from16 v6, v27

    goto/16 :goto_16

    :cond_9
    move/from16 v19, v12

    :goto_d
    const/16 v25, 0x20

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v6

    move-wide/from16 v20, v4

    invoke-static/range {v18 .. v26}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->resolveDurationMsForFilter$default(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;ILjava/lang/Object;)J

    move-result-wide v31

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-wide/from16 v20, v10

    move-wide/from16 v22, v31

    move/from16 v24, p2

    move/from16 v25, p3

    move/from16 v26, p4

    invoke-static/range {v18 .. v26}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->shouldPassAudioFilter(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z

    move-result v13

    if-eqz v13, :cond_c

    const-wide/16 v18, 0x0

    cmp-long v13, v31, v18

    if-lez v13, :cond_a

    goto :goto_e

    :cond_a
    cmp-long v13, v4, v18

    if-lez v13, :cond_b

    move-wide/from16 v31, v4

    goto :goto_e

    :cond_b
    move-wide/from16 v31, v8

    :goto_e
    move-object v4, v0

    move-object v5, v14

    move-wide v8, v10

    move-wide/from16 v10, v31

    invoke-static/range {v4 .. v11}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItemInternal(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move v4, v1

    goto :goto_11

    :cond_c
    add-int/lit8 v16, v16, 0x1

    :goto_f
    move v4, v12

    goto :goto_11

    :catchall_3
    move-exception v0

    :goto_10
    const/4 v12, 0x0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    goto :goto_10

    :goto_11
    if-eqz v4, :cond_d

    add-int/lit8 v17, v17, 0x1

    :cond_d
    move/from16 v4, v17

    :try_start_c
    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-lt v4, v5, :cond_e

    move v5, v4

    move/from16 v4, v16

    goto :goto_12

    :cond_e
    move-object/from16 v11, p0

    move/from16 v17, v4

    move-object/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move/from16 v13, v30

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move-object v7, v0

    move v5, v4

    move/from16 v4, v16

    goto/16 :goto_c

    :cond_f
    move-object/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    move/from16 v4, v16

    move/from16 v5, v17

    :goto_12
    :try_start_d
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/4 v0, 0x0

    move-object/from16 v6, v27

    :try_start_e
    invoke-static {v6, v0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :goto_13
    move/from16 v0, v28

    :goto_14
    move/from16 v6, v30

    goto/16 :goto_19

    :catch_0
    move-exception v0

    goto/16 :goto_18

    :catchall_6
    move-exception v0

    move-object/from16 v6, v27

    :goto_15
    move-object v7, v0

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v6, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    move-object v7, v0

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_16

    :catchall_8
    move-exception v0

    move-object v6, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    goto :goto_15

    :catchall_9
    move-exception v0

    move-object v6, v8

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    move-object v7, v0

    move/from16 v28, v12

    :goto_16
    :try_start_f
    throw v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :catchall_a
    move-exception v0

    move-object v8, v0

    :try_start_10
    invoke-static {v6, v7}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catch_1
    move-exception v0

    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    :goto_17
    move/from16 v28, v12

    goto :goto_18

    :cond_10
    move/from16 v29, v10

    move/from16 v30, v13

    const/4 v12, 0x0

    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") cursor is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    move v0, v12

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_17

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :goto_19
    add-int v10, v29, v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") ,count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", totalNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pageSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v6, :cond_12

    invoke-virtual {v3}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->getLimitedCount()I

    move-result v0

    if-lt v5, v0, :cond_11

    goto :goto_1a

    :cond_11
    move v13, v6

    goto/16 :goto_2

    :cond_12
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->getMTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") end"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final queryBatchByAlbumArtist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
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
    const-string p2, "album"

    invoke-static {p2, p1, v0}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

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
    const-string p1, "artist"

    invoke-static {p1, p2, v0}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->buildFieldLikeWithDisplayNameCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

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

    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lw8a;

    invoke-direct {v0, p2, p1}, Lw8a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lx8a;

    invoke-direct {p2}, Lx8a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final queryBatchByBucket(Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "bucket_id = ?"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND is_music = ?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    invoke-static {p1, v0}, Lfi;->A([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p3, :cond_4

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p2, La9a;

    invoke-direct {p2, p3, p1}, La9a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lb9a;

    invoke-direct {p2}, Lb9a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_3
    return-object p2
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
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
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

    new-instance v0, Lr8a;

    invoke-direct {v0, p2, p1}, Lr8a;-><init>(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Ls8a;

    invoke-direct {p2}, Ls8a;-><init>()V

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
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
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

    new-instance v1, Lp8a;

    invoke-direct {v1, v0, p1}, Lp8a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lq8a;

    invoke-direct {v0}, Lq8a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByPath(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const-string v0, "pathList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll8a;

    invoke-direct {v0, p1, p2}, Ll8a;-><init>(Ljava/util/List;I)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance p2, Lm8a;

    invoke-direct {p2}, Lm8a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatchByTitle(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lf9a;

    const-string v1, "title LIKE ? AND is_music = ?"

    invoke-direct {v0, v1, p1}, Lf9a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lg9a;

    invoke-direct {v0}, Lg9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queryByFilterType(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x301

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-wide v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->b:J

    invoke-static {v2, v3, v1}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toSizeSelection(JZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-wide v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->c:J

    invoke-static {v2, v3, v1}, Lcom/transsion/dbdata/source/data/ktx/SqlKt;->toDurationSelection(JZ)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lj8a;

    invoke-direct {v0, p1}, Lj8a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Lu8a;

    invoke-direct {v0}, Lu8a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryRecent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
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

    new-instance v1, Ly8a;

    invoke-direct {v1, v0}, Ly8a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v0

    new-instance v1, Lz8a;

    invoke-direct {v1}, Lz8a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 8

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxk8$x;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    const-wide/16 v4, 0x7530

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lat;->b:Lat;

    invoke-virtual {v1}, Lat;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;->toQueryBundle(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lxk8$x;->f()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$queryOtherAppAudioItem(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->querySingle(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    :goto_0
    const/4 p1, 0x0

    if-nez p0, :cond_3

    :cond_2
    move-object p0, p1

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p0, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->access$getSharedQueryCache$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    new-instance v7, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$getCachedResult$stored$1;-><init>(JJLkotlin/Pair;)V

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;

    invoke-direct {v1, v7, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;-><init>(Ls74;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public final search(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_music = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_display_name LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    filled-new-array {v2, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ld9a;

    invoke-direct {v1, v0, p1}, Ld9a;-><init>(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p1

    new-instance v0, Le9a;

    invoke-direct {v0}, Le9a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;->queryBatch(Lcom/transsion/dbdata/source/data/repository/QueryBundle;Ls74;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
