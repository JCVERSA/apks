.class public final Lcom/squareup/okhttp/internal/framed/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/d$b;,
        Lcom/squareup/okhttp/internal/framed/d$a;,
        Lcom/squareup/okhttp/internal/framed/d$d;,
        Lcom/squareup/okhttp/internal/framed/d$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/squareup/okhttp/internal/framed/d$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/squareup/okhttp/internal/framed/d;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 14
    .line 15
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/squareup/okhttp/internal/framed/d;->b:Lokio/ByteString;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a()Lokio/ByteString;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/d;->b:Lokio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/d;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/d;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lokio/BufferedSource;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/squareup/okhttp/internal/framed/d;->k(Lokio/BufferedSource;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(IBS)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->j(IBS)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/d;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic g(Lokio/BufferedSink;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/d;->l(Lokio/BufferedSink;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static varargs h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method private static varargs i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
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

.method private static j(IBS)I
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    :cond_0
    if-gt p2, p0, :cond_1

    .line 8
    .line 9
    sub-int/2addr p0, p2

    .line 10
    int-to-short p0, p0

    .line 11
    return p0

    .line 12
    :cond_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p2, 0x2

    .line 21
    new-array p2, p2, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aput-object p1, p2, v0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    aput-object p0, p2, p1

    .line 28
    .line 29
    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    .line 30
    .line 31
    invoke-static {p0, p2}, Lcom/squareup/okhttp/internal/framed/d;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    throw p0
.end method

.method private static k(Lokio/BufferedSource;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    shl-int/lit8 v0, v0, 0x10

    .line 8
    .line 9
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    and-int/lit16 p0, p0, 0xff

    .line 23
    .line 24
    or-int/2addr p0, v0

    .line 25
    return p0
.end method

.method private static l(Lokio/BufferedSink;I)V
    .locals 1

    .line 1
    ushr-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 6
    .line 7
    .line 8
    ushr-int/lit8 v0, p1, 0x8

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 13
    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    .line 2
    .line 3
    return-object v0
.end method

.method public newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/okhttp/internal/framed/d$c;

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p2}, Lcom/squareup/okhttp/internal/framed/d$c;-><init>(Lokio/BufferedSource;IZ)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/okhttp/internal/framed/d$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/d$d;-><init>(Lokio/BufferedSink;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
