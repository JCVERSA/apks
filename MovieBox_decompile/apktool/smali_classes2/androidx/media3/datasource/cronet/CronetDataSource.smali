.class public Landroidx/media3/datasource/cronet/CronetDataSource;
.super Lw1/a;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;,
        Landroidx/media3/datasource/cronet/CronetDataSource$c;,
        Landroidx/media3/datasource/cronet/CronetDataSource$b;
    }
.end annotation


# instance fields
.field private A:Ljava/io/IOException;

.field private B:Z

.field private volatile C:J

.field private final e:Lorg/chromium/net/CronetEngine;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private final m:Landroidx/media3/datasource/HttpDataSource$b;

.field private final n:Landroidx/media3/datasource/HttpDataSource$b;

.field private final o:Landroidx/media3/common/util/l;

.field private final p:Landroidx/media3/common/util/i;

.field private final q:I

.field private final r:Lcom/google/common/base/n;

.field private final s:Z

.field private t:Z

.field private u:J

.field private v:Lorg/chromium/net/UrlRequest;

.field w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

.field private x:Lw1/h;

.field private y:Ljava/nio/ByteBuffer;

.field private z:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.datasource.cronet"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Landroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZI)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lw1/a;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/chromium/net/CronetEngine;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->e:Lorg/chromium/net/CronetEngine;

    .line 12
    .line 13
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    iput p3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->g:I

    .line 22
    .line 23
    iput p4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->h:I

    .line 24
    .line 25
    iput p5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->i:I

    .line 26
    .line 27
    iput-boolean p6, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->j:Z

    .line 28
    .line 29
    iput-boolean p7, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->k:Z

    .line 30
    .line 31
    iput-object p8, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->l:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p9, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->m:Landroidx/media3/datasource/HttpDataSource$b;

    .line 34
    .line 35
    iput-object p10, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->r:Lcom/google/common/base/n;

    .line 36
    .line 37
    iput-boolean p11, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->s:Z

    .line 38
    .line 39
    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    .line 42
    .line 43
    iput p12, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->q:I

    .line 44
    .line 45
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$b;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->n:Landroidx/media3/datasource/HttpDataSource$b;

    .line 51
    .line 52
    new-instance p1, Landroidx/media3/common/util/l;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/media3/common/util/l;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 58
    .line 59
    return-void
.end method

