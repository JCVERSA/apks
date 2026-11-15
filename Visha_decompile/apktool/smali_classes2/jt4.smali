.class public final Ljt4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljt4$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/lang/String;

.field public volatile c:Lit4;

.field public final d:Ljava/util/List;

.field public final e:Lsp0;

.field public final f:Loe1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Loe1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljt4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljt4;->d:Ljava/util/List;

    invoke-static {p1}, Lae8;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljt4;->b:Ljava/lang/String;

    invoke-static {p2}, Lae8;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Loe1;

    iput-object p2, p0, Ljt4;->f:Loe1;

    new-instance p2, Ljt4$a;

    invoke-direct {p2, p1, v0}, Ljt4$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Ljt4;->e:Lsp0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljt4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ljt4;->c:Lit4;

    invoke-virtual {v0}, Lcom/danikula/videocache/ProxyCache;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljt4;->c:Lit4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Ljt4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final c()Lit4;
    .locals 4

    new-instance v0, Lot4;

    iget-object v1, p0, Ljt4;->b:Ljava/lang/String;

    iget-object v2, p0, Ljt4;->f:Loe1;

    iget-object v3, v2, Loe1;->d:Lbu9;

    iget-object v2, v2, Loe1;->e:Lpo4;

    invoke-direct {v0, v1, v3, v2}, Lot4;-><init>(Ljava/lang/String;Lbu9;Lpo4;)V

    new-instance v1, Lfq3;

    iget-object v2, p0, Ljt4;->f:Loe1;

    iget-object v3, p0, Ljt4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Loe1;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Ljt4;->f:Loe1;

    iget-object v3, v3, Loe1;->c:Lhc2;

    invoke-direct {v1, v2, v3}, Lfq3;-><init>(Ljava/io/File;Lhc2;)V

    new-instance v2, Lit4;

    invoke-direct {v2, v0, v1}, Lit4;-><init>(Lot4;Lfq3;)V

    iget-object p0, p0, Ljt4;->e:Lsp0;

    invoke-virtual {v2, p0}, Lit4;->t(Lsp0;)V

    return-object v2
.end method

.method public d(Lhh4;Ljava/net/Socket;)V
    .locals 1

    invoke-virtual {p0}, Ljt4;->f()V

    :try_start_0
    iget-object v0, p0, Ljt4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Ljt4;->c:Lit4;

    invoke-virtual {v0, p1, p2}, Lit4;->s(Lhh4;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljt4;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljt4;->a()V

    throw p1
.end method

.method public e(Lsp0;)V
    .locals 0

    iget-object p0, p0, Ljt4;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljt4;->c:Lit4;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljt4;->c()Lit4;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljt4;->c:Lit4;

    :goto_0
    iput-object v0, p0, Ljt4;->c:Lit4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
