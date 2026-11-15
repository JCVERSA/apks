.class public Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field public static final e:Ljava/nio/charset/Charset;


# instance fields
.field public volatile b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public c:Ljava/util/logging/Level;

.field public final d:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->e:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public static b(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->e:Ljava/nio/charset/Charset;

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->e:Ljava/nio/charset/Charset;

    :cond_1
    return-object p0
.end method

.method public static c(Lokhttp3/MediaType;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "text"

    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "x-www-form-urlencoded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lokhttp3/Request;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lie7;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d:Ljava/util/logging/Logger;

    iget-object p0, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->c:Ljava/util/logging/Level;

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lokhttp3/Request;Lokhttp3/Connection;)V
    .locals 10

    const-string v0, "--> END "

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v5, v2, :cond_2

    iget-object v2, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v5, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    :goto_2
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object p2

    goto :goto_4

    :cond_4
    sget-object p2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_4
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    if-eqz v4, :cond_6

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tContent-Type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_b

    :catch_0
    move-exception p2

    goto/16 :goto_9

    :cond_5
    :goto_5
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tContent-Length: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_8

    invoke-virtual {p2, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "Content-Length"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    const-string p2, " "

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->c(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Request;)V

    goto :goto_7

    :cond_9
    const-string p2, "\tbody: maybe [binary body], omitted!"

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    :try_start_1
    invoke-static {p2}, Lie7;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :goto_a
    return-void

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    throw p2
.end method

.method public final f(Lokhttp3/Response;J)Lokhttp3/Response;
    .locals 9

    const-string v0, "<-- END HTTP"

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-object v7, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v7, v4, :cond_2

    iget-object v4, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    :cond_2
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<-- "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms\uff09"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p3

    :goto_2
    if-ge v5, p3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :cond_3
    const-string p2, " "

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    invoke-static {v1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_8

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    return-object p1

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->c(Lokhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lmv4;->f(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    new-instance v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tbody:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_5

    :try_start_3
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    return-object p3

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_6

    :try_start_4
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p3

    :cond_7
    const-string p2, "\tbody: maybe [binary body], omitted!"

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    :try_start_6
    invoke-static {p2}, Lie7;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :goto_6
    return-object p1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/util/logging/Level;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->c:Ljava/util/logging/Level;

    return-void
.end method

.method public h(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "level == null. Use Level.NONE instead."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->e(Lokhttp3/Request;Lokhttp3/Connection;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->f(Lokhttp3/Response;J)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<-- HTTP FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->d(Ljava/lang/String;)V

    throw p1
.end method
