.class public Lorg/proninyaroslav/libretorrent/core/logger/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;,
        Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;
    }
.end annotation


# static fields
.field protected static final POLL_TIME_INTERVAL:J = 0xfaL


# instance fields
.field protected dataSetChangedPublish:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject;"
        }
    .end annotation
.end field

.field protected filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected inputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer<",
            "Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected logLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected maxStoredLogs:I

.field protected numPendingLogs:I

.field protected outputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer<",
            "Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z

.field protected pendingThread:Ljava/lang/Thread;

.field protected recordStartIndex:I

.field protected recording:Z

.field protected sender:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->filters:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->o0()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->dataSetChangedPublish:Lio/reactivex/subjects/PublishSubject;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->sender:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    if-lez p1, :cond_0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum stored logs must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/logger/Logger;Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->g(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/logger/Logger;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->j()V

    return-void
.end method


# virtual methods
.method public varargs addFilter([Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;)V
    .locals 6
    .param p1    # [Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->filters:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;->a:Ljava/lang/String;

    iget-object v3, v3, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;->b:Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final c(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->filters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;

    invoke-interface {v0, p1}, Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;->a(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public clean()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final d(I)I
    .locals 2

    int-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pendingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pendingThread:Ljava/lang/Thread;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->inputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->outputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    if-eqz v1, :cond_1

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    :cond_1
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-direct {v0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;)V

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->k(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->h()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->clear()V

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->c(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->FILTER:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-direct {v0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;)V

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->k(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    return-void
.end method

.method public final synthetic g(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->dataSetChangedPublish:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public getEntries(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-ltz p1, :cond_3

    :try_start_0
    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    if-ge p1, v0, :cond_3

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getEntry(I)Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getMaxStoredLogs()I
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getNumEntries()I
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final h()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->inputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->d(I)I

    move-result v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->inputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    :cond_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pendingThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljq5;

    invoke-direct {v1, p0}, Ljq5;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pendingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->pendingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->inputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    return-object p0
.end method

.method public final i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->outputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->d(I)I

    move-result v1

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->outputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->outputBuf:Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    return-object p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->paused:Z

    return p0
.end method

.method public isRecording()Z
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final j()V
    .locals 2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->paused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_1
    const-wide/16 v0, 0xfa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method public final k(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->sender:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lkq5;

    invoke-direct {v1, p0, p1}, Lkq5;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger;Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final l()V
    .locals 6

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->h()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v3

    iget v4, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    sub-int v4, v3, v4

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    invoke-virtual {p0, v5}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->c(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    if-lez v5, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;-><init>(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->k(Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;)V

    :cond_4
    return-void
.end method

.method public final m(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;Ljava/io/OutputStream;IIZ)I
    .locals 1

    if-ltz p3, :cond_3

    new-instance p0, Ljava/io/PrintStream;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    const/4 p2, 0x0

    :goto_0
    if-gt p3, p4, :cond_2

    invoke-virtual {p1, p3}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startPos < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public observeDataSetChanged()Lmc7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->dataSetChangedPublish:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->paused:Z

    return-void
.end method

.method public varargs removeFilter([Ljava/lang/String;)V
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->filters:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->paused:Z

    return-void
.end method

.method public send(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)V
    .locals 1
    .param p1    # Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->h()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->b(Ljava/lang/Object;)V

    iget p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I

    iget v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->numPendingLogs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setMaxStoredLogs(I)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->e()V

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->maxStoredLogs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public startRecording()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v1

    if-lez v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopRecording()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->stopRecording(Ljava/io/OutputStream;Z)I

    move-result p0

    return p0
.end method

.method public stopRecording(Ljava/io/OutputStream;)I
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->stopRecording(Ljava/io/OutputStream;Z)I

    move-result p0

    return p0
.end method

.method public stopRecording(Ljava/io/OutputStream;Z)I
    .locals 8
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    .line 5
    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_1

    .line 6
    :cond_0
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    .line 7
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    .line 8
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v3

    .line 10
    iget v5, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->m(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;Ljava/io/OutputStream;IIZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    .line 12
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    .line 13
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 14
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recording:Z

    .line 15
    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->recordStartIndex:I

    .line 16
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw p1
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->write(Ljava/io/OutputStream;Z)I

    move-result p0

    return p0
.end method

.method public write(Ljava/io/OutputStream;Z)I
    .locals 7
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->l()V

    .line 4
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->i()Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->m(Lorg/proninyaroslav/libretorrent/core/collections/FixedRingBuffer;Ljava/io/OutputStream;IIZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->logLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1
.end method
