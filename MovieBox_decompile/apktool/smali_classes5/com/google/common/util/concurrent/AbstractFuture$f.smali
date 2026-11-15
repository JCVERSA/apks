.class final Lcom/google/common/util/concurrent/AbstractFuture$f;
.super Lcom/google/common/util/concurrent/AbstractFuture$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$f;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;Lcom/google/common/util/concurrent/AbstractFuture$d;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;)Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method c(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;)Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method d(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;)Lcom/google/common/util/concurrent/AbstractFuture$d;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;)Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method e(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;)Lcom/google/common/util/concurrent/AbstractFuture$j;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;)Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method f(Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 2
    .line 3
    return-void
.end method

.method g(Lcom/google/common/util/concurrent/AbstractFuture$j;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Ljava/lang/Thread;

    .line 2
    .line 3
    return-void
.end method
