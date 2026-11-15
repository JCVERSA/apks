.class final Lcom/squareup/okhttp/internal/framed/i$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Z

.field private final c:Lcom/squareup/okhttp/internal/framed/f;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 5
    .line 6
    new-instance v0, Lcom/squareup/okhttp/internal/framed/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/framed/f;-><init>(Lokio/BufferedSource;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->c:Lcom/squareup/okhttp/internal/framed/f;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/i$a;->b:Z

    .line 14
    .line 15
    return-void
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method private d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne p3, v1, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p3, v1

    .line 17
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 18
    .line 19
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 30
    .line 31
    invoke-interface {p1, p3, v2, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-array p3, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, p3, p2

    .line 42
    .line 43
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    .line 44
    .line 45
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-array p3, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, p3, p2

    .line 57
    .line 58
    const-string p1, "TYPE_GOAWAY length: %d != 8"

    .line 59
    .line 60
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method private f(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    and-int v4, p2, v0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/i$a;->c:Lcom/squareup/okhttp/internal/framed/f;

    .line 13
    .line 14
    add-int/lit8 p3, p3, -0x4

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/internal/framed/f;->f(I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v5, -0x1

    .line 21
    sget-object v7, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v1, p1

    .line 26
    invoke-interface/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private h(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne p3, v1, :cond_2

    .line 5
    .line 6
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 7
    .line 8
    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->b:Z

    .line 13
    .line 14
    and-int/lit8 v2, p3, 0x1

    .line 15
    .line 16
    if-ne v2, v0, :cond_0

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, p2

    .line 21
    :goto_0
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p2

    .line 25
    :goto_1
    invoke-interface {p1, v0, p3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-array p3, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, p3, p2

    .line 36
    .line 37
    const-string p1, "TYPE_PING length: %d != 4"

    .line 38
    .line 39
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method private j(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne p3, v1, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p3, v1

    .line 17
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 18
    .line 19
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, p3, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-array p3, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, p3, p2

    .line 40
    .line 41
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    .line 42
    .line 43
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1

    .line 48
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-array p3, v0, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p1, p3, p2

    .line 55
    .line 56
    const-string p1, "TYPE_RST_STREAM length: %d != 8"

    .line 57
    .line 58
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    throw p1
.end method

.method private k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 4
    .line 5
    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    mul-int/lit8 v3, v2, 0x8

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x4

    .line 12
    .line 13
    if-ne p3, v3, :cond_2

    .line 14
    .line 15
    new-instance p3, Lcom/squareup/okhttp/internal/framed/h;

    .line 16
    .line 17
    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    .line 18
    .line 19
    .line 20
    move v3, v0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 24
    .line 25
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 30
    .line 31
    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/high16 v6, -0x1000000

    .line 36
    .line 37
    and-int/2addr v6, v4

    .line 38
    ushr-int/lit8 v6, v6, 0x18

    .line 39
    .line 40
    const v7, 0xffffff

    .line 41
    .line 42
    .line 43
    and-int/2addr v4, v7

    .line 44
    invoke-virtual {p3, v4, v6, v5}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    .line 45
    .line 46
    .line 47
    add-int/2addr v3, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    and-int/2addr p2, v1

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_1
    invoke-interface {p1, v0, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/h;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/4 p3, 0x2

    .line 66
    new-array p3, p3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p1, p3, v0

    .line 69
    .line 70
    aput-object p2, p3, v1

    .line 71
    .line 72
    const-string p1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    .line 73
    .line 74
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    throw p1
.end method

.method private l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    and-int v5, v0, v1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->c:Lcom/squareup/okhttp/internal/framed/f;

    .line 13
    .line 14
    add-int/lit8 p3, p3, -0x4

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/f;->f(I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    const/4 p3, 0x1

    .line 21
    and-int/2addr p2, p3

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    move v4, p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    move v4, p2

    .line 28
    :goto_0
    const/4 v6, -0x1

    .line 29
    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v2, p1

    .line 33
    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int v6, v0, v2

    .line 17
    .line 18
    and-int v7, v1, v2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 21
    .line 22
    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->c:Lcom/squareup/okhttp/internal/framed/f;

    .line 26
    .line 27
    add-int/lit8 p3, p3, -0xa

    .line 28
    .line 29
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/f;->f(I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    and-int/lit8 p3, p2, 0x1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    move v5, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v5, v0

    .line 42
    :goto_0
    and-int/lit8 p2, p2, 0x2

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    move v4, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v4, v0

    .line 49
    :goto_1
    sget-object v9, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    .line 50
    .line 51
    move-object v3, p1

    .line 52
    invoke-interface/range {v3 .. v9}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne p3, v1, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x7fffffff

    .line 20
    .line 21
    .line 22
    and-int/2addr p3, v2

    .line 23
    and-int/2addr v1, v2

    .line 24
    int-to-long v1, v1

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long v3, v1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, p3, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-array p3, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, p3, p2

    .line 42
    .line 43
    const-string p1, "windowSizeIncrement was 0"

    .line 44
    .line 45
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-array p3, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, p3, p2

    .line 57
    .line 58
    const-string p1, "TYPE_WINDOW_UPDATE length: %d != 8"

    .line 59
    .line 60
    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/i$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/i$a;->c:Lcom/squareup/okhttp/internal/framed/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/f;->c()V

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
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 3
    .line 4
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int/2addr v3, v1

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move v3, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v0

    .line 23
    :goto_0
    const/high16 v5, -0x1000000

    .line 24
    .line 25
    and-int/2addr v5, v2

    .line 26
    ushr-int/lit8 v5, v5, 0x18

    .line 27
    .line 28
    const v6, 0xffffff

    .line 29
    .line 30
    .line 31
    and-int/2addr v2, v6

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/high16 v0, 0x7fff0000

    .line 35
    .line 36
    and-int/2addr v0, v1

    .line 37
    ushr-int/lit8 v0, v0, 0x10

    .line 38
    .line 39
    const v3, 0xffff

    .line 40
    .line 41
    .line 42
    and-int/2addr v1, v3

    .line 43
    const/4 v3, 0x3

    .line 44
    if-ne v0, v3, :cond_1

    .line 45
    .line 46
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    :pswitch_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 50
    .line 51
    int-to-long v0, v2

    .line 52
    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 53
    .line 54
    .line 55
    return v4

    .line 56
    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->f(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 61
    .line 62
    .line 63
    return v4

    .line 64
    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 65
    .line 66
    .line 67
    return v4

    .line 68
    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->h(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 69
    .line 70
    .line 71
    return v4

    .line 72
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 73
    .line 74
    .line 75
    return v4

    .line 76
    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->j(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 77
    .line 78
    .line 79
    return v4

    .line 80
    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 81
    .line 82
    .line 83
    return v4

    .line 84
    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/i$a;->m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 85
    .line 86
    .line 87
    return v4

    .line 88
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "version != 3: "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_2
    const v3, 0x7fffffff

    .line 112
    .line 113
    .line 114
    and-int/2addr v1, v3

    .line 115
    and-int/lit8 v3, v5, 0x1

    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    move v0, v4

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/i$a;->a:Lokio/BufferedSource;

    .line 121
    .line 122
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 123
    .line 124
    .line 125
    return v4

    .line 126
    :catch_0
    return v0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    .line 1
    return-void
.end method
