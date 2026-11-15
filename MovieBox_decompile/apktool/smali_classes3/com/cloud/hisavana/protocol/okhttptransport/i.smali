.class final Lcom/cloud/hisavana/protocol/okhttptransport/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableSet;

.field private static final b:Lcom/google/common/base/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gzip"

    .line 2
    .line 3
    const-string v1, "x-gzip"

    .line 4
    .line 5
    const-string v2, "br"

    .line 6
    .line 7
    const-string v3, "deflate"

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a:Lcom/google/common/collect/ImmutableSet;

    .line 14
    .line 15
    const/16 v0, 0x2c

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/common/base/o;->f(C)Lcom/google/common/base/o;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/common/base/o;->k()Lcom/google/common/base/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/common/base/o;->e()Lcom/google/common/base/o;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b:Lcom/google/common/base/o;

    .line 30
    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 1

    .line 1
    const-string v0, "quic"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "h3"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "spdy"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "h2"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string v0, "http/1.1"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 57
    .line 58
    return-object p0
.end method

.method private static b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/Response$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Content-Type"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "Content-Encoding"

    .line 26
    .line 27
    invoke-static {v3, v5, v4}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    sget-object v6, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b:Lcom/google/common/base/o;

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Lcom/google/common/base/o;->h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v2, v4}, Lcom/google/common/collect/g3;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    sget-object v3, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a:Lcom/google/common/collect/ImmutableSet;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 77
    :goto_2
    const-string v3, "Content-Length"

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-static {v3, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move-object v6, v4

    .line 88
    :goto_3
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-static {p0, v4, v1, v6, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->c(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :cond_4
    invoke-virtual {v0, p0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ljava/util/Map$Entry;

    .line 152
    .line 153
    if-nez v2, :cond_6

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-static {p2, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-nez p2, :cond_5

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Ljava/lang/CharSequence;

    .line 172
    .line 173
    invoke-static {p2, v5}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Ljava/lang/String;

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, p2, p1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_7
    return-object v0
.end method

.method private static c(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "HEAD"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    move-wide v2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_1
    :goto_0
    const/16 p0, 0xcc

    .line 26
    .line 27
    if-eq p1, p0, :cond_2

    .line 28
    .line 29
    const/16 p0, 0xcd

    .line 30
    .line 31
    if-ne p1, p0, :cond_3

    .line 32
    .line 33
    :cond_2
    cmp-long p0, v2, v0

    .line 34
    .line 35
    if-gtz p0, :cond_5

    .line 36
    .line 37
    :cond_3
    if-eqz p2, :cond_4

    .line 38
    .line 39
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    const/4 p0, 0x0

    .line 45
    :goto_1
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, v2, v3, p1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p4, "HTTP "

    .line 62
    .line 63
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " had non-zero Content-Length: "

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method private static d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/z;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/io/IOException;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method private static e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/List;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method


# virtual methods
.method g(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->g()Lcom/google/common/util/concurrent/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/chromium/net/UrlResponseInfo;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->f()Lcom/google/common/util/concurrent/r;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lokio/Source;

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->h()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    add-int/2addr v3, v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-ne v2, v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v4, v5

    .line 54
    :goto_0
    const-string v2, "The number of redirects should be consistent across URLs and headers!"

    .line 55
    .line 56
    invoke-static {v4, v2}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    move-object v3, v2

    .line 61
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-ge v5, v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lorg/chromium/net/UrlResponseInfo;

    .line 90
    .line 91
    invoke-static {v4, v6, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, v3}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method
