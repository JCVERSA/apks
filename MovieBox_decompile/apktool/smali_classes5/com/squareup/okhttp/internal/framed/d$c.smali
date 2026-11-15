.class final Lcom/squareup/okhttp/internal/framed/d$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Lcom/squareup/okhttp/internal/framed/d$a;

.field private final c:Z

.field final d:Lcom/squareup/okhttp/internal/framed/c$a;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->c:Z

    .line 7
    .line 8
    new-instance p3, Lcom/squareup/okhttp/internal/framed/d$a;

    .line 9
    .line 10
    invoke-direct {p3, p1}, Lcom/squareup/okhttp/internal/framed/d$a;-><init>(Lokio/BufferedSource;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->b:Lcom/squareup/okhttp/internal/framed/d$a;

    .line 14
    .line 15
    new-instance p1, Lcom/squareup/okhttp/internal/framed/c$a;

    .line 16
    .line 17
    invoke-direct {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/c$a;-><init>(ILokio/Source;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    .line 21
    .line 22
    return-void
.end method

.method private b(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    and-int/lit8 v2, p3, 0x20

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0x8

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 18
    .line 19
    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    int-to-short v1, v1

    .line 26
    :cond_1
    invoke-static {p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 31
    .line 32
    invoke-interface {p1, v0, p4, p3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 36
    .line 37
    int-to-long p2, v1

    .line 38
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 43
    .line 44
    new-array p2, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    throw p1
.end method

.method private d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-lt p2, v1, :cond_3

    .line 6
    .line 7
    if-nez p4, :cond_2

    .line 8
    .line 9
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 16
    .line 17
    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr p2, v1

    .line 22
    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 29
    .line 30
    if-lez p2, :cond_0

    .line 31
    .line 32
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 33
    .line 34
    int-to-long v2, p2

    .line 35
    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :cond_0
    invoke-interface {p1, p4, v1, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-array p2, p3, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p1, p2, v0

    .line 50
    .line 51
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 61
    .line 62
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1

    .line 67
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-array p2, p3, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p1, p2, v0

    .line 74
    .line 75
    const-string p1, "TYPE_GOAWAY length < 8: %s"

    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    throw p1
.end method

.method private f(ISBI)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->b:Lcom/squareup/okhttp/internal/framed/d$a;

    .line 2
    .line 3
    iput p1, v0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    .line 4
    .line 5
    iput p1, v0, Lcom/squareup/okhttp/internal/framed/d$a;->b:I

    .line 6
    .line 7
    iput-short p2, v0, Lcom/squareup/okhttp/internal/framed/d$a;->f:S

    .line 8
    .line 9
    iput-byte p3, v0, Lcom/squareup/okhttp/internal/framed/d$a;->c:B

    .line 10
    .line 11
    iput p4, v0, Lcom/squareup/okhttp/internal/framed/d$a;->d:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c$a;->l()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c$a;->e()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private h(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_3

    .line 3
    .line 4
    and-int/lit8 v1, p3, 0x1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    move v4, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v4, v0

    .line 12
    :goto_0
    and-int/lit8 v1, p3, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 17
    .line 18
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 23
    .line 24
    int-to-short v0, v0

    .line 25
    :cond_1
    and-int/lit8 v1, p3, 0x20

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 p2, p2, -0x5

    .line 33
    .line 34
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->f(ISBI)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/4 v6, -0x1

    .line 43
    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    move-object v2, p1

    .line 47
    move v5, p4

    .line 48
    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 53
    .line 54
    new-array p2, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1
.end method

.method private j(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-ne p2, v2, :cond_2

    .line 6
    .line 7
    if-nez p4, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 16
    .line 17
    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    and-int/2addr p3, v0

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string p1, "TYPE_PING streamId != 0"

    .line 31
    .line 32
    new-array p2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1

    .line 39
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-array p2, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, p2, v1

    .line 46
    .line 47
    const-string p1, "TYPE_PING length != 8: %s"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    throw p1
.end method

.method private k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    const v3, 0x7fffffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v0, v3

    .line 20
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 21
    .line 22
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 27
    .line 28
    add-int/2addr v3, v2

    .line 29
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x5

    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 14
    .line 15
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    throw p1

    .line 20
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x1

    .line 25
    new-array p2, p2, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p1, p2, p3

    .line 28
    .line 29
    const-string p1, "TYPE_PRIORITY length: %d != 5"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    throw p1
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 v1, p3, 0x8

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    int-to-short v0, v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 18
    .line 19
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v1, v2

    .line 27
    add-int/lit8 p2, p2, -0x4

    .line 28
    .line 29
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->f(ISBI)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p4, v1, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 42
    .line 43
    new-array p2, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1
.end method

.method private n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne p2, v1, :cond_2

    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-static {p2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, p4, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-array p2, p3, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, p2, v0

    .line 31
    .line 32
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1

    .line 39
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 42
    .line 43
    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-array p2, p3, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p1, p2, v0

    .line 55
    .line 56
    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1
.end method

.method private o(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p4, :cond_9

    .line 4
    .line 5
    and-int/2addr p3, v0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 15
    .line 16
    new-array p2, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    .line 24
    .line 25
    if-nez p3, :cond_8

    .line 26
    .line 27
    new-instance p3, Lcom/squareup/okhttp/internal/framed/h;

    .line 28
    .line 29
    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    .line 30
    .line 31
    .line 32
    move p4, v1

    .line 33
    :goto_0
    if-ge p4, p2, :cond_6

    .line 34
    .line 35
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 36
    .line 37
    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 42
    .line 43
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    packed-switch v2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-array p2, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, p2, v1

    .line 57
    .line 58
    const-string p1, "PROTOCOL_ERROR invalid settings id: %s"

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1

    .line 65
    :pswitch_0
    const/16 v4, 0x4000

    .line 66
    .line 67
    if-lt v3, v4, :cond_2

    .line 68
    .line 69
    const v4, 0xffffff

    .line 70
    .line 71
    .line 72
    if-gt v3, v4, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-array p2, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p1, p2, v1

    .line 82
    .line 83
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    .line 84
    .line 85
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    throw p1

    .line 90
    :pswitch_1
    if-ltz v3, :cond_3

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 95
    .line 96
    new-array p2, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    throw p1

    .line 103
    :pswitch_2
    const/4 v2, 0x4

    .line 104
    goto :goto_1

    .line 105
    :pswitch_3
    if-eqz v3, :cond_5

    .line 106
    .line 107
    if-ne v3, v0, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 111
    .line 112
    new-array p2, v1, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    throw p1

    .line 119
    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v1, v3}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    .line 120
    .line 121
    .line 122
    add-int/lit8 p4, p4, 0x6

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-interface {p1, v1, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/h;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/h;->d()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ltz p1, :cond_7

    .line 133
    .line 134
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/h;->d()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/c$a;->g(I)V

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void

    .line 144
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-array p2, v0, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object p1, p2, v1

    .line 151
    .line 152
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    .line 153
    .line 154
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    throw p1

    .line 159
    :cond_9
    const-string p1, "TYPE_SETTINGS streamId != 0"

    .line 160
    .line 161
    new-array p2, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    throw p1

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private p(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne p2, v1, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 7
    .line 8
    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    int-to-long v1, p2

    .line 13
    const-wide/32 v3, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-long/2addr v1, v3

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long p2, v1, v3

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, p4, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-array p2, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, p2, p3

    .line 34
    .line 35
    const-string p1, "windowSizeIncrement was 0"

    .line 36
    .line 37
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array p2, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p1, p2, p3

    .line 49
    .line 50
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 4
    .line 5
    const-wide/16 v3, 0x9

    .line 6
    .line 7
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/d;->d(Lokio/BufferedSource;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x4000

    .line 19
    .line 20
    if-gt v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 23
    .line 24
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 32
    .line 33
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    int-to-byte v3, v3

    .line 40
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 41
    .line 42
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const v5, 0x7fffffff

    .line 47
    .line 48
    .line 49
    and-int/2addr v4, v5

    .line 50
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v1, v4, v2, v0, v3}, Lcom/squareup/okhttp/internal/framed/d$b;->b(ZIIBB)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 77
    .line 78
    int-to-long v2, v2

    .line 79
    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->p(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->j(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_4
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->o(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_6
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_7
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->h(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_8
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->b(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object p1, v1, v0

    .line 126
    .line 127
    const-string p1, "FRAME_SIZE_ERROR: %s"

    .line 128
    .line 129
    invoke-static {p1, v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    throw p1

    .line 134
    :catch_0
    return v0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->c:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->a()Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-long v3, v3

    .line 19
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-array v5, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    const-string v4, "<< CONNECTION %s"

    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->a()Lokio/ByteString;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v2}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v2, v1, v0

    .line 74
    .line 75
    const-string v0, "Expected a connection header but was %s"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    throw v0
.end method
