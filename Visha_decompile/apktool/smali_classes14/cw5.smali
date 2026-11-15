.class public Lcw5;
.super Lerb;
.source "SourceFile"


# instance fields
.field public final q:Ljava/lang/Object;

.field public final r:Ljava/util/concurrent/locks/Lock;

.field public final s:Lpv5;

.field public final t:Ljava/util/List;

.field public volatile u:I

.field public final v:I

.field public w:J

.field public final x:Ljava/io/File;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lerb;-><init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcw5;->q:Ljava/lang/Object;

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lcw5;->r:Ljava/util/concurrent/locks/Lock;

    const/4 p3, 0x0

    iput p3, p0, Lcw5;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcw5;->y:J

    iput-wide v0, p0, Lcw5;->z:J

    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lerb;->d:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lerb;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcw5;->x:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ts save path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "M3U8VideoDownloadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTsSavePath(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcw5;->s:Lpv5;

    invoke-virtual {p2}, Lpv5;->f()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcw5;->v:I

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getPercent()F

    move-result p3

    iput p3, p0, Lerb;->n:F

    iget-object p3, p0, Lerb;->c:Ljava/util/Map;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lerb;->c:Ljava/util/Map;

    :cond_2
    iget-object p3, p0, Lerb;->c:Ljava/util/Map;

    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalTs(I)V

    iget p0, p0, Lcw5;->u:I

    invoke-virtual {p1, p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCurTs(I)V

    return-void
.end method

.method public static synthetic f(Lcw5;Lzv5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcw5;->n(Lzv5;)V

    return-void
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

    invoke-virtual {p0}, Lcw5;->m()V

    iget v0, p0, Lcw5;->u:I

    invoke-virtual {p0, v0}, Lcw5;->t(I)V

    return-void
.end method

.method public final g()V
    .locals 13

    iget-object v0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "M3U8VideoDownloadTask"

    const-string v0, "notifyDownloadProgress but task is error state so return"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcw5;->u()V

    iget-wide v0, p0, Lerb;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcw5;->x:Ljava/io/File;

    invoke-static {v0}, Li7c;->b(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lerb;->k:J

    :cond_1
    iget-object v0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcw5;->v:I

    iput v0, p0, Lcw5;->u:I

    invoke-virtual {p0}, Lcw5;->k()V

    return-void

    :cond_2
    iget v0, p0, Lcw5;->u:I

    iget v1, p0, Lcw5;->v:I

    if-lt v0, v1, :cond_3

    iput v1, p0, Lcw5;->u:I

    :cond_3
    iget-object v0, p0, Lerb;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcw5;->u:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    iget v3, p0, Lcw5;->v:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v3, p0, Lerb;->k:J

    iget-wide v5, p0, Lerb;->j:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    iget-wide v7, p0, Lerb;->l:J

    cmp-long v9, v11, v7

    if-lez v9, :cond_4

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v2

    sub-long v4, v11, v7

    long-to-float v2, v4

    div-float/2addr v3, v2

    iput v3, p0, Lerb;->m:F

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_0
    iget-boolean v2, p0, Lerb;->h:Z

    if-nez v2, :cond_5

    iget-object v4, p0, Lerb;->g:Lxu4;

    iget-wide v6, p0, Lerb;->k:J

    iget v8, p0, Lcw5;->u:I

    iget v9, p0, Lcw5;->v:I

    iget v10, p0, Lerb;->m:F

    move v5, v1

    invoke-interface/range {v4 .. v10}, Lxu4;->f(FJIIF)V

    :cond_5
    iput v1, p0, Lerb;->n:F

    iget-wide v1, p0, Lerb;->k:J

    iput-wide v1, p0, Lerb;->j:J

    iput-wide v11, p0, Lerb;->l:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv5;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v1}, Lzv5;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcw5;->k()V

    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h(Z)V
    .locals 13

    iget-object p1, p0, Lcw5;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcw5;->z:J

    iget-wide v2, p0, Lcw5;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    iget-object p0, p0, Lcw5;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcw5;->y:J

    invoke-virtual {p0}, Lcw5;->u()V

    iget-wide v0, p0, Lerb;->k:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcw5;->x:Ljava/io/File;

    invoke-static {p1}, Li7c;->b(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lerb;->k:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcw5;->u:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    iget v1, p0, Lcw5;->v:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v8, p0, Lerb;->k:J

    iget-wide v6, p0, Lerb;->j:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    iget-wide v10, p0, Lerb;->l:J

    cmp-long v3, v1, v10

    if-lez v3, :cond_2

    sub-long v6, v8, v6

    mul-long/2addr v6, v4

    long-to-float v3, v6

    mul-float/2addr v3, v0

    sub-long v4, v1, v10

    long-to-float v0, v4

    div-float/2addr v3, v0

    iput v3, p0, Lerb;->m:F

    :cond_2
    iget-object v6, p0, Lerb;->g:Lxu4;

    iget v10, p0, Lcw5;->u:I

    iget v11, p0, Lcw5;->v:I

    iget v12, p0, Lerb;->m:F

    move v7, p1

    invoke-interface/range {v6 .. v12}, Lxu4;->f(FJIIF)V

    iput p1, p0, Lerb;->n:F

    iget-wide v3, p0, Lerb;->k:J

    iput-wide v3, p0, Lerb;->j:J

    iput-wide v1, p0, Lerb;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcw5;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcw5;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public final i()V
    .locals 9

    iget-object v0, p0, Lcw5;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lerb;->d:Ljava/io/File;

    const-string v3, "temp.m3u8"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "#EXTM3U\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXT-X-VERSION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcw5;->s:Lpv5;

    invoke-virtual {v4}, Lpv5;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXT-X-MEDIA-SEQUENCE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcw5;->s:Lpv5;

    invoke-virtual {v4}, Lpv5;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcw5;->s:Lpv5;

    invoke-virtual {v4}, Lpv5;->e()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzv5;

    invoke-virtual {v4}, Lzv5;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lzv5;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",BYTERANGE=\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#EXT-X-MAP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lzv5;->q()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lzv5;->k()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "METHOD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lzv5;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lzv5;->j()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lzv5;->s()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",URI=\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",URI=\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-virtual {v4}, Lzv5;->h()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",IV="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#EXT-X-KEY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lzv5;->o()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#EXTINF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->d()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lzv5;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_1

    :cond_8
    const-string v3, "#EXT-X-ENDLIST"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lerb;->d:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lerb;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "local.m3u8"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public j(Lzv5;Ljava/io/File;Ljava/lang/String;)V
    .locals 12

    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "M3U8VideoDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lerb;->c:Ljava/util/Map;

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v3

    invoke-virtual {v3}, Lrqb;->e()Z

    move-result v3

    invoke-static {p3, v2, v3}, Lst4;->c(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    const/16 v4, 0xce

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lzv5;->l()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lzv5;->y(I)V

    invoke-virtual {p1}, Lzv5;->l()I

    move-result v4

    if-ge v4, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcw5;->j(Lzv5;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcw5;->r()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/transsion/videodownloader/VideoDownloadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http response code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    int-to-long v7, v3

    move-object v4, p0

    move-object v5, v1

    move-object v6, p2

    move-object v9, p1

    move-object v10, p3

    invoke-virtual/range {v4 .. v10}, Lcw5;->s(Ljava/io/InputStream;Ljava/io/File;JLzv5;Ljava/lang/String;)V

    iget-object v3, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v3, v0, :cond_3

    invoke-virtual {p0}, Lcw5;->r()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    invoke-static {v2}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Lfrb;->b(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lzv5;->l()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lzv5;->y(I)V

    invoke-virtual {p1}, Lzv5;->l()I

    move-result v4

    if-ge v4, v0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcw5;->j(Lzv5;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcw5;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lfrb;->b(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_4
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lfrb;->b(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final k()V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcw5;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcw5;->o(Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lerb;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lerb;->h:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lerb;->g:Lxu4;

    iget-wide v4, p0, Lerb;->k:J

    iget v6, p0, Lcw5;->u:I

    iget v7, p0, Lcw5;->v:I

    iget v8, p0, Lerb;->m:F

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-interface/range {v2 .. v8}, Lxu4;->f(FJIIF)V

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lerb;->n:F

    iget-wide v1, p0, Lerb;->k:J

    iput-wide v1, p0, Lcw5;->w:J

    iget-object v3, p0, Lerb;->g:Lxu4;

    invoke-interface {v3, v1, v2}, Lxu4;->a(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lerb;->h:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Lzv5;)V
    .locals 5

    invoke-virtual {p1}, Lzv5;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzv5;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcw5;->x:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lzv5;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcw5;->j(Lzv5;Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {p1}, Lzv5;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lzv5;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcw5;->j(Lzv5;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lzv5;->b()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lzv5;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lzv5;->x(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lzv5;->z(J)V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 8

    iget-object v0, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzv5;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v2}, Lzv5;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lzv5;->z(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcw5;->u:I

    iput-wide v3, p0, Lerb;->k:J

    iget v0, p0, Lcw5;->u:I

    iget v1, p0, Lcw5;->v:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setIsCompleted(Z)V

    :cond_1
    return-void
.end method

.method public final synthetic n(Lzv5;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p1

    iget-object v0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->y(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    iget-object p1, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcw5;->c()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcw5;->l(Lzv5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M3U8TsDownloadThread download failed, exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M3U8VideoDownloadTask"

    invoke-static {v1, v0}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcw5;->o(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lerb;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcw5;->r()V

    iget-wide v0, p0, Lcw5;->w:J

    invoke-virtual {p0, v0, v1}, Lcw5;->q(J)V

    return-void
.end method

.method public final q(J)V
    .locals 0

    iget-object p1, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcw5;->k()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 0

    invoke-virtual {p0}, Lcw5;->g()V

    return-void
.end method

.method public final s(Ljava/io/InputStream;Ljava/io/File;JLzv5;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v11, p1

    move-wide v12, v8

    :goto_0
    :try_start_2
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_0

    int-to-long v14, v7

    add-long/2addr v12, v14

    const/4 v14, 0x0

    invoke-virtual {v10, v0, v14, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1, v6}, Lcw5;->h(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object v7, v10

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :goto_2
    move-object v7, v10

    goto :goto_4

    :cond_0
    cmp-long v0, v3, v8

    if-lez v0, :cond_1

    cmp-long v0, v3, v12

    if-nez v0, :cond_1

    invoke-virtual {v5, v3, v4}, Lzv5;->t(J)V

    goto :goto_3

    :cond_1
    invoke-virtual {v5, v12, v13}, Lzv5;->t(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static/range {p1 .. p1}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v10}, Lfrb;->b(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v11, p1

    move-wide v12, v8

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v11, p1

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    move-wide v12, v8

    :goto_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    cmp-long v10, v3, v8

    if-lez v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v10, v3, v14

    if-eqz v10, :cond_3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_5
    const-wide/16 v14, -0x1

    cmp-long v10, v3, v14

    if-nez v10, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {v5, v12, v13}, Lzv5;->t(J)V

    goto/16 :goto_6

    :cond_4
    instance-of v10, v0, Ljava/net/ProtocolException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v14, ", saveFile failed, exception="

    const-string v15, ", length="

    const-string v6, "M3U8VideoDownloadTask"

    if-eqz v10, :cond_8

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v8, "unexpected end of stream"

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    cmp-long v3, v3, v12

    if-lez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v12, v3

    if-nez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-nez v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lzv5;->l()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v5, v3}, Lzv5;->y(I)V

    invoke-virtual/range {p5 .. p5}, Lzv5;->l()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_6

    move-object/from16 v3, p6

    invoke-virtual {v1, v5, v2, v3}, Lcw5;->j(Lzv5;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v5, v12, v13}, Lzv5;->t(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_6
    invoke-static/range {p1 .. p1}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v7}, Lfrb;->b(Ljava/io/Closeable;)V

    :goto_7
    return-void

    :cond_8
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    :cond_9
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_8
    invoke-static/range {p1 .. p1}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v7}, Lfrb;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final t(I)V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lerb;->h:Z

    iget-object v0, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isCompleted()Z

    move-result v0

    const-string v1, "M3U8VideoDownloadTask"

    if-eqz v0, :cond_0

    const-string p1, "M3U8VideoDownloadTask local file."

    invoke-static {v1, p1}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcw5;->p()V

    return-void

    :cond_0
    iput p1, p0, Lcw5;->u:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload curDownloadTs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lerb;->p:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const-wide/16 v5, 0x0

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcw5;->y:J

    :goto_0
    iget v0, p0, Lcw5;->v:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzv5;

    iget-object v1, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lbw5;

    invoke-direct {v2, p0, v0}, Lbw5;-><init>(Lcw5;Lzv5;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lerb;->k:J

    invoke-virtual {p0, v0, v1}, Lcw5;->q(J)V

    return-void
.end method

.method public final u()V
    .locals 8

    iget-object v0, p0, Lcw5;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzv5;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcw5;->x:Ljava/io/File;

    invoke-virtual {v2}, Lzv5;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-lez v3, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lzv5;->z(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcw5;->u:I

    iput-wide v3, p0, Lerb;->k:J

    return-void
.end method
