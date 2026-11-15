.class final Lcom/cloud/hisavana/protocol/okhttptransport/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/g$b;,
        Lcom/cloud/hisavana/protocol/okhttptransport/g$c;
    }
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/cloud/hisavana/protocol/okhttptransport/i;

.field private final d:Lcom/cloud/hisavana/protocol/okhttptransport/d;

.field private final e:Lcom/cloud/hisavana/protocol/okhttptransport/c;


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/cloud/hisavana/protocol/okhttptransport/d;Lcom/cloud/hisavana/protocol/okhttptransport/i;Lcom/cloud/hisavana/protocol/okhttptransport/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->a:Lorg/chromium/net/CronetEngine;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->d:Lcom/cloud/hisavana/protocol/okhttptransport/d;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->c:Lcom/cloud/hisavana/protocol/okhttptransport/i;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->e:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Lcom/cloud/hisavana/protocol/okhttptransport/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->c:Lcom/cloud/hisavana/protocol/okhttptransport/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/cloud/hisavana/protocol/okhttptransport/g$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method b(Lokhttp3/Request;II)Lcom/cloud/hisavana/protocol/okhttptransport/g$b;
    .locals 7

    .line 1
    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    .line 2
    .line 3
    int-to-long v1, p2

    .line 4
    iget-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->e:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;-><init>(JLcom/cloud/hisavana/protocol/okhttptransport/c;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->a:Lorg/chromium/net/CronetEngine;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2, v1, v0, v2}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/UrlRequest$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p2, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v1, v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-string v2, "Content-Length"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    const-wide/16 v5, -0x1

    .line 97
    .line 98
    cmp-long v3, v3, v5

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    const-wide/16 v4, 0x0

    .line 118
    .line 119
    cmp-long v2, v2, v4

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, "Content-Type"

    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p2, v3, v2}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-nez v2, :cond_3

    .line 148
    .line 149
    const-string v2, "application/octet-stream"

    .line 150
    .line 151
    invoke-virtual {p2, v3, v2}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->d:Lcom/cloud/hisavana/protocol/okhttptransport/d;

    .line 155
    .line 156
    invoke-interface {v2, v1, p3}, Lcom/cloud/hisavana/protocol/okhttptransport/d;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g;->b:Ljava/util/concurrent/Executor;

    .line 161
    .line 162
    invoke-virtual {p2, p3, v1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 163
    .line 164
    .line 165
    :cond_4
    new-instance p3, Lcom/cloud/hisavana/protocol/okhttptransport/g$b;

    .line 166
    .line 167
    invoke-virtual {p2}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/protocol/okhttptransport/g;->c(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/cloud/hisavana/protocol/okhttptransport/g$c;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {p3, p2, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/g$b;-><init>(Lorg/chromium/net/UrlRequest;Lcom/cloud/hisavana/protocol/okhttptransport/g$c;)V

    .line 176
    .line 177
    .line 178
    return-object p3
.end method
