.class public final Lsq2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llq2;

.field public final b:Lrga;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Llq2;Lrga;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq2;->a:Llq2;

    iput-object p2, p0, Lsq2;->b:Lrga;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Lei2;)Luv2;
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luv2;

    if-nez v1, :cond_1

    iget-object v1, p0, Lsq2;->a:Llq2;

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llq2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "getRootState(tag.id)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Luv2;

    invoke-direct {v3, v1, v2}, Luv2;-><init>(J)V

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    const-string v0, "tags"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    iget-object p1, p0, Lsq2;->a:Llq2;

    invoke-interface {p1}, Llq2;->clear()V

    iget-object p0, p0, Lsq2;->b:Lrga;

    invoke-virtual {p0}, Lrga;->a()V

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei2;

    iget-object v1, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsq2;->a:Llq2;

    invoke-virtual {v0}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llq2;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lsq2;->b:Lrga;

    invoke-virtual {v0}, Lei2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tag.id"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lrga;->e(Ljava/lang/String;)Ljava/util/Map;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final c(Lei2;JZ)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lei2;->b:Lei2;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lsq2;->a(Lei2;)Luv2;

    move-result-object v1

    iget-object v2, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Luv2;

    invoke-direct {v1, p2, p3}, Luv2;-><init>(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Luv2;

    invoke-virtual {v1}, Luv2;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, p2, p3, v1}, Luv2;-><init>(JLjava/util/Map;)V

    move-object v1, v3

    :goto_0
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsq2;->b:Lrga;

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tag.id"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrga;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    iget-object p0, p0, Lsq2;->a:Llq2;

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Llq2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/yandex/div/core/state/DivStatePath;Z)V
    .locals 3

    const-string v0, "cardId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divStatePath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lsq2;->c:Landroidx/collection/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lsq2;->b:Lrga;

    invoke-virtual {v2, p1, v0, p2}, Lrga;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    iget-object p0, p0, Lsq2;->a:Llq2;

    invoke-interface {p0, p1, v0, p2}, Llq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
