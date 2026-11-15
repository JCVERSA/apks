.class public Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljavax/net/ssl/HttpsURLConnection;

.field private final contentTypePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;II)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZLcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZLcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;",
            ">;IIZ",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;

    .line 7
    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 8
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 9
    iput p4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 10
    iput p5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 11
    iput-boolean p6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 12
    iput-object p7, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "DefaultHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static getContentLength(Ljavax/net/ssl/HttpsURLConnection;)J
    .locals 10

    .line 1
    const-string v0, "Content-Length"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "DefaultHttpDataSource"

    .line 12
    .line 13
    const-string v3, "]"

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "Unexpected Content-Length ["

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    const-wide/16 v4, -0x1

    .line 46
    .line 47
    :goto_0
    const-string v1, "Content-Range"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 70
    .line 71
    const/4 v6, 0x2

    .line 72
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    const/4 v8, 0x1

    .line 81
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    sub-long/2addr v6, v8

    .line 90
    const-wide/16 v8, 0x1

    .line 91
    .line 92
    add-long/2addr v6, v8

    .line 93
    const-wide/16 v8, 0x0

    .line 94
    .line 95
    cmp-long v1, v4, v8

    .line 96
    .line 97
    if-gez v1, :cond_1

    .line 98
    .line 99
    move-wide v4, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    cmp-long v1, v4, v6

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v8, "Inconsistent headers ["

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "] ["

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    goto :goto_1

    .line 141
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v1, "Unexpected Content-Range ["

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_2
    :goto_1
    return-wide v4
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/net/URL;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "https"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, "http"

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "Unsupported protocol redirect: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    return-object v0

    .line 53
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    .line 54
    .line 55
    const-string p1, "Null location redirect"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method private makeConnection(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->postBody:[B

    .line 3
    iget-wide v12, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    .line 4
    iget-wide v14, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 6
    iget-boolean v0, v11, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-wide v3, v12

    move-wide v5, v14

    move/from16 v7, v16

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v10, v0, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_3

    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v5, v2

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v17, v12

    move v12, v10

    move/from16 v10, v16

    move v11, v0

    .line 8
    invoke-direct/range {v3 .. v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;[BJJZZ)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_1

    const/16 v2, 0x133

    if-eq v3, v2, :cond_2

    const/16 v2, 0x134

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 10
    :cond_2
    :goto_1
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 12
    invoke-static {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v11, p0

    move v0, v12

    move-wide/from16 v12, v17

    goto :goto_0

    :cond_3
    move v12, v10

    .line 13
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;[BJJZZ)Ljavax/net/ssl/HttpsURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 15
    new-instance v1, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;

    invoke-direct {v1, p1}, Lcom/mbridge/msdk/foundation/same/net/MBridgeHostnameVerifier;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 16
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 17
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 18
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    const-wide/16 v1, -0x1

    if-nez p1, :cond_2

    cmp-long p1, p5, v1

    if-eqz p1, :cond_4

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    cmp-long v1, p5, v1

    if-eqz v1, :cond_3

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p3, p5

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_3
    const-string p3, "Range"

    invoke-virtual {v0, p3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    const-string p3, "User-Agent"

    invoke-virtual {v0, p3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_5

    .line 27
    const-string p1, "Accept-Encoding"

    const-string p3, "identity"

    invoke-virtual {v0, p1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 29
    :goto_2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_8

    .line 30
    const-string p1, "POST"

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 31
    array-length p1, p2

    if-nez p1, :cond_7

    .line 32
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    goto :goto_3

    .line 33
    :cond_7
    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 34
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 35
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 37
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 38
    :cond_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    :goto_3
    return-object v0
.end method

.method private static maybeTerminateInputStream(Ljavax/net/ssl/HttpsURLConnection;J)V
    .locals 2

    .line 1
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x1

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-wide/16 v0, 0x800

    .line 31
    .line 32
    cmp-long p1, p1, v0

    .line 33
    .line 34
    if-gtz p1, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "unexpectedEndOfInput"

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :cond_4
    return-void
.end method

.method private readInternal([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eqz v4, :cond_2

    .line 13
    .line 14
    iget-wide v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 15
    .line 16
    sub-long/2addr v0, v6

    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    cmp-long v4, v0, v6

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    return v5

    .line 24
    :cond_1
    int-to-long v6, p3

    .line 25
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, v5, :cond_4

    .line 37
    .line 38
    iget-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 39
    .line 40
    cmp-long p1, p1, v2

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    return v5

    .line 45
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_4
    iget-wide p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 52
    .line 53
    int-to-long v0, p1

    .line 54
    add-long/2addr p2, v0

    .line 55
    iput-wide p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 56
    .line 57
    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    invoke-interface {p2, p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    :cond_5
    return p1
.end method

.method private skipInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x1000

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 28
    .line 29
    cmp-long v5, v1, v3

    .line 30
    .line 31
    if-eqz v5, :cond_4

    .line 32
    .line 33
    sub-long/2addr v3, v1

    .line 34
    array-length v1, v0

    .line 35
    int-to-long v1, v1

    .line 36
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    long-to-int v1, v1

    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 62
    .line 63
    int-to-long v4, v1

    .line 64
    add-long/2addr v2, v4

    .line 65
    iput-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 66
    .line 67
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {v2, p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_4
    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    :goto_0
    return-wide v0
.end method

.method protected final bytesSkipped()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRemaining()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljavax/net/ssl/HttpsURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v2

    .line 25
    :try_start_2
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v3, v2, v4, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;I)V

    .line 31
    .line 32
    .line 33
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :goto_1
    iput-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    throw v2
.end method

.method protected final getConnection()Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 1
    const-string v0, "Unable to connect to "

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljavax/net/ssl/HttpsURLConnection;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iput-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    const/16 v4, 0xc8

    .line 23
    .line 24
    if-lt v0, v4, :cond_8

    .line 25
    .line 26
    const/16 v5, 0x12b

    .line 27
    .line 28
    if-le v0, v5, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    invoke-interface {v6, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    .line 52
    .line 53
    invoke-direct {v0, v5, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    :goto_0
    if-ne v0, v4, :cond_3

    .line 58
    .line 59
    iget-wide v4, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    .line 60
    .line 61
    cmp-long v0, v4, v1

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    move-wide v1, v4

    .line 66
    :cond_3
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_6

    .line 73
    .line 74
    iget-wide v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    .line 75
    .line 76
    const-wide/16 v4, -0x1

    .line 77
    .line 78
    cmp-long v2, v0, v4

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->getContentLength(Ljavax/net/ssl/HttpsURLConnection;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    cmp-long v2, v0, v4

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget-wide v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 96
    .line 97
    sub-long v4, v0, v4

    .line 98
    .line 99
    :cond_5
    iput-wide v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-wide v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    .line 103
    .line 104
    iput-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 105
    .line 106
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    iput-boolean v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 115
    .line 116
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->listener:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-interface {v0, p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 124
    .line 125
    return-wide v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 131
    .line 132
    invoke-direct {v1, v0, p1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;I)V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 146
    .line 147
    invoke-direct {v2, v0, v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 148
    .line 149
    .line 150
    const/16 p1, 0x1a0

    .line 151
    .line 152
    if-ne v0, p1, :cond_9

    .line 153
    .line 154
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSourceException;

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSourceException;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 161
    .line 162
    .line 163
    :cond_9
    throw v2

    .line 164
    :catch_1
    move-exception v1

    .line 165
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 166
    .line 167
    .line 168
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 169
    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;I)V

    .line 192
    .line 193
    .line 194
    throw v2

    .line 195
    :catch_2
    move-exception v1

    .line 196
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;I)V

    .line 220
    .line 221
    .line 222
    throw v2
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->readInternal([BII)I

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 11
    .line 12
    iget-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-direct {p2, p1, p3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;I)V

    .line 16
    .line 17
    .line 18
    throw p2
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
