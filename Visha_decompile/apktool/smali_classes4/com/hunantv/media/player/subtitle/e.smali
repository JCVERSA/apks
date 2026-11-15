.class public Lcom/hunantv/media/player/subtitle/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;
.implements Lcom/hunantv/media/player/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/e$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field private b:J

.field private c:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:[Lcom/hunantv/media/player/b/a$a;

.field private j:[J

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/os/HandlerThread;

.field private final p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    iput-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->l:Z

    iput-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    iput-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    const/16 v4, 0xa

    iput v4, p0, Lcom/hunantv/media/player/subtitle/e;->p:I

    iput v4, p0, Lcom/hunantv/media/player/subtitle/e;->q:I

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->c:Lcom/hunantv/media/player/MgtvMediaPlayer;

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/hunantv/media/player/subtitle/e;->a(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->l:Z

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "MediaPlayerMTPEventThread"

    const/4 v4, -0x2

    invoke-direct {p1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->o:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->o:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    new-instance v2, Lcom/hunantv/media/player/subtitle/e$a;

    invoke-direct {v2, p0, p1}, Lcom/hunantv/media/player/subtitle/e$a;-><init>(Lcom/hunantv/media/player/subtitle/e;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    new-array p1, v3, [Lcom/hunantv/media/player/b/a$a;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    new-array p1, v3, [J

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    return-void
.end method

.method private a(JZ)J
    .locals 8

    .line 1
    iget-boolean p3, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->k:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_2

    const-wide/16 v6, 0x2

    div-long/2addr p1, v6

    sub-long/2addr v2, p1

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    iput-wide v4, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    goto :goto_0

    :cond_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    :cond_2
    :goto_0
    iget-wide p0, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    return-wide p0
.end method

.method private a(IJ)V
    .locals 5

    .line 5
    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    const-string v1, " in "

    const-string v2, "TimeProvider"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleNotification mSeeking "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleNotification "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p2, p2

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Landroid/os/HandlerThread;)V
    .locals 0

    .line 7
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/hunantv/media/player/subtitle/d;",
            "Lcom/hunantv/media/player/subtitle/SubtitleSource;",
            ">;)V"
        }
    .end annotation

    .line 8
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hunantv/media/player/subtitle/d;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/hunantv/media/player/subtitle/SubtitleSource;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getContent()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getCharset()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/hunantv/media/player/subtitle/d;->a([BZJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/e;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/e;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/e;Landroid/util/Pair;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/e;->a(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/subtitle/e;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/e;->c(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/hunantv/media/player/subtitle/e;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/e;->c()V

    return-void
.end method

.method private c(Lcom/hunantv/media/player/b/a$a;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-eq v3, p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Lcom/hunantv/media/player/b/a$a;

    new-array v3, v3, [J

    array-length v5, v2

    invoke-static {v2, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    array-length v5, v2

    invoke-static {v2, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    iput-object v3, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    const-wide/16 v2, -0x1

    aput-wide v2, p0, v1

    :cond_3
    return v1
.end method

.method private declared-synchronized c()V
    .locals 8

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/hunantv/media/player/subtitle/e;->a(ZZ)J

    move-result-wide v2

    const-string v4, "TimeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v7, v2, v3}, Lcom/hunantv/media/player/b/a$a;->b(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v2, "TimeProvider"

    const-string v3, "onSeekComplete but no player"

    invoke-static {v2, v3}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/e;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 14

    .line 3
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/subtitle/e;->a(ZZ)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    :try_start_1
    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->l:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/subtitle/e;->a(ZZ)J

    move-result-wide v1

    :goto_0
    iget-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_1
    iget-object v6, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    array-length v7, v6

    if-ge v3, v7, :cond_6

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    aget-object v7, v7, v3

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    aget-wide v8, v6, v3

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v12, 0x3e8

    add-long/2addr v12, v1

    cmp-long v6, v8, v12

    if-gtz v6, :cond_3

    invoke-virtual {p1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v6, "TimeProvider"

    const-string v7, "removed"

    invoke-static {v6, v7}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    aput-wide v10, v6, v3

    goto :goto_2

    :cond_3
    cmp-long v6, v4, v1

    if-eqz v6, :cond_4

    cmp-long v6, v8, v4

    if-gez v6, :cond_5

    :cond_4
    move-wide v4, v8

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const-string v3, "TimeProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh nextTimeUs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",nowUs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v4, v1

    if-lez v3, :cond_7

    iget-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    if-nez v3, :cond_7

    const-string v3, "TimeProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v4, v1

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    iget v3, p0, Lcom/hunantv/media/player/subtitle/e;->q:I

    int-to-long v6, v3

    div-long/2addr v4, v6

    const-string v3, "TimeProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduleNotification delayUs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v5}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/b/a$a;

    invoke-interface {v0, v1, v2}, Lcom/hunantv/media/player/b/a$a;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_8
    monitor-exit p0

    return-void

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/hunantv/media/player/b/a$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ZZ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-wide p1, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/e;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v4, 0x12a05f200L

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    :cond_1
    const/4 p1, 0x1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/e;->c:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/e;->c:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->f:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_3
    :goto_0
    move v3, p1

    :goto_1
    iput-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->k:J

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_4

    iget-wide v5, p0, Lcom/hunantv/media/player/subtitle/e;->b:J

    iget-wide v7, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    sub-long/2addr v7, v5

    iput-wide v7, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    const-wide/32 v5, 0xf4240

    cmp-long v5, v7, v5

    if-lez v5, :cond_5

    iput-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, v3, v4}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    goto :goto_2

    :cond_4
    iput-wide v3, p0, Lcom/hunantv/media/player/subtitle/e;->h:J

    :cond_5
    :goto_2
    invoke-direct {p0, v0, v1, p2}, Lcom/hunantv/media/player/subtitle/e;->a(JZ)J

    move-result-wide p1

    monitor-exit p0

    return-wide p1

    :goto_3
    iget-boolean v4, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    if-eqz v4, :cond_6

    iput-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    invoke-direct {p0, v0, v1, p2}, Lcom/hunantv/media/player/subtitle/e;->a(JZ)J

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    const-string p1, "TimeProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal state, but pausing: estimating at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/hunantv/media/player/subtitle/e;->g:J

    monitor-exit p0

    return-wide p1

    :cond_6
    throw v3

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->o:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/e;->a(Landroid/os/HandlerThread;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->o:Landroid/os/HandlerThread;

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 4
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/hunantv/media/player/subtitle/e;->q:I

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    :cond_0
    return-void
.end method

.method public a(JLcom/hunantv/media/player/b/a$a;)V
    .locals 3

    .line 6
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    invoke-direct {p0, p3}, Lcom/hunantv/media/player/subtitle/e;->c(Lcom/hunantv/media/player/b/a$a;)I

    move-result p3

    aput-wide p1, v0, p3

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/hunantv/media/player/b/a$a;)V
    .locals 3

    .line 9
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleUpdate mStopped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/e;->c(Lcom/hunantv/media/player/b/a$a;)I

    move-result p1

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 5

    .line 13
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    iput-boolean v3, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->m:Z

    iput-boolean v4, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    invoke-direct {p0, v3, v1, v2}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeProvider"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->d:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/e;->f:Z

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/hunantv/media/player/b/a$a;)V
    .locals 4

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 p1, v1, 0x1

    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->i:[Lcom/hunantv/media/player/b/a$a;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/e;->j:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    aput-wide v2, p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 3

    .line 4
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->f:Z

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/e;->o:Landroid/os/HandlerThread;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/subtitle/e;->a(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public onSeekComplete(II)V
    .locals 2

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/e;->n:Z

    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(IJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
