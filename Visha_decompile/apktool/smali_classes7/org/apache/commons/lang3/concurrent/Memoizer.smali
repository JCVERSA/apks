.class public Lorg/apache/commons/lang3/concurrent/Memoizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/Computable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/Computable<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TI;",
            "Ljava/util/concurrent/Future<",
            "TO;>;>;"
        }
    .end annotation
.end field

.field private final computable:Lorg/apache/commons/lang3/concurrent/Computable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field private final recalculate:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    .line 5
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->lambda$compute$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$compute$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/concurrent/Computable;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unchecked exception"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public compute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    new-instance v0, Lhn6;

    invoke-direct {v0, p0, p1}, Lhn6;-><init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    move-object v0, v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
