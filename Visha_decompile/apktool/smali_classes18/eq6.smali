.class public abstract Leq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq6$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/Map;

.field public c:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leq6;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Leq6;->b:Ljava/util/Map;

    iput-object v0, p0, Leq6;->c:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Leq6;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Leq6;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)Lzfa;
.end method

.method public c(Ljava/lang/Object;)Lzfa;
    .locals 1

    instance-of v0, p1, Lzfa;

    if-eqz v0, :cond_0

    check-cast p1, Lzfa;

    return-object p1

    :cond_0
    instance-of v0, p1, Laga;

    if-eqz v0, :cond_1

    check-cast p1, Laga;

    invoke-interface {p1}, Laga;->b()Lzfa;

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean v0, p0, Leq6;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Leq6;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Leq6;->e(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Leq6;->b(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Leq6;->f(Lzfa;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Leq6;->b(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public abstract d(Ljava/lang/Object;)Z
.end method

.method public final e(Ljava/lang/Object;)Lzfa;
    .locals 1

    iget-object v0, p0, Leq6;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Leq6;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leq6$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Leq6$a;->a()Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f(Lzfa;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Leq6;->b:Ljava/util/Map;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Leq6;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Leq6$a;

    if-nez v1, :cond_0

    iget-object v1, p0, Leq6;->b:Ljava/util/Map;

    new-instance v2, Leq6$a;

    iget-object p0, p0, Leq6;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, p0}, Leq6$a;-><init>(Lzfa;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Leq6;->b:Ljava/util/Map;

    iget-object v1, v1, Leq6$a;->a:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized g(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Leq6;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p1}, Lfreemarker/ext/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Leq6;->b:Ljava/util/Map;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Leq6;->c:Ljava/lang/ref/ReferenceQueue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Leq6;->b:Ljava/util/Map;

    iput-object p1, p0, Leq6;->c:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
