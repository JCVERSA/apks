.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "source.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 3
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/squareup/okhttp/internal/framed/h;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v2, v3, v4

    .line 18
    .line 19
    const-string v2, "OkHttp %s ACK Settings"

    .line 20
    .line 21
    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/h;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 1
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 10
    .line 11
    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 24
    .line 25
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 28
    .line 29
    .line 30
    int-to-long p1, p4

    .line 31
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/a;->v(Lokio/BufferedSource;I)V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->w()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 5

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/squareup/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    move-object v2, v0

    .line 17
    goto :goto_4

    .line 18
    :catch_0
    move-object v1, v0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 21
    .line 22
    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 34
    .line 35
    invoke-static {v2, v1, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    .line 37
    .line 38
    :catch_1
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :catchall_1
    move-exception v2

    .line 45
    move-object v4, v2

    .line 46
    move-object v2, v1

    .line 47
    move-object v1, v4

    .line 48
    goto :goto_4

    .line 49
    :catch_2
    :goto_2
    :try_start_3
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    .line 51
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 52
    .line 53
    invoke-static {v1, v0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_3
    return-void

    .line 58
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 59
    .line 60
    invoke-static {v3, v2, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 61
    .line 62
    .line 63
    :catch_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method public goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 5
    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 8
    .line 9
    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-array v0, v0, [Lcom/squareup/okhttp/internal/framed/a;

    .line 28
    .line 29
    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, [Lcom/squareup/okhttp/internal/framed/a;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    .line 39
    .line 40
    .line 41
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    array-length p2, p3

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-ge v0, p2, :cond_1

    .line 45
    .line 46
    aget-object v1, p3, v0

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->o()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-le v2, p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->s()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/a;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->o()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1
.end method

.method public headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/b;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 p4, 0x2

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 3
    .line 4
    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 11
    .line 12
    invoke-static {p1, p3, p5, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->j(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    .line 41
    .line 42
    .line 43
    move-result p6

    .line 44
    if-eqz p6, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 47
    .line 48
    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 49
    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_2
    iget-object p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 56
    .line 57
    invoke-static {p6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->m(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    .line 58
    .line 59
    .line 60
    move-result p6

    .line 61
    if-gt p3, p6, :cond_3

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :cond_3
    rem-int/lit8 p6, p3, 0x2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    rem-int/2addr v1, p4

    .line 74
    if-ne p6, v1, :cond_4

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :cond_4
    new-instance p6, Lcom/squareup/okhttp/internal/framed/a;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 81
    .line 82
    move-object v1, p6

    .line 83
    move v2, p3

    .line 84
    move v4, p1

    .line 85
    move v5, p2

    .line 86
    move-object v6, p5

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/a;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 91
    .line 92
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r()Ljava/util/concurrent/ExecutorService;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p2, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;

    .line 113
    .line 114
    const-string p5, "OkHttp %s stream %d"

    .line 115
    .line 116
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    new-array p4, p4, [Ljava/lang/Object;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    aput-object v1, p4, v2

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    aput-object p3, p4, v1

    .line 133
    .line 134
    invoke-direct {p2, p0, p5, p4, p6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/a;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    sget-object p1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/framed/a;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_6
    invoke-virtual {v1, p5, p6}, Lcom/squareup/okhttp/internal/framed/a;->x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 161
    .line 162
    .line 163
    if-eqz p2, :cond_7

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->w()V

    .line 166
    .line 167
    .line 168
    :cond_7
    return-void

    .line 169
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    throw p1
.end method

.method public ping(ZII)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/g;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->f(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public settings(ZLcom/squareup/okhttp/internal/framed/h;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 9
    .line 10
    const/high16 v4, 0x10000

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/h;->a()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/h;->j(Lcom/squareup/okhttp/internal/framed/h;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d0()Lcom/squareup/okhttp/Protocol;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    .line 43
    .line 44
    if-ne p1, v5, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/framed/h;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 p2, -0x1

    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eq p1, p2, :cond_3

    .line 62
    .line 63
    if-eq p1, v3, :cond_3

    .line 64
    .line 65
    sub-int/2addr p1, v3

    .line 66
    int-to-long p1, p1

    .line 67
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 76
    .line 77
    invoke-virtual {v3, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->W(J)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 81
    .line 82
    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 86
    .line 87
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 98
    .line 99
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 108
    .line 109
    invoke-static {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    new-array v6, v6, [Lcom/squareup/okhttp/internal/framed/a;

    .line 118
    .line 119
    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    move-object v6, v3

    .line 124
    check-cast v6, [Lcom/squareup/okhttp/internal/framed/a;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move-wide p1, v4

    .line 128
    :cond_4
    :goto_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->r()Ljava/util/concurrent/ExecutorService;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;

    .line 133
    .line 134
    const-string v8, "OkHttp %s settings"

    .line 135
    .line 136
    iget-object v9, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 137
    .line 138
    invoke-static {v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    new-array v10, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v9, v10, v0

    .line 145
    .line 146
    invoke-direct {v7, p0, v8, v10}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v6, :cond_5

    .line 154
    .line 155
    cmp-long v2, p1, v4

    .line 156
    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    array-length v2, v6

    .line 160
    :goto_2
    if-ge v0, v2, :cond_5

    .line 161
    .line 162
    aget-object v3, v6, v0

    .line 163
    .line 164
    monitor-enter v3

    .line 165
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->i(J)V

    .line 166
    .line 167
    .line 168
    monitor-exit v3

    .line 169
    add-int/2addr v0, v1

    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception p1

    .line 172
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    throw p1

    .line 174
    :cond_5
    return-void

    .line 175
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    throw p1
.end method

.method public windowUpdate(IJ)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 7
    .line 8
    iget-wide v1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 9
    .line 10
    add-long/2addr v1, p2

    .line 11
    iput-wide v1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->e0(I)Lcom/squareup/okhttp/internal/framed/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/a;->i(J)V

    .line 31
    .line 32
    .line 33
    monitor-exit p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p2

    .line 36
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    throw p2

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
