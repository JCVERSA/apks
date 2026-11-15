.class final Lcom/mbridge/msdk/thrid/okhttp/v$b;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z = true


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/thrid/okhttp/v;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 34
    .line 35
    const-string v1, "executor rejected"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Lcom/mbridge/msdk/thrid/okhttp/v;)Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(Lcom/mbridge/msdk/thrid/okhttp/v$b;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method protected b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->h()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/v;->c()Lcom/mbridge/msdk/thrid/okhttp/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_1
    move-exception v2

    .line 20
    move-object v5, v2

    .line 21
    move v2, v1

    .line 22
    move-object v1, v5

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/v;->cancel()V

    .line 29
    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    new-instance v2, Ljava/io/IOException;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "canceled due to "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :catchall_2
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    throw v1

    .line 59
    :goto_1
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Lcom/mbridge/msdk/thrid/okhttp/v;)Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 72
    .line 73
    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/thrid/okhttp/n;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V

    .line 74
    .line 75
    .line 76
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(Lcom/mbridge/msdk/thrid/okhttp/v$b;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method c()Lcom/mbridge/msdk/thrid/okhttp/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 2
    .line 3
    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v$b;->b:Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/q;->g()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
