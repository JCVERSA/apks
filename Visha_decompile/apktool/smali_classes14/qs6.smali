.class public Lqs6;
.super Lerb;
.source "SourceFile"


# instance fields
.field public q:Landroid/os/HandlerThread;

.field public r:Landroid/os/Handler;

.field public s:Ljava/util/List;

.field public final t:J

.field public final u:I


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lerb;-><init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    iget-object p2, p0, Lerb;->c:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lerb;->c:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTotalSize()J

    move-result-wide p1

    iput-wide p1, p0, Lqs6;->t:J

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object p1

    invoke-virtual {p1}, Lrqb;->b()I

    move-result p1

    iput p1, p0, Lqs6;->u:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqs6;->s:Ljava/util/List;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Multi-thread download"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lqs6;->q:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lqs6;->q:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lqs6;->r:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic f(Lqs6;)J
    .locals 2

    iget-wide v0, p0, Lqs6;->t:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lqs6;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lqs6;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic h(Lqs6;)V
    .locals 0

    invoke-direct {p0}, Lqs6;->k()V

    return-void
.end method

.method public static bridge synthetic i(Lqs6;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqs6;->l(Ljava/util/Map;)V

    return-void
.end method

.method private j(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lerb;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lerb;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lerb;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lerb;->g:Lxu4;

    iget-wide v2, p0, Lqs6;->t:J

    invoke-interface {v1, v2, v3}, Lxu4;->a(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lerb;->h:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-virtual {p0}, Lerb;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lerb;->g:Lxu4;

    iget-object v1, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lxu4;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lqs6;->n()V

    return-void
.end method

.method public final l(Ljava/util/Map;)V
    .locals 14

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lerb;->k:J

    iget-wide v7, p0, Lqs6;->t:J

    cmp-long v0, v1, v7

    const/high16 v10, 0x42c80000    # 100.0f

    if-ltz v0, :cond_1

    iget-object v3, p0, Lerb;->g:Lxu4;

    const/high16 v4, 0x42c80000    # 100.0f

    iget v9, p0, Lerb;->m:F

    move-wide v5, v7

    invoke-interface/range {v3 .. v9}, Lxu4;->d(FJJF)V

    iput v10, p0, Lerb;->n:F

    invoke-direct {p0}, Lqs6;->k()V

    goto :goto_1

    :cond_1
    long-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v10

    long-to-float v2, v7

    div-float/2addr v0, v2

    iget v2, p0, Lerb;->n:F

    invoke-static {v0, v2}, Lfrb;->h(FF)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v5, p0, Lerb;->k:J

    iget-wide v2, p0, Lerb;->j:J

    cmp-long v4, v5, v2

    if-lez v4, :cond_2

    iget-wide v7, p0, Lerb;->l:J

    cmp-long v4, v10, v7

    if-lez v4, :cond_2

    sub-long v2, v5, v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v2, v12

    long-to-float v2, v2

    mul-float/2addr v2, v1

    sub-long v3, v10, v7

    long-to-float v1, v3

    div-float/2addr v2, v1

    iput v2, p0, Lerb;->m:F

    :cond_2
    iget-object v3, p0, Lerb;->g:Lxu4;

    iget-wide v7, p0, Lqs6;->t:J

    iget v9, p0, Lerb;->m:F

    move v4, v0

    invoke-interface/range {v3 .. v9}, Lxu4;->d(FJJF)V

    iput v0, p0, Lerb;->n:F

    iput-wide v10, p0, Lerb;->l:J

    iget-wide v0, p0, Lerb;->k:J

    iput-wide v0, p0, Lerb;->j:J

    invoke-virtual {p0, p1}, Lqs6;->m(Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(Ljava/util/Map;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/videodownloader/model/VideoRange;

    invoke-virtual {v4}, Lcom/transsion/videodownloader/model/VideoRange;->getStart()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/transsion/videodownloader/model/VideoRange;->getEnd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveCacheInfo id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cachedSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiSegVideoDownloadTask"

    invoke-static {v5, v4}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/transsion/videodownloader/model/MultiRangeInfo;

    invoke-direct {p1}, Lcom/transsion/videodownloader/model/MultiRangeInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->setIds(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->setStarts(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->setEnds(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->setSizes(Ljava/util/List;)V

    iget-object p0, p0, Lerb;->d:Ljava/io/File;

    invoke-static {p1, p0}, Lfrb;->l(Lcom/transsion/videodownloader/model/MultiRangeInfo;Ljava/io/File;)V

    return-void
.end method

.method public final n()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MultiSegVideoDownloadTask"

    const-string v2, "BaseVideoDownloadTask local file."

    invoke-static {v1, v2}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lqs6;->k()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, v0, Lqs6;->u:I

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lerb;->d:Ljava/io/File;

    invoke-static {v2}, Lfrb;->k(Ljava/io/File;)Lcom/transsion/videodownloader/model/MultiRangeInfo;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_2

    iget v2, v0, Lqs6;->u:I

    int-to-long v6, v2

    iget-wide v8, v0, Lqs6;->t:J

    div-long/2addr v8, v6

    move v2, v5

    :goto_0
    int-to-long v10, v2

    cmp-long v12, v10, v6

    if-gez v12, :cond_5

    mul-long v12, v8, v10

    add-int/lit8 v2, v2, 0x1

    int-to-long v14, v2

    mul-long/2addr v14, v8

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    sub-long v16, v6, v16

    cmp-long v10, v10, v16

    if-nez v10, :cond_1

    iget-wide v14, v0, Lqs6;->t:J

    :cond_1
    new-instance v10, Lcom/transsion/videodownloader/model/VideoRange;

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/transsion/videodownloader/model/VideoRange;-><init>(JJ)V

    iget-object v11, v0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->getIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->getEnds()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/MultiRangeInfo;->getSizes()Ljava/util/List;

    move-result-object v2

    move v9, v5

    :goto_1
    int-to-long v10, v9

    cmp-long v10, v10, v6

    if-gez v10, :cond_4

    if-nez v9, :cond_3

    new-instance v10, Lcom/transsion/videodownloader/model/VideoRange;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/transsion/videodownloader/model/VideoRange;-><init>(JJ)V

    iget-object v11, v0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v10, Lcom/transsion/videodownloader/model/VideoRange;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/transsion/videodownloader/model/VideoRange;-><init>(JJ)V

    iget-object v11, v0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :goto_3
    int-to-long v9, v5

    cmp-long v9, v9, v6

    if-gez v9, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;

    iget-object v12, v0, Lerb;->b:Ljava/lang/String;

    iget-object v13, v0, Lerb;->c:Ljava/util/Map;

    iget-object v10, v0, Lqs6;->s:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/transsion/videodownloader/model/VideoRange;

    iget-wide v10, v0, Lqs6;->t:J

    iget-object v15, v0, Lerb;->d:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-wide v15, v10

    move-object v11, v9

    invoke-direct/range {v11 .. v17}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/videodownloader/model/VideoRange;JLjava/lang/String;)V

    iget-object v10, v0, Lqs6;->r:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->setHandler(Landroid/os/Handler;)V

    invoke-virtual {v9, v5}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->setId(I)V

    new-instance v10, Lqs6$a;

    invoke-direct {v10, v0, v1, v2, v8}, Lqs6$a;-><init>(Lqs6;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v9, v10}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->setCacheListener(Lcx4;)V

    iget-object v10, v0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
