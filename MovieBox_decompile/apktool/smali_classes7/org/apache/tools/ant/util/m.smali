.class public Lorg/apache/tools/ant/util/m;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/tools/ant/util/m;->b:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/tools/ant/util/m;->a:Ljava/io/OutputStream;

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/m;->c:Z

    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/util/m;->i(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "OutputStreamFunneler.<init>:  out == null"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method static synthetic a(Lorg/apache/tools/ant/util/m;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/util/m;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/apache/tools/ant/util/m;->b:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic b(Lorg/apache/tools/ant/util/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/m;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lorg/apache/tools/ant/util/m;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tools/ant/util/m;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lorg/apache/tools/ant/util/m;Lorg/apache/tools/ant/util/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/m;->h(Lorg/apache/tools/ant/util/m$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/m;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/util/m;->a:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/m;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_1
    move-exception v1

    .line 18
    :try_start_2
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/m;->c:Z

    .line 19
    .line 20
    throw v1

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/m;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 9
    .line 10
    const-string v1, "The funneled OutputStream has been closed."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method private declared-synchronized h(Lorg/apache/tools/ant/util/m$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/m$a;->b(Lorg/apache/tools/ant/util/m$a;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iget-wide v1, p0, Lorg/apache/tools/ant/util/m;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, v1, v3

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    :try_start_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    :cond_0
    :goto_0
    :try_start_3
    iget v1, p0, Lorg/apache/tools/ant/util/m;->b:I

    .line 24
    .line 25
    sub-int/2addr v1, v0

    .line 26
    iput v1, p0, Lorg/apache/tools/ant/util/m;->b:I

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/util/m;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    :try_start_4
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/m$a;->d(Lorg/apache/tools/ant/util/m$a;Z)Z

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :goto_1
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/m$a;->d(Lorg/apache/tools/ant/util/m$a;Z)Z

    .line 40
    .line 41
    .line 42
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    :cond_2
    :goto_2
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 46
    throw p1
.end method


# virtual methods
.method public declared-synchronized g()Ljava/io/OutputStream;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/m;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/m$a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/util/m$a;-><init>(Lorg/apache/tools/ant/util/m;Lorg/apache/tools/ant/util/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_1
    move-exception v0

    .line 19
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    throw v0
.end method

.method public declared-synchronized i(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lorg/apache/tools/ant/util/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
