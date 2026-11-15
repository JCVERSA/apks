.class final Lcom/squareup/okhttp/internal/framed/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field b:I

.field c:B

.field d:I

.field e:I

.field f:S


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 5
    .line 6
    return-void
.end method

.method private d()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/d$a;->d:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/d;->d(Lokio/BufferedSource;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iput v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    .line 12
    .line 13
    iput v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->b:I

    .line 14
    .line 15
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 16
    .line 17
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    and-int/lit16 v3, v3, 0xff

    .line 22
    .line 23
    int-to-byte v3, v3

    .line 24
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 25
    .line 26
    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    int-to-byte v4, v4

    .line 33
    iput-byte v4, p0, Lcom/squareup/okhttp/internal/framed/d$a;->c:B

    .line 34
    .line 35
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget v5, p0, Lcom/squareup/okhttp/internal/framed/d$a;->d:I

    .line 52
    .line 53
    iget v6, p0, Lcom/squareup/okhttp/internal/framed/d$a;->b:I

    .line 54
    .line 55
    iget-byte v7, p0, Lcom/squareup/okhttp/internal/framed/d$a;->c:B

    .line 56
    .line 57
    invoke-static {v1, v5, v6, v3, v7}, Lcom/squareup/okhttp/internal/framed/d$b;->b(ZIIBB)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 65
    .line 66
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const v5, 0x7fffffff

    .line 71
    .line 72
    .line 73
    and-int/2addr v4, v5

    .line 74
    iput v4, p0, Lcom/squareup/okhttp/internal/framed/d$a;->d:I

    .line 75
    .line 76
    const/16 v5, 0x9

    .line 77
    .line 78
    if-ne v3, v5, :cond_2

    .line 79
    .line 80
    if-ne v4, v2, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v1, "TYPE_CONTINUATION streamId changed"

    .line 86
    .line 87
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    throw v0

    .line 92
    :cond_2
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v2, v1, v0

    .line 99
    .line 100
    const-string v0, "%s != TYPE_CONTINUATION"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 8
    .line 9
    iget-short v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->f:S

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-short v0, p0, Lcom/squareup/okhttp/internal/framed/d$a;->f:S

    .line 17
    .line 18
    iget-byte v0, p0, Lcom/squareup/okhttp/internal/framed/d$a;->c:B

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x4

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-wide v1

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/d$a;->d()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 30
    .line 31
    int-to-long v4, v0

    .line 32
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    invoke-interface {v3, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    cmp-long p3, p1, v1

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    return-wide v1

    .line 45
    :cond_2
    iget p3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    .line 46
    .line 47
    int-to-long v0, p3

    .line 48
    sub-long/2addr v0, p1

    .line 49
    long-to-int p3, v0

    .line 50
    iput p3, p0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    .line 51
    .line 52
    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$a;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
