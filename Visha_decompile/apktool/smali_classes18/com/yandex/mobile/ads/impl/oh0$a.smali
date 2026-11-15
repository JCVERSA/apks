.class public final Lcom/yandex/mobile/ads/impl/oh0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/oh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lokio/Buffer;

.field private c:Z

.field final synthetic d:Lcom/yandex/mobile/ads/impl/oh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oh0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->a:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    return-void
.end method

.method private final a(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->n()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->m()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->a:Z

    if-nez v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->c:Z

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->d()Lcom/yandex/mobile/ads/impl/t50;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oh0$c;->a()V

    .line 9
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->b()V

    .line 10
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->m()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->n()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 11
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->n()J

    move-result-wide v1

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/oh0;->d(J)V

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long p1, v9, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v7, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 13
    :goto_2
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit v0

    .line 15
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p1

    invoke-virtual {p1}, Lokio/AsyncTimeout;->enter()V

    .line 16
    :try_start_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0;->c()Lcom/yandex/mobile/ads/impl/hh0;

    move-result-object v5

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0;->f()I

    move-result v6

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/hh0;->a(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0$c;->a()V

    return-void

    :catchall_2
    move-exception p1

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0$c;->a()V

    throw p1

    .line 19
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0$c;->a()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :goto_4
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->c:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->a:Z

    return p0
.end method

.method public final close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    sget-boolean v1, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->d()Lcom/yandex/mobile/ads/impl/t50;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->k()Lcom/yandex/mobile/ads/impl/oh0$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/oh0$a;->a:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_5

    invoke-direct {p0, v2}, Lcom/yandex/mobile/ads/impl/oh0$a;->a(Z)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->c()Lcom/yandex/mobile/ads/impl/hh0;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->f()I

    move-result v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/hh0;->a(IZLokio/Buffer;J)V

    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->c:Z

    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->c()Lcom/yandex/mobile/ads/impl/hh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hh0;->flush()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    sget-boolean v1, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->b()V

    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/oh0$a;->a(Z)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->c()Lcom/yandex/mobile/ads/impl/hh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hh0;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->o()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->d:Lcom/yandex/mobile/ads/impl/oh0;

    sget-boolean v1, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MUST NOT hold lock on "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$a;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/oh0$a;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
