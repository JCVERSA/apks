.class public Lcom/transsion/athena/hatnea/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/hatnea/c$a;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/transsion/athena/hatnea/c;


# instance fields
.field public final a:Ljava/util/Deque;

.field public b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/c;->j(Lcom/transsion/athena/hatnea/anateh;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/athena/hatnea/c;->f(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z

    move-result p0

    return p0
.end method

.method public static d()Lcom/transsion/athena/hatnea/c;
    .locals 2

    sget-object v0, Lcom/transsion/athena/hatnea/c;->c:Lcom/transsion/athena/hatnea/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/hatnea/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/hatnea/c;->c:Lcom/transsion/athena/hatnea/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/hatnea/c;

    invoke-direct {v1}, Lcom/transsion/athena/hatnea/c;-><init>()V

    sput-object v1, Lcom/transsion/athena/hatnea/c;->c:Lcom/transsion/athena/hatnea/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/athena/hatnea/c;->c:Lcom/transsion/athena/hatnea/c;

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    instance-of p0, p0, Lcom/transsion/athena/hatnea/atenha;

    return p0
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    new-instance v1, La5d;

    invoke-direct {v1, p1}, La5d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Landroidx/core/util/Predicate;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/athena/hatnea/c;->c(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/transsion/athena/hatnea/c$a;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/transsion/athena/hatnea/c$a;-><init>(Lcom/transsion/athena/hatnea/c$b;)V

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/transsion/athena/hatnea/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public g()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/hatnea/anateh;

    instance-of v1, v0, Lcom/transsion/athena/hatnea/enatha;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/athena/hatnea/enatha;

    iget-object v1, v0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized h(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/c;->a:Ljava/util/Deque;

    new-instance v1, Lb5d;

    invoke-direct {v1}, Lb5d;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Landroidx/core/util/Predicate;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
