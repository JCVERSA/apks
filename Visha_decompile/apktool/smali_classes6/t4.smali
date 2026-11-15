.class public final Lt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final b:Ljpa;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljpa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4;->b:Ljpa;

    const-string p1, "Authorization"

    iput-object p1, p0, Lt4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lokio/Buffer;)Z
    .locals 7

    const/4 p0, 0x0

    :try_start_0
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    invoke-static {v0, v1, v2, v3}, Lwn8;->h(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move p1, p0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_2

    invoke-virtual {v6}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9

    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt4;->b:Ljpa;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0}, Lkt8;->a(Lokhttp3/Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lt4;->b:Ljpa;

    invoke-interface {v2}, Ljpa;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lt4;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v4}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v5}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "gzip"

    invoke-static {v8, v6, v7}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    new-instance v6, Lokio/GzipSource;

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v5

    invoke-direct {v6, v5}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    :try_start_0
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v6, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_0
    invoke-virtual {p0, v5}, Lt4;->a(Lokio/Buffer;)Z

    move-result v6

    if-nez v6, :cond_7

    return-object v1

    :cond_7
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, "UTF_8"

    invoke-static {v6, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v6, v4

    :goto_1
    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->LOGIN_OUT:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->getCode()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v4, v5, :cond_9

    return-object v1

    :cond_9
    iget-object v4, p0, Lt4;->b:Ljpa;

    invoke-interface {v4}, Ljpa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v4}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object p0, p0, Lt4;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_2
    return-object v1

    :catchall_2
    move-exception p0

    sget-object p1, Loq5;->a:Loq5;

    const-string v0, "AccessTokenInterceptor"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