.method private static A(Lorg/chromium/net/UrlRequest;)I
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/common/util/l;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/util/l;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$a;

    .line 10
    .line 11
    invoke-direct {v2, v1, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$a;-><init>([ILandroidx/media3/common/util/l;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/common/util/l;->a()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    aget p0, v1, p0

    .line 22
    .line 23
    return p0
.end method

.method private static B(Lorg/chromium/net/UrlResponseInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "Content-Encoding"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "identity"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    xor-int/lit8 p0, p0, 0x1

    .line 48
    .line 49
    return p0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method private static C(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ";"

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method private D(Ljava/nio/ByteBuffer;Lw1/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/chromium/net/UrlRequest;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 15
    .line 16
    iget v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->i:I

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/l;->b(J)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    if-ne p1, v3, :cond_1

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    :cond_1
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 40
    .line 41
    const/16 v1, 0x7d2

    .line 42
    .line 43
    invoke-direct {p1, v2, p2, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_1
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    if-ne p1, v2, :cond_2

    .line 52
    .line 53
    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    instance-of v1, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 78
    .line 79
    throw p1

    .line 80
    :cond_3
    invoke-static {p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lw1/h;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1

    .line 85
    :cond_4
    return-void
.end method

.method private E()[B
    .locals 5

    .line 1
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/media3/common/util/l;->d()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 20
    .line 21
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lw1/h;

    .line 26
    .line 27
    invoke-direct {p0, v1, v2}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_0

    .line 38
    .line 39
    array-length v2, v0

    .line 40
    array-length v3, v0

    .line 41
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    add-int/2addr v3, v4

    .line 46
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v0
.end method

.method private F()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->h:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    .line 12
    .line 13
    return-void
.end method

.method private G(JLw1/h;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :goto_0
    cmp-long v3, p1, v0

    .line 13
    .line 14
    if-lez v3, :cond_5

    .line 15
    .line 16
    const/16 v3, 0xe

    .line 17
    .line 18
    :try_start_0
    iget-object v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroidx/media3/common/util/l;->d()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, p3}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-boolean v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    .line 40
    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-long v4, v4

    .line 58
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    long-to-int v4, v4

    .line 63
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    add-int/2addr v5, v4

    .line 68
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    .line 70
    .line 71
    int-to-long v3, v4

    .line 72
    sub-long/2addr p1, v3

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance p1, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 77
    .line 78
    const/16 p2, 0x7d8

    .line 79
    .line 80
    invoke-direct {p1, p3, p2, v3}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Lw1/h;II)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    instance-of p2, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 91
    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    new-instance p2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 95
    .line 96
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    const/16 v0, 0x7d2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/16 v0, 0x7d1

    .line 104
    .line 105
    :goto_2
    invoke-direct {p2, p1, p3, v0, v3}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 106
    .line 107
    .line 108
    throw p2

    .line 109
    :cond_4
    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 110
    .line 111
    throw p1

    .line 112
    :cond_5
    return-void
.end method

.method static synthetic h(Landroidx/media3/datasource/cronet/CronetDataSource;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/datasource/cronet/CronetDataSource;)Lw1/h;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/datasource/cronet/CronetDataSource;Lw1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->x(Lw1/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Landroidx/media3/datasource/cronet/CronetDataSource;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic l(Landroidx/media3/datasource/cronet/CronetDataSource;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic m(Landroidx/media3/datasource/cronet/CronetDataSource;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic n(Landroidx/media3/datasource/cronet/CronetDataSource;)Landroidx/media3/common/util/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Landroidx/media3/datasource/cronet/CronetDataSource;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->C(Ljava/util/List;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic t(Landroidx/media3/datasource/cronet/CronetDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    .line 11
    .line 12
    cmp-long v3, v0, v3

    .line 13
    .line 14
    if-gez v3, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 17
    .line 18
    iget-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->C:J

    .line 19
    .line 20
    sub-long/2addr v3, v0

    .line 21
    const-wide/16 v0, 0x5

    .line 22
    .line 23
    add-long/2addr v3, v0

    .line 24
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/l;->b(J)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->p:Landroidx/media3/common/util/i;

    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v2
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/datasource/cronet/CronetDataSource$c;->a()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private x(Lw1/h;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/datasource/cronet/CronetDataSource$c;-><init>(Landroidx/media3/datasource/cronet/CronetDataSource;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->v(Lw1/h;)Lorg/chromium/net/UrlRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;

    .line 17
    .line 18
    return-void
.end method

.method private static y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
.end method

.method private z()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->q:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    xor-int/2addr v0, v2

    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/common/util/l;->d()Z

    .line 18
    .line 19
    .line 20
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->F()V

    .line 21
    .line 22
    .line 23
    iput-object v7, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 24
    .line 25
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/datasource/cronet/CronetDataSource;->x(Lw1/h;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->v:Lorg/chromium/net/UrlRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p1}, Lw1/a;->f(Lw1/h;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->u()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget-object v4, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-static {v2}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "err_cleartext_not_permitted"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    .line 63
    .line 64
    invoke-direct {v0, v4, v7}, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lw1/h;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_0
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 69
    .line 70
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v3, 0x7d1

    .line 75
    .line 76
    invoke-direct {v2, v4, v7, v3, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 77
    .line 78
    .line 79
    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :cond_1
    if-eqz v3, :cond_d

    .line 81
    .line 82
    iget-object v0, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 83
    .line 84
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lorg/chromium/net/UrlResponseInfo;

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string v4, "Content-Range"

    .line 99
    .line 100
    const/16 v5, 0xc8

    .line 101
    .line 102
    const-wide/16 v8, 0x0

    .line 103
    .line 104
    const-wide/16 v10, -0x1

    .line 105
    .line 106
    if-lt v3, v5, :cond_9

    .line 107
    .line 108
    const/16 v12, 0x12b

    .line 109
    .line 110
    if-le v3, v12, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    iget-object v12, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->r:Lcom/google/common/base/n;

    .line 114
    .line 115
    if-eqz v12, :cond_4

    .line 116
    .line 117
    const-string v13, "Content-Type"

    .line 118
    .line 119
    invoke-static {v6, v13}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-eqz v13, :cond_4

    .line 124
    .line 125
    invoke-interface {v12, v13}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    .line 133
    .line 134
    invoke-direct {v0, v13, v7}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lw1/h;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_4
    :goto_0
    if-ne v3, v5, :cond_5

    .line 139
    .line 140
    iget-wide v12, v7, Lw1/h;->g:J

    .line 141
    .line 142
    cmp-long v3, v12, v8

    .line 143
    .line 144
    if-eqz v3, :cond_5

    .line 145
    .line 146
    move-wide v8, v12

    .line 147
    :cond_5
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->B(Lorg/chromium/net/UrlResponseInfo;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_8

    .line 152
    .line 153
    iget-wide v12, v7, Lw1/h;->h:J

    .line 154
    .line 155
    cmp-long v0, v12, v10

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    iput-wide v12, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    const-string v0, "Content-Length"

    .line 163
    .line 164
    invoke-static {v6, v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v6, v4}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v0, v3}, Lw1/i;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    cmp-long v0, v3, v10

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    sub-long v10, v3, v8

    .line 181
    .line 182
    :cond_7
    iput-wide v10, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    iget-wide v3, v7, Lw1/h;->h:J

    .line 186
    .line 187
    iput-wide v3, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 188
    .line 189
    :goto_1
    iput-boolean v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lw1/a;->g(Lw1/h;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v8, v9, v7}, Landroidx/media3/datasource/cronet/CronetDataSource;->G(JLw1/h;)V

    .line 195
    .line 196
    .line 197
    iget-wide v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 198
    .line 199
    return-wide v2

    .line 200
    :cond_9
    :goto_2
    const/16 v5, 0x1a0

    .line 201
    .line 202
    if-ne v3, v5, :cond_b

    .line 203
    .line 204
    invoke-static {v6, v4}, Landroidx/media3/datasource/cronet/CronetDataSource;->y(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-static {v4}, Lw1/i;->c(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v12

    .line 212
    iget-wide v14, v7, Lw1/h;->g:J

    .line 213
    .line 214
    cmp-long v4, v14, v12

    .line 215
    .line 216
    if-nez v4, :cond_b

    .line 217
    .line 218
    iput-boolean v2, v1, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p1}, Lw1/a;->g(Lw1/h;)V

    .line 221
    .line 222
    .line 223
    iget-wide v2, v7, Lw1/h;->h:J

    .line 224
    .line 225
    cmp-long v0, v2, v10

    .line 226
    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    move-wide v8, v2

    .line 230
    :cond_a
    return-wide v8

    .line 231
    :cond_b
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->E()[B

    .line 232
    .line 233
    .line 234
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :goto_3
    move-object v8, v2

    .line 236
    goto :goto_4

    .line 237
    :catch_0
    sget-object v2, Landroidx/media3/common/util/a1;->f:[B

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :goto_4
    if-ne v3, v5, :cond_c

    .line 241
    .line 242
    new-instance v2, Landroidx/media3/datasource/DataSourceException;

    .line 243
    .line 244
    const/16 v4, 0x7d8

    .line 245
    .line 246
    invoke-direct {v2, v4}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 247
    .line 248
    .line 249
    :goto_5
    move-object v5, v2

    .line 250
    goto :goto_6

    .line 251
    :cond_c
    const/4 v2, 0x0

    .line 252
    goto :goto_5

    .line 253
    :goto_6
    new-instance v9, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 254
    .line 255
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    move-object v2, v9

    .line 260
    move-object/from16 v7, p1

    .line 261
    .line 262
    invoke-direct/range {v2 .. v8}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lw1/h;[B)V

    .line 263
    .line 264
    .line 265
    throw v9

    .line 266
    :cond_d
    :try_start_3
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 267
    .line 268
    new-instance v3, Ljava/net/SocketTimeoutException;

    .line 269
    .line 270
    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    const/16 v4, 0x7d2

    .line 278
    .line 279
    invoke-direct {v2, v3, v7, v4, v0}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 280
    .line 281
    .line 282
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 283
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 288
    .line 289
    .line 290
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 291
    .line 292
    new-instance v2, Ljava/io/InterruptedIOException;

    .line 293
    .line 294
    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 295
    .line 296
    .line 297
    const/16 v3, 0x3ec

    .line 298
    .line 299
    const/4 v4, -0x1

    .line 300
    invoke-direct {v0, v2, v7, v3, v4}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    instance-of v2, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 306
    .line 307
    if-eqz v2, :cond_e

    .line 308
    .line 309
    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 310
    .line 311
    throw v0

    .line 312
    :cond_e
    new-instance v2, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 313
    .line 314
    const/16 v3, 0x7d0

    .line 315
    .line 316
    const/4 v4, 0x0

    .line 317
    invoke-direct {v2, v0, v7, v3, v4}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/io/IOException;Lw1/h;II)V

    .line 318
    .line 319
    .line 320
    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->w()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->y:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->A:Ljava/io/IOException;

    .line 22
    .line 23
    iput-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    .line 24
    .line 25
    iget-boolean v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lw1/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lw1/h;->a:Landroid/net/Uri;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public read([BII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->t:Z

    .line 3
    .line 4
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-wide v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-direct {p0}, Landroidx/media3/datasource/cronet/CronetDataSource;->z()Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_3

    .line 29
    .line 30
    iget-object v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->o:Landroidx/media3/common/util/l;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/media3/common/util/l;->d()Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->x:Lw1/h;

    .line 39
    .line 40
    invoke-static {v5}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lw1/h;

    .line 45
    .line 46
    invoke-direct {p0, v1, v5}, Landroidx/media3/datasource/cronet/CronetDataSource;->D(Ljava/nio/ByteBuffer;Lw1/h;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->B:Z

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    iput-wide v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-wide v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 67
    .line 68
    const-wide/16 v4, -0x1

    .line 69
    .line 70
    cmp-long v6, v2, v4

    .line 71
    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    int-to-long v6, v6

    .line 85
    int-to-long v8, p3

    .line 86
    const/4 p3, 0x3

    .line 87
    new-array p3, p3, [J

    .line 88
    .line 89
    aput-wide v2, p3, v0

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    aput-wide v6, p3, v0

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    aput-wide v8, p3, v0

    .line 96
    .line 97
    invoke-static {p3}, Lcom/google/common/primitives/Longs;->i([J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    long-to-int p3, v2

    .line 102
    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    iget-wide p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 106
    .line 107
    cmp-long v0, p1, v4

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    int-to-long v0, p3

    .line 112
    sub-long/2addr p1, v0

    .line 113
    iput-wide p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->u:J

    .line 114
    .line 115
    :cond_5
    invoke-virtual {p0, p3}, Lw1/a;->d(I)V

    .line 116
    .line 117
    .line 118
    return p3
.end method

.method protected v(Lw1/h;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->e:Lorg/chromium/net/CronetEngine;

    .line 2
    .line 3
    iget-object v1, p1, Lw1/h;->a:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->w:Landroidx/media3/datasource/cronet/CronetDataSource$c;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->g:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setPriority(I)Lorg/chromium/net/UrlRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->m:Landroidx/media3/datasource/HttpDataSource$b;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$b;->b()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->n:Landroidx/media3/datasource/HttpDataSource$b;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$b;->b()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lw1/h;->e:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v4, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p1, Lw1/h;->d:[B

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    const-string v2, "Content-Type"

    .line 98
    .line 99
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;

    .line 107
    .line 108
    const/16 v1, 0x3ec

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    const-string v3, "HTTP request with non-empty body must set Content-Type"

    .line 112
    .line 113
    invoke-direct {v0, v3, p1, v1, v2}, Landroidx/media3/datasource/cronet/CronetDataSource$OpenException;-><init>(Ljava/lang/String;Lw1/h;II)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_3
    :goto_1
    iget-wide v1, p1, Lw1/h;->g:J

    .line 118
    .line 119
    iget-wide v3, p1, Lw1/h;->h:J

    .line 120
    .line 121
    invoke-static {v1, v2, v3, v4}, Lw1/i;->a(JJ)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    const-string v2, "Range"

    .line 128
    .line 129
    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->l:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    const-string v2, "User-Agent"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {p1}, Lw1/h;->b()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Lw1/h;->d:[B

    .line 149
    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    new-instance v1, Landroidx/media3/datasource/cronet/a;

    .line 153
    .line 154
    invoke-direct {v1, p1}, Landroidx/media3/datasource/cronet/a;-><init>([B)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource;->f:Ljava/util/concurrent/Executor;

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 160
    .line 161
    .line 162
    :cond_6
    return-object v0
.end method
