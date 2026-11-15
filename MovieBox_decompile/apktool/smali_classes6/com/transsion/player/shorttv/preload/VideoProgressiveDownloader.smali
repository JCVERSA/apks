.class public final Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/o;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lw1/h;

.field private final c:Landroidx/media3/datasource/cache/a;

.field private final d:Landroidx/media3/datasource/cache/i;

.field private final e:Landroidx/media3/common/PriorityTaskManager;

.field private f:Landroidx/media3/exoplayer/offline/o$a;

.field private volatile g:Landroidx/media3/common/util/RunnableFutureTask;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->a:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iget-object p3, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 13
    .line 14
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance p3, Lw1/h$b;

    .line 18
    .line 19
    invoke-direct {p3}, Lw1/h$b;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p3, 0x4

    .line 39
    invoke-virtual {p1, p3}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->b:Lw1/h;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/a$c;->b()Landroidx/media3/datasource/cache/a;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->c:Landroidx/media3/datasource/cache/a;

    .line 54
    .line 55
    new-instance v0, Lcom/transsion/player/shorttv/preload/r;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsion/player/shorttv/preload/r;-><init>(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroidx/media3/datasource/cache/i;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, p3, p1, v2, v0}, Landroidx/media3/datasource/cache/i;-><init>(Landroidx/media3/datasource/cache/a;Lw1/h;[BLandroidx/media3/datasource/cache/i$a;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d:Landroidx/media3/datasource/cache/i;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/a$c;->g()Landroidx/media3/common/PriorityTaskManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic b(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;JJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d(JJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)Landroidx/media3/datasource/cache/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->d:Landroidx/media3/datasource/cache/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(JJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->f:Landroidx/media3/exoplayer/offline/o$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/16 p5, -0x1

    .line 7
    .line 8
    cmp-long p5, p1, p5

    .line 9
    .line 10
    if-eqz p5, :cond_2

    .line 11
    .line 12
    const-wide/16 p5, 0x0

    .line 13
    .line 14
    cmp-long p5, p1, p5

    .line 15
    .line 16
    if-nez p5, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    long-to-float p5, p3

    .line 20
    const/high16 p6, 0x42c80000    # 100.0f

    .line 21
    .line 22
    mul-float/2addr p5, p6

    .line 23
    long-to-float p6, p1

    .line 24
    div-float/2addr p5, p6

    .line 25
    :goto_0
    move v5, p5

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    const/high16 p5, -0x40800000    # -1.0f

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_2
    move-wide v1, p1

    .line 31
    move-wide v3, p3

    .line 32
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/o$a;->onProgress(JJF)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/o$a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->f:Landroidx/media3/exoplayer/offline/o$a;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    .line 4
    .line 5
    const/16 v0, -0xfa0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_5

    .line 14
    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->h:Z

    .line 16
    .line 17
    if-nez v1, :cond_5

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader$1;-><init>(Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->a:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Throwable;

    .line 60
    .line 61
    instance-of v2, v1, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    instance-of v2, v1, Ljava/io/IOException;

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    check-cast v1, Ljava/io/IOException;

    .line 75
    .line 76
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :goto_2
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 78
    .line 79
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroidx/media3/common/util/RunnableFutureTask;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    throw p1

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 97
    .line 98
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroidx/media3/common/util/RunnableFutureTask;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->e:Landroidx/media3/common/PriorityTaskManager;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->h:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;->g:Landroidx/media3/common/util/RunnableFutureTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 0

    .line 1
    return-void
.end method
