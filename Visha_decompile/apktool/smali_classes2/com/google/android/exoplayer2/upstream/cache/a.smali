.class public final Lcom/google/android/exoplayer2/upstream/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/a$b;,
        Lcom/google/android/exoplayer2/upstream/cache/a$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field public final b:Lcom/google/android/exoplayer2/upstream/a;

.field public final c:Lcom/google/android/exoplayer2/upstream/a;

.field public final d:Lcom/google/android/exoplayer2/upstream/a;

.field public final e:Lrp0;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Landroid/net/Uri;

.field public j:Lcom/google/android/exoplayer2/upstream/b;

.field public k:Lcom/google/android/exoplayer2/upstream/b;

.field public l:Lcom/google/android/exoplayer2/upstream/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:Lyp0;

.field public q:Z

.field public r:Z

.field public s:J

.field public t:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/a;Lrs1;Lrp0;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/a;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p5, Lrp0;->a:Lrp0;

    :goto_0
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->e:Lrp0;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p3

    .line 6
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->f:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, p3

    .line 7
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->g:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    move p3, p5

    .line 8
    :cond_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->h:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    if-eqz p4, :cond_4

    .line 10
    new-instance p1, Lkea;

    invoke-direct {p1, p2, p4}, Lkea;-><init>(Lcom/google/android/exoplayer2/upstream/a;Lrs1;)V

    .line 11
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_3

    .line 12
    :cond_5
    sget-object p2, Lcom/google/android/exoplayer2/upstream/h;->a:Lcom/google/android/exoplayer2/upstream/h;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/a;

    :goto_3
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/a;Lrs1;Lrp0;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$b;Lcom/google/android/exoplayer2/upstream/cache/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/a;Lrs1;Lrp0;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$b;)V

    return-void
.end method

.method public static d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lyg1;

    move-result-object p0

    invoke-static {p0}, Lyg1;->a(Lyg1;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->e:Lrp0;

    invoke-interface {v0, p1}, Lrp0;->a(Lcom/google/android/exoplayer2/upstream/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/b$b;->f(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/b$b;->a()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/a;->d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/b;->g:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->n(Lcom/google/android/exoplayer2/upstream/b;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/a;->k(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_2

    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lyg1;

    move-result-object v0

    invoke-static {v0}, Lyg1;->b(Lyg1;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_4

    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/b;->g:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    :cond_4
    :goto_2
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/b;->h:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_6

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    :cond_6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v2, v5

    if-gtz v0, :cond_7

    cmp-long v0, v2, v7

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/google/android/exoplayer2/upstream/cache/a;->l(Lcom/google/android/exoplayer2/upstream/b;Z)V

    :cond_8
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/b;->h:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    return-wide v0

    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->e(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public b(Lu5b;)V
    .locals 1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/b;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lyp0;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lyp0;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lyp0;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/b;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lyp0;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lyp0;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lyp0;

    :cond_2
    throw v0
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Lcom/google/android/exoplayer2/upstream/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->j()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/a;->e(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->q:Z

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->g()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(I)V
    .locals 0

    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/upstream/b;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/b;->i:Ljava/lang/String;

    invoke-static {v2}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v3, v9

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->f:Z

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;JJ)Lyp0;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lyp0;

    move-result-object v3

    :goto_0
    const-wide/16 v4, -0x1

    if-nez v3, :cond_2

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/b$b;->h(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/b$b;->g(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/b$b;->a()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v7

    goto/16 :goto_2

    :cond_2
    iget-boolean v6, v3, Lyp0;->e:Z

    if-eqz v6, :cond_4

    iget-object v6, v3, Lyp0;->f:Ljava/io/File;

    invoke-static {v6}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iget-wide v7, v3, Lyp0;->c:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    sub-long/2addr v10, v7

    iget-wide v12, v3, Lyp0;->d:J

    sub-long/2addr v12, v10

    iget-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/google/android/exoplayer2/upstream/b$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/upstream/b$b;->k(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Lcom/google/android/exoplayer2/upstream/b$b;->h(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Lcom/google/android/exoplayer2/upstream/b$b;->g(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/b$b;->a()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v7

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lyp0;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    goto :goto_1

    :cond_5
    iget-wide v6, v3, Lyp0;->d:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/b;->a()Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v8

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer2/upstream/b$b;->h(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/google/android/exoplayer2/upstream/b$b;->g(J)Lcom/google/android/exoplayer2/upstream/b$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/b$b;->a()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v7

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v8, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lyp0;)V

    move-object v3, v9

    :goto_2
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    if-ne v6, v8, :cond_8

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_3

    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    :goto_3
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->t:J

    if-eqz p2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->f()Z

    move-result v8

    invoke-static {v8}, Lzi;->g(Z)V

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/a;

    if-ne v6, v8, :cond_9

    return-void

    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v3}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyp0;

    invoke-virtual {v0}, Lyp0;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lyp0;)V

    :cond_a
    throw v2

    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lyp0;->b()Z

    move-result v8

    if-eqz v8, :cond_c

    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lyp0;

    :cond_c
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    iput-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/b;

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:J

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/upstream/a;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    move-result-wide v10

    new-instance v3, Lzg1;

    invoke-direct {v3}, Lzg1;-><init>()V

    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/b;->h:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_d

    cmp-long v4, v10, v4

    if-eqz v4, :cond_d

    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    add-long/2addr v4, v10

    invoke-static {v3, v4, v5}, Lzg1;->g(Lzg1;J)Lzg1;

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v6}, Lcom/google/android/exoplayer2/upstream/a;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Landroid/net/Uri;

    :cond_e
    invoke-static {v3, v9}, Lzg1;->h(Lzg1;Landroid/net/Uri;)Lzg1;

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c(Ljava/lang/String;Lzg1;)V

    :cond_10
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lzg1;

    invoke-direct {v0}, Lzg1;-><init>()V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    invoke-static {v0, v1, v2}, Lzg1;->g(Lzg1;J)Lzg1;

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c(Ljava/lang/String;Lzg1;)V

    :cond_0
    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/upstream/b;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->q:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->h:Z

    if-eqz p0, :cond_1

    iget-wide p0, p1, Lcom/google/android/exoplayer2/upstream/b;->h:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public read([BII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Lcom/google/android/exoplayer2/upstream/b;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/b;

    iget-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/b;

    invoke-static {v7}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/upstream/b;

    :try_start_0
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->t:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Lcom/google/android/exoplayer2/upstream/cache/a;->l(Lcom/google/android/exoplayer2/upstream/b;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/a;

    invoke-static {v8}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/upstream/a;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-interface {v8, v9, v10, v0}, Lms1;->read([BII)I

    move-result v8

    const-wide/16 v11, -0x1

    if-eq v8, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    :cond_3
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:J

    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_7

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v13, v7, Lcom/google/android/exoplayer2/upstream/b;->h:J

    cmp-long v4, v13, v11

    if-eqz v4, :cond_5

    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:J

    cmp-long v4, v11, v13

    if-gez v4, :cond_6

    :cond_5
    iget-object v0, v3, Lcom/google/android/exoplayer2/upstream/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/a;->m(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v4, v11, v5

    if-gtz v4, :cond_8

    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return v8

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->c()V

    invoke-virtual {p0, v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/a;->l(Lcom/google/android/exoplayer2/upstream/b;Z)V

    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer2/upstream/cache/a;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/a;->e(Ljava/lang/Throwable;)V

    throw v0
.end method
