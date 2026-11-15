.class public final Lcom/transsion/dbdata/utils/SortUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/utils/SortUtil$SortDirection;,
        Lcom/transsion/dbdata/utils/SortUtil$SortType;,
        Lcom/transsion/dbdata/utils/SortUtil$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/dbdata/utils/SortUtil;

.field public static final b:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

.field public static volatile c:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

.field public static volatile d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

.field public static volatile e:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

.field public static volatile f:Lcom/transsion/dbdata/utils/SortUtil$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/utils/SortUtil;

    invoke-direct {v0}, Lcom/transsion/dbdata/utils/SortUtil;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil;->b:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->DESCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil;->c:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sput-object v1, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sput-object v0, Lcom/transsion/dbdata/utils/SortUtil;->e:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    sput-object v1, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final B(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/dbdata/utils/SortUtil;->A(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->b:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    return-object v0
.end method

.method public static final c()Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-object v0
.end method

.method public static final f(Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil;->d()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getMarkPointSortName for isVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SortUtil"

    invoke-static {v1, p0, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "time_descend"

    :goto_1
    return-object p0
.end method

.method public static final g(Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil;->i()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getMarkPointSortName for isVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SortUtil"

    invoke-static {v1, p0, v0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "time_descend"

    return-object p0
.end method

.method public static final j(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/SortUtil;->k()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/SortUtil;->b()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final l()Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-object v0
.end method

.method public static final m()Z
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->e:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final n()Z
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->c:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final o()Z
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final p(Z)V
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->DESCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    :goto_0
    sput-object p0, Lcom/transsion/dbdata/utils/SortUtil;->e:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    return-void
.end method

.method public static final q(I)V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->Companion:Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;->a(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p0

    sput-object p0, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-void
.end method

.method public static final r(Z)V
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->DESCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    :goto_0
    sput-object p0, Lcom/transsion/dbdata/utils/SortUtil;->c:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    return-void
.end method

.method public static final s(I)V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->Companion:Lcom/transsion/dbdata/utils/SortUtil$SortType$a;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;->a(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p0

    sput-object p0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    return-void
.end method

.method public static final t(Ljava/util/List;)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/utils/SortUtil;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final u(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/dbdata/utils/SortUtil;->v(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/dbdata/utils/SortUtil;->v(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Ljava/util/List;Z)Ljava/util/List;
    .locals 2

    const-string v0, "list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/dbdata/utils/SortUtil;->v(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->a:Lcom/transsion/dbdata/utils/SortUtil;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/dbdata/utils/SortUtil;->A(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;
    .locals 2

    :try_start_0
    const-string v0, "java.util.Arrays.useLegacyMergeSort"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->DESCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/utils/SortUtil;->C(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Lcom/transsion/dbdata/utils/SortUtil$SortDirection;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string p2, "SortUtil"

    const-string p3, "sortMediaItem error"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public final C(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Lcom/transsion/dbdata/utils/SortUtil$SortDirection;)Ljava/util/List;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, p0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    const/16 p0, 0xa

    invoke-static {p1, p0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p0}, Lky5;->g(I)I

    move-result p0

    const/16 p2, 0x10

    invoke-static {p0, p2}, Lwn8;->d(II)I

    move-result p0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    sget-object v3, Lcom/transsion/dbdata/utils/SortUtil;->b:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    const-string v4, "data"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->getPlayCount(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    if-eq p0, v1, :cond_3

    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$2;

    invoke-direct {p0, p2}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$2;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$1;

    invoke-direct {p0, p2}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$1;-><init>(Ljava/util/Map;)V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$12;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$12;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    :goto_2
    move-object p1, p0

    goto/16 :goto_3

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$11;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$11;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :pswitch_1
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_8

    if-ne p0, v0, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$10;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$10;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$9;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$9;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_a

    if-ne p0, v0, :cond_9

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$8;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$8;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$7;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$7;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_c

    if-ne p0, v0, :cond_b

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$6;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$6;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$5;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$5;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_e

    if-ne p0, v0, :cond_d

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$c;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$c;-><init>()V

    new-instance p2, Lcom/transsion/dbdata/utils/SortUtil$sam$java_util_Comparator$0;

    invoke-direct {p2, p0}, Lcom/transsion/dbdata/utils/SortUtil$sam$java_util_Comparator$0;-><init>(Ls74;)V

    invoke-static {p1, p2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$b;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$b;-><init>()V

    new-instance p2, Lcom/transsion/dbdata/utils/SortUtil$sam$java_util_Comparator$0;

    invoke-direct {p2, p0}, Lcom/transsion/dbdata/utils/SortUtil$sam$java_util_Comparator$0;-><init>(Ls74;)V

    invoke-static {p1, p2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$a;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v1, :cond_10

    if-ne p0, v0, :cond_f

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$4;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$4;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_10
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$3;

    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$unifiedSortMediaItem$$inlined$sortByDirection$3;-><init>()V

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, " DESC "

    const-string v2, " ASC "

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    const-string v3, "date_modified DESC "

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p0, v0, :cond_a

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cd_track_number"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v1, v2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_size"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_7

    move-object v1, v2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_display_name"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_9

    move-object v1, v2

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "date_modified"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    :goto_0
    return-object v3
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "time_descend"

    const-string v3, "time_ascend"

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_a

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    const-string v2, "manually"

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    const-string v2, "frequency_ascend"

    goto :goto_1

    :cond_2
    const-string v2, "frequency_descend"

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    const-string v2, "duration_ascend"

    goto :goto_1

    :cond_4
    const-string v2, "duration_descend"

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    const-string v2, "size_ascend"

    goto :goto_1

    :cond_6
    const-string v2, "size_descend"

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    const-string v2, "name_ascend"

    goto :goto_1

    :cond_8
    const-string v2, "name_descend"

    goto :goto_1

    :cond_9
    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    return-object v2
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->m()Z

    move-result p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->f:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    const-string v2, "size_descend"

    const-string v3, "size_ascend"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    move-object v2, v3

    :cond_0
    return-object v2

    :cond_1
    const-string p0, "manually"

    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "frequency_ascend"

    goto :goto_0

    :cond_3
    const-string p0, "frequency_descend"

    :goto_0
    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    const-string p0, "duration_ascend"

    goto :goto_1

    :cond_5
    const-string p0, "duration_descend"

    :goto_1
    return-object p0

    :cond_6
    if-eqz p0, :cond_7

    move-object v2, v3

    :cond_7
    return-object v2

    :cond_8
    if-eqz p0, :cond_9

    const-string p0, "name_ascend"

    goto :goto_2

    :cond_9
    const-string p0, "name_descend"

    :goto_2
    return-object p0

    :cond_a
    if-eqz p0, :cond_b

    const-string p0, "time_ascend"

    goto :goto_3

    :cond_b
    const-string p0, "time_descend"

    :goto_3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "time_descend"

    const-string v3, "time_ascend"

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eqz p0, :cond_9

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, "frequency_ascend"

    goto :goto_1

    :cond_1
    const-string v2, "frequency_descend"

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    const-string v2, "duration_ascend"

    goto :goto_1

    :cond_3
    const-string v2, "duration_descend"

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    const-string v2, "size_ascend"

    goto :goto_1

    :cond_5
    const-string v2, "size_descend"

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    const-string v2, "name_ascend"

    goto :goto_1

    :cond_7
    const-string v2, "name_descend"

    goto :goto_1

    :cond_8
    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    return-object v2
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v1, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    const-string v2, "size_descend"

    const-string v3, "size_ascend"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    move-object v2, v3

    :cond_0
    return-object v2

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "frequency_ascend"

    goto :goto_0

    :cond_2
    const-string p0, "frequency_descend"

    :goto_0
    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    const-string p0, "duration_ascend"

    goto :goto_1

    :cond_4
    const-string p0, "duration_descend"

    :goto_1
    return-object p0

    :cond_5
    if-eqz p0, :cond_6

    move-object v2, v3

    :cond_6
    return-object v2

    :cond_7
    if-eqz p0, :cond_8

    const-string p0, "name_ascend"

    goto :goto_2

    :cond_8
    const-string p0, "name_descend"

    :goto_2
    return-object p0

    :cond_9
    if-eqz p0, :cond_a

    const-string p0, "time_ascend"

    goto :goto_3

    :cond_a
    const-string p0, "time_descend"

    :goto_3
    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil;->d:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, " DESC "

    const-string v2, " ASC "

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "date_modified DESC "

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, v2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_size"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v1, v2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_display_name"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p0

    if-eqz p0, :cond_7

    move-object v1, v2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "date_modified"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final v(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Z)Ljava/util/List;
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->ASCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/transsion/dbdata/utils/SortUtil$SortDirection;->DESCENDING:Lcom/transsion/dbdata/utils/SortUtil$SortDirection;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/utils/SortUtil;->C(Ljava/util/List;Lcom/transsion/dbdata/utils/SortUtil$SortType;Lcom/transsion/dbdata/utils/SortUtil$SortDirection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final y(Ljava/util/List;)Ljava/util/List;
    .locals 6

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lvna;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->createGroupHeaderItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_4
    :goto_1
    return-object p1
.end method
