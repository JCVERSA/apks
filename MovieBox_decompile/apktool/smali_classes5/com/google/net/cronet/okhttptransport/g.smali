.class final Lcom/google/net/cronet/okhttptransport/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/net/cronet/okhttptransport/g$b;,
        Lcom/google/net/cronet/okhttptransport/g$c;
    }
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/net/cronet/okhttptransport/i;

.field private final d:Lcom/google/net/cronet/okhttptransport/d;

.field private final e:Lcom/google/net/cronet/okhttptransport/c;


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/net/cronet/okhttptransport/d;Lcom/google/net/cronet/okhttptransport/i;Lcom/google/net/cronet/okhttptransport/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/g;->a:Lorg/chromium/net/CronetEngine;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/g;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/g;->d:Lcom/google/net/cronet/okhttptransport/d;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/g;->c:Lcom/google/net/cronet/okhttptransport/i;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/net/cronet/okhttptransport/g;->e:Lcom/google/net/cronet/okhttptransport/c;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/google/net/cronet/okhttptransport/g;)Lcom/google/net/cronet/okhttptransport/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/g;->c:Lcom/google/net/cronet/okhttptransport/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/google/net/cronet/okhttptransport/g$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/net/cronet/okhttptransport/g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/g$a;-><init>(Lcom/google/net/cronet/okhttptransport/g;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method b(Lokhttp3/Request;II)Lcom/google/net/cronet/okhttptransport/g$b;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    .line 2
    .line 3
    int-to-long v1, p2

    .line 4
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/g;->e:Lcom/google/net/cronet/okhttptransport/c;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;-><init>(JLcom/google/net/cronet/okhttptransport/c;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/g;->a:Lorg/chromium/net/CronetEngine;

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
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const-string v2, "Content-Length"

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    const-wide/16 v5, -0x1

    .line 90
    .line 91
    cmp-long v3, v3, v5

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    const-wide/16 v4, 0x0

    .line 111
    .line 112
    cmp-long v2, v2, v4

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    const-string v2, "Content-Type"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    const-string v3, "application/octet-stream"

    .line 143
    .line 144
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 145
    .line 146
    .line 147
    :goto_1
    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/g;->d:Lcom/google/net/cronet/okhttptransport/d;

    .line 148
    .line 149
    invoke-interface {v2, v1, p3}, Lcom/google/net/cronet/okhttptransport/d;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/g;->b:Ljava/util/concurrent/Executor;

    .line 154
    .line 155
    invoke-virtual {p2, p3, v1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 156
    .line 157
    .line 158
    :cond_3
    new-instance p3, Lcom/google/net/cronet/okhttptransport/g$b;

    .line 159
    .line 160
    invoke-virtual {p2}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/google/net/cronet/okhttptransport/g;->c(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/google/net/cronet/okhttptransport/g$c;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p3, p2, p1}, Lcom/google/net/cronet/okhttptransport/g$b;-><init>(Lorg/chromium/net/UrlRequest;Lcom/google/net/cronet/okhttptransport/g$c;)V

    .line 169
    .line 170
    .line 171
    return-object p3
.end method
