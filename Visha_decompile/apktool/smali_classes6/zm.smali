.class public abstract Lzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqu4;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MVBaseHandler"

    iput-object v0, p0, Lzm;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lzm;->i(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lzm;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lzm;->h(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lzm;->k(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final h(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->q(J)Z

    move-result p0

    return p0
.end method

.method public static final i(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v0, v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->n(J)Z

    move-result p0

    return p0
.end method

.method public static final j(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final k(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized g(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/Pair;

    new-instance v1, Lvm;

    invoke-direct {v1}, Lvm;-><init>()V

    const-string v2, "filter_size"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Lwm;

    invoke-direct {v2}, Lwm;-><init>()V

    const-string v3, "filter_duration"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    new-instance v3, Lxm;

    invoke-direct {v3}, Lxm;-><init>()V

    const-string v4, "filter_buckets"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    new-instance v4, Lym;

    invoke-direct {v4}, Lym;-><init>()V

    const-string v5, "filter_manually"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le74;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;->addFilteredType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
