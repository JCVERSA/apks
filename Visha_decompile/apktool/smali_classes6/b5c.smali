.class public final Lb5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt4c;

    invoke-direct {v0}, Lt4c;-><init>()V

    const-class v1, Lxk8$c;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v0, Lu4c;

    invoke-direct {v0}, Lu4c;-><init>()V

    const-class v1, Lxk8$i;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v0, Lv4c;

    invoke-direct {v0}, Lv4c;-><init>()V

    const-class v1, Lxk8$o;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v0, Lw4c;

    invoke-direct {v0}, Lw4c;-><init>()V

    const-class v1, Lxk8$u;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v0, Lx4c;

    invoke-direct {v0}, Lx4c;-><init>()V

    const-class v1, Lxk8$w;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v0, Ly4c;

    invoke-direct {v0}, Ly4c;-><init>()V

    const-class v1, Lxk8$j;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v0, Lz4c;

    invoke-direct {v0}, Lz4c;-><init>()V

    const-class v1, Lxk8$p;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v0, La5c;

    invoke-direct {v0}, La5c;-><init>()V

    const-class v1, Lxk8$q;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb5c;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->r(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->o(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->k(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->p(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->n(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->l(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->m(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lb5c;->q(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$c;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryAllMediaList(Lxk8$c;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$i;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryBucketMediaList(Lxk8$i;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final m(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$o;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryMediaListByMediaIds(Lxk8$o;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final n(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$u;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryPlayListMedia(Lxk8$u;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final o(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$w;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->search(Lxk8$w;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final p(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$j;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryConvertingVideoList(Lxk8$j;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final q(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$p;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryParentPathMediaList(Lxk8$p;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final r(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$q;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryVideoListByPaths(Lxk8$q;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb5c;->s(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb5c;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryBatch unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaItemQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public s(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    instance-of p1, p0, Lxk8$x;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$x;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lxk8$c0;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$c0;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryOnlinePlayHistory(Lxk8$c0;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lxk8$v;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$v;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryPlayListOnlineElement(Lxk8$v;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "querySingle unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaItemQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
