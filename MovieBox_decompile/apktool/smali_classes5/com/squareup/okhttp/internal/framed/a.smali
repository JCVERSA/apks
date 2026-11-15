.class public final Lcom/squareup/okhttp/internal/framed/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/a$d;,
        Lcom/squareup/okhttp/internal/framed/a$b;,
        Lcom/squareup/okhttp/internal/framed/a$c;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field private final c:I

.field private final d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private final e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private final g:Lcom/squareup/okhttp/internal/framed/a$c;

.field final h:Lcom/squareup/okhttp/internal/framed/a$b;

.field private final i:Lcom/squareup/okhttp/internal/framed/a$d;

.field private final j:Lcom/squareup/okhttp/internal/framed/a$d;

.field private k:Lcom/squareup/okhttp/internal/framed/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->a:J

    .line 7
    .line 8
    new-instance v0, Lcom/squareup/okhttp/internal/framed/a$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/a$d;-><init>(Lcom/squareup/okhttp/internal/framed/a;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 14
    .line 15
    new-instance v0, Lcom/squareup/okhttp/internal/framed/a$d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/a$d;-><init>(Lcom/squareup/okhttp/internal/framed/a;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    if-eqz p5, :cond_0

    .line 28
    .line 29
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 30
    .line 31
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 32
    .line 33
    iget-object p1, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 34
    .line 35
    const/high16 v1, 0x10000

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long v2, p1

    .line 42
    iput-wide v2, p0, Lcom/squareup/okhttp/internal/framed/a;->b:J

    .line 43
    .line 44
    new-instance p1, Lcom/squareup/okhttp/internal/framed/a$c;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p:Lcom/squareup/okhttp/internal/framed/h;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    int-to-long v1, p2

    .line 53
    invoke-direct {p1, p0, v1, v2, v0}, Lcom/squareup/okhttp/internal/framed/a$c;-><init>(Lcom/squareup/okhttp/internal/framed/a;JLcom/squareup/okhttp/internal/framed/a$a;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 57
    .line 58
    new-instance p2, Lcom/squareup/okhttp/internal/framed/a$b;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/squareup/okhttp/internal/framed/a$b;-><init>(Lcom/squareup/okhttp/internal/framed/a;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 64
    .line 65
    invoke-static {p1, p4}, Lcom/squareup/okhttp/internal/framed/a$c;->d(Lcom/squareup/okhttp/internal/framed/a$c;Z)Z

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p3}, Lcom/squareup/okhttp/internal/framed/a$b;->d(Lcom/squareup/okhttp/internal/framed/a$b;Z)Z

    .line 69
    .line 70
    .line 71
    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/util/List;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 75
    .line 76
    const-string p2, "requestHeaders == null"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 83
    .line 84
    const-string p2, "connection == null"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$c;->b(Lcom/squareup/okhttp/internal/framed/a$c;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$c;->f(Lcom/squareup/okhttp/internal/framed/a$c;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->b(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->f(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/a;->t()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/a;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 56
    .line 57
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_2
    return-void

    .line 63
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v0
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->f(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->b(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "stream was reset: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 48
    .line 49
    const-string v1, "stream finished"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 56
    .line 57
    const-string v1, "stream closed"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$c;->b(Lcom/squareup/okhttp/internal/framed/a$c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->b(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return v1

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 36
    .line 37
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method private z()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 8
    .line 9
    .line 10
    throw v0
.end method


# virtual methods
.method public A()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 2
    .line 3
    return-object v0
.end method

.method i(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->b:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->b:J

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 9
    .line 10
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->E0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 9
    .line 10
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 3
    .line 4
    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a$d;->exitAndThrowIfTimedOut()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "stream was reset: "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a$d;->exitAndThrowIfTimedOut()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    throw v0
.end method

.method public q()Lokio/Sink;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/a;->s()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "reply before requesting the sink"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 25
    .line 26
    return-object v0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public r()Lokio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 12
    .line 13
    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    .line 14
    .line 15
    if-ne v3, v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v1, v2

    .line 19
    :goto_1
    return v1
.end method

.method public declared-synchronized t()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$c;->b(Lcom/squareup/okhttp/internal/framed/a$c;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$c;->f(Lcom/squareup/okhttp/internal/framed/a$c;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->b(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Lcom/squareup/okhttp/internal/framed/a$b;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a$b;->f(Lcom/squareup/okhttp/internal/framed/a$b;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return v1

    .line 50
    :cond_3
    monitor-exit p0

    .line 51
    const/4 v0, 0x1

    .line 52
    return v0

    .line 53
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method

.method public u()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:Lcom/squareup/okhttp/internal/framed/a$d;

    .line 2
    .line 3
    return-object v0
.end method

.method v(Lokio/BufferedSource;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 2
    .line 3
    int-to-long v1, p2

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/framed/a$c;->j(Lokio/BufferedSource;J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method w()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:Lcom/squareup/okhttp/internal/framed/a$c;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/a$c;->d(Lcom/squareup/okhttp/internal/framed/a$c;Z)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/a;->t()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 19
    .line 20
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/a;->t()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->f:Ljava/util/List;

    .line 52
    .line 53
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/framed/a;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-nez v2, :cond_4

    .line 61
    .line 62
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 63
    .line 64
    iget p2, p0, Lcom/squareup/okhttp/internal/framed/a;->c:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void

    .line 70
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1
.end method

.method declared-synchronized y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method
