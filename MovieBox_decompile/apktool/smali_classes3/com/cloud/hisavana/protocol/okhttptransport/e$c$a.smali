.class Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;
.super Lorg/chromium/net/UploadDataProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

.field private final c:Lcom/google/common/util/concurrent/t;

.field private final d:J

.field private e:Lcom/google/common/util/concurrent/r;

.field private f:J


# direct methods
.method private constructor <init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    .line 5
    instance-of p1, p3, Lcom/google/common/util/concurrent/t;

    if-eqz p1, :cond_0

    .line 6
    check-cast p3, Lcom/google/common/util/concurrent/t;

    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p3}, Lcom/google/common/util/concurrent/MoreExecutors;->b(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/t;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    :goto_0
    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-nez p1, :cond_1

    const-wide/32 p4, 0x7fffffff

    .line 8
    :cond_1
    iput-wide p4, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;JLcom/cloud/hisavana/protocol/okhttptransport/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;-><init>(Lokhttp3/RequestBody;Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->k()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    .line 2
    .line 3
    return-object p0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->c:Lcom/google/common/util/concurrent/t;

    .line 6
    .line 7
    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/f;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/f;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/t;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/r;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    .line 17
    .line 18
    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/r;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private j(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    :goto_0
    const-string v3, "END_OF_BODY reads shouldn\'t write anything to the buffer"

    .line 31
    .line 32
    new-array v4, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v2, v3, v4}, Lcom/google/common/base/s;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iget-wide v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 49
    .line 50
    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->l(JJ)Ljava/io/IOException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    throw p1
.end method

.method private synthetic k()Ljava/lang/Void;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    .line 2
    .line 3
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->h()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method private static l(JJ)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Expected "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " bytes but got at least "

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->d:J

    .line 12
    .line 13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/z;->b(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sub-int/2addr p1, v0

    .line 26
    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 27
    .line 28
    int-to-long v4, p1

    .line 29
    add-long/2addr v2, v4

    .line 30
    iput-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 31
    .line 32
    return-object v1
.end method

.method private n(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-gtz v2, :cond_3

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    cmp-long v2, v2, v4

    .line 23
    .line 24
    if-gez v2, :cond_2

    .line 25
    .line 26
    sget-object p2, Lcom/cloud/hisavana/protocol/okhttptransport/e$a;->a:[I

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    aget p2, p2, v1

    .line 33
    .line 34
    if-eq p2, v0, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq p2, v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 41
    .line 42
    const-string v1, "The source has been exhausted but we expected more data!"

    .line 43
    .line 44
    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :catch_0
    move-exception p2

    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->j(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    iget-wide v3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->f:J

    .line 66
    .line 67
    invoke-static {v1, v2, v3, v4}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->l(JJ)Ljava/io/IOException;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    throw p2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/io/IOException;

    .line 78
    .line 79
    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method private o(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->m(Ljava/nio/ByteBuffer;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p2

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p2

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->e:Lcom/google/common/util/concurrent/r;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->a:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->getLength()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->o(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->n(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Rewind is not supported!"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
