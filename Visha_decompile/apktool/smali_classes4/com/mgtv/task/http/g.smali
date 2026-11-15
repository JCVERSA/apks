.class public Lcom/mgtv/task/http/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/n<",
        "Lcom/mgtv/task/http/HttpRequestObject;",
        "Lcom/mgtv/task/http/HttpResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/mgtv/task/http/retry/c;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/mgtv/task/http/g;->d:I

    iput p1, p0, Lcom/mgtv/task/http/g;->e:I

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .line 120
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private a(Lokhttp3/Response;ZLcom/mgtv/task/http/a;Lcom/mgtv/task/http/HttpTraceObject;Lcom/mgtv/task/j;)Lcom/mgtv/task/http/HttpResponseObject;
    .locals 9
    .param p3    # Lcom/mgtv/task/http/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/mgtv/task/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    .line 85
    invoke-virtual {p4, v1}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    .line 86
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/mgtv/task/http/HttpTraceObject;->setResponseHeader(Lokhttp3/Headers;)V

    const/16 v2, 0xc8

    const/16 v3, 0x64

    if-ne v1, v2, :cond_8

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 87
    invoke-interface {p3}, Lcom/mgtv/task/http/a;->a()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 89
    const-string p2, "content-length"

    invoke-virtual {p1, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/task/http/g;->a(Ljava/lang/String;)J

    move-result-wide p1

    const/16 v1, 0x4000

    .line 90
    new-array v1, v1, [B

    move v5, v4

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 93
    invoke-virtual {p0, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v5, v6

    if-eqz p5, :cond_0

    if-lez v6, :cond_0

    int-to-long v6, v5

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    mul-int/lit8 v7, v5, 0x64

    int-to-long v7, v7

    div-long/2addr v7, p1

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6}, Lcom/mgtv/task/j;->a([Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 95
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "task cancel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-direct {p1}, Lcom/mgtv/task/http/HttpResponseObject;-><init>()V

    .line 97
    iput-object p3, p1, Lcom/mgtv/task/http/HttpResponseObject;->channel:Lcom/mgtv/task/http/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto/16 :goto_5

    :catch_1
    move-exception p1

    move-object p0, v0

    goto/16 :goto_4

    .line 98
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 p3, 0x800

    .line 99
    new-array p3, p3, [B

    .line 100
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v6, v4

    .line 101
    :goto_1
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v2, :cond_5

    .line 102
    invoke-virtual {v5, p3, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v6, v7

    const/high16 v7, 0xa00000

    if-ge v6, v7, :cond_4

    goto :goto_1

    .line 103
    :cond_4
    const-string p0, "mgnetwork>>>content larger than 10m!"

    invoke-virtual {p4, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setResponse(Ljava/lang/String;)V

    .line 104
    new-instance p0, Lcom/mgtv/task/http/HttpFormatException;

    const-string p1, "Response\u5185\u5bb9\u8fc7\u957f"

    invoke-direct {p0, p1}, Lcom/mgtv/task/http/HttpFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p1, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 106
    invoke-virtual {p4, p1}, Lcom/mgtv/task/http/HttpTraceObject;->setResponse(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 107
    new-instance p2, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-direct {p2}, Lcom/mgtv/task/http/HttpResponseObject;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/mgtv/json/a;->a(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    iput-object p1, p2, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    .line 109
    invoke-direct {p0, v1, p2}, Lcom/mgtv/task/http/g;->a(ILcom/mgtv/task/http/HttpResponseObject;)V

    goto :goto_2

    .line 110
    :cond_6
    const-class p0, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-static {p1, p0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/json/JsonInterface;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/mgtv/task/http/HttpResponseObject;

    :goto_2
    if-eqz p2, :cond_7

    move-object p1, p2

    move-object p0, v0

    goto :goto_3

    .line 111
    :cond_7
    new-instance p0, Lcom/mgtv/task/http/HttpFormatException;

    const-string p1, "\u54cd\u5e94\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/mgtv/task/http/HttpFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    move-object p0, v0

    move-object p1, p0

    :goto_3
    if-eqz p5, :cond_9

    .line 112
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p2}, Lcom/mgtv/task/j;->a([Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :cond_9
    invoke-static {v0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 114
    invoke-static {p0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    return-object p1

    .line 115
    :goto_4
    :try_start_4
    invoke-virtual {p4, p1}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    .line 116
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :goto_5
    invoke-static {v0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 118
    invoke-static {p0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 119
    throw p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 72
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_5

    .line 74
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p2, :cond_2

    const/16 p2, 0x26

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->capacity()I

    move-result p2

    const v0, 0xf4240

    if-le p2, v0, :cond_4

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 48
    invoke-static {}, Lcom/mgtv/task/http/d;->b()Lcom/mgtv/task/http/d$a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Lcom/mgtv/task/http/d$a;->d()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    move-object p2, v0

    :goto_3
    invoke-virtual {p0, v1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method private a(ILcom/mgtv/task/http/HttpResponseObject;)V
    .locals 4

    .line 121
    iget-object p0, p2, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 122
    iget-object p0, p2, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 123
    const-string p1, "code"

    const-string v0, "err_code"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 124
    aget-object v2, p1, v1

    .line 125
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 127
    invoke-virtual {p2, v2}, Lcom/mgtv/task/http/HttpResponseObject;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const-string p1, "msg"

    const-string v1, "err_msg"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-ge v0, v2, :cond_3

    .line 129
    aget-object v1, p1, v0

    .line 130
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mgtv/task/http/HttpResponseObject;->setMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/mgtv/task/http/retry/c;Lcom/mgtv/task/http/HttpTraceObject;)V
    .locals 0

    .line 4
    instance-of p0, p1, Lcom/mgtv/task/http/host/a;

    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Lcom/mgtv/task/http/host/a;

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/host/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setFinalUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lokhttp3/OkHttpClient$Builder;Lcom/mgtv/task/http/HttpTraceObject;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/mgtv/task/http/retry/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v2, :cond_1

    move v3, v2

    goto :goto_1

    .line 67
    :cond_1
    iget v3, p0, Lcom/mgtv/task/http/g;->e:I

    :goto_1
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/mgtv/task/http/retry/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-lez v1, :cond_3

    goto :goto_2

    .line 69
    :cond_3
    iget v2, p0, Lcom/mgtv/task/http/g;->d:I

    :goto_2
    int-to-long v0, v3

    .line 70
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private a(Lokhttp3/Request$Builder;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 61
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/mgtv/task/http/HttpTraceObject;Lcom/mgtv/task/http/retry/c;)Z
    .locals 5

    .line 16
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    const/16 v1, 0x12e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 17
    iget p1, p0, Lcom/mgtv/task/http/g;->a:I

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    add-int/2addr p1, v0

    .line 18
    iput p1, p0, Lcom/mgtv/task/http/g;->a:I

    goto :goto_1

    .line 19
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v4

    .line 20
    invoke-interface {p2, v1, v3, v4}, Lcom/mgtv/task/http/retry/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {p1, v1}, Lcom/mgtv/task/http/HttpTraceObject;->setFinalUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_3
    iget v1, p0, Lcom/mgtv/task/http/g;->a:I

    if-lt v1, v0, :cond_4

    return v2

    :cond_4
    add-int/2addr v1, v0

    .line 23
    iput v1, p0, Lcom/mgtv/task/http/g;->a:I

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/mgtv/task/http/retry/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_5

    int-to-long p0, p0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return v0

    :catch_0
    :cond_6
    :goto_2
    return v2
.end method

.method private a(Lcom/mgtv/task/http/HttpTraceObject;Ljava/lang/Exception;)Z
    .locals 3

    .line 26
    invoke-virtual {p1, p2}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    .line 27
    instance-of v0, p2, Ljava/io/InterruptedIOException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    if-nez v0, :cond_6

    .line 31
    instance-of p0, p2, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_2

    const/4 p0, -0x3

    .line 32
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    goto :goto_1

    .line 33
    :cond_2
    instance-of p0, p2, Ljava/net/ConnectException;

    if-eqz p0, :cond_3

    const/4 p0, -0x5

    .line 34
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    goto :goto_1

    .line 35
    :cond_3
    instance-of p0, p2, Ljava/net/NoRouteToHostException;

    if-eqz p0, :cond_4

    const/4 p0, -0x4

    .line 36
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    goto :goto_1

    .line 37
    :cond_4
    instance-of p0, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_5

    const/4 p0, -0x6

    .line 38
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    .line 39
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    goto :goto_1

    .line 40
    :cond_6
    invoke-direct {p0, v0}, Lcom/mgtv/task/http/g;->c(I)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    .line 41
    :cond_7
    :goto_0
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x2

    .line 43
    invoke-virtual {p1, p0}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    :cond_8
    :goto_1
    move v1, v2

    goto :goto_2

    .line 44
    :cond_9
    invoke-virtual {p1, v2}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    .line 45
    iput-boolean v1, p0, Lcom/mgtv/task/http/g;->b:Z

    .line 46
    :goto_2
    iget-object p0, p1, Lcom/mgtv/task/http/HttpTraceObject;->mRetryLogs:Ljava/util/ArrayList;

    new-instance p2, Lcom/mgtv/task/http/retry/b;

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p2, v0, v2, p1}, Lcom/mgtv/task/http/retry/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private a(Ljava/lang/String;Z)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 8
    new-array p0, p0, [B

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    if-eqz p2, :cond_1

    .line 10
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 13
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 14
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object p0
.end method

.method private b(Lcom/mgtv/task/j;Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/http/HttpResponseObject;
    .locals 20
    .param p1    # Lcom/mgtv/task/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2
    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    iput-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    .line 4
    :cond_0
    iget-object v10, v9, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    .line 5
    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->getMethod()Ljava/lang/String;

    .line 6
    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->getMultiParts()Lcom/mgtv/task/http/MultiParts;

    move-result-object v0

    const-string v1, "POST"

    const-string v2, "GET"

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    .line 7
    invoke-virtual {v0, v3}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    .line 8
    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->getBodyJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    .line 9
    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->getBodyXml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v11, v2

    goto :goto_0

    :cond_1
    move-object v11, v1

    .line 10
    :goto_0
    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpParams;->noAppendMap()Z

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    .line 11
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->url:Ljava/lang/String;

    iget-object v3, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v3}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v7, v3, v13}, Lcom/mgtv/task/http/g;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mgtv/task/http/i;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v14, v2

    goto :goto_3

    .line 12
    :cond_2
    iget-object v3, v9, Lcom/mgtv/task/http/HttpRequestObject;->url:Ljava/lang/String;

    iget-object v4, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpParams;->getParams()Ljava/util/Map;

    move-result-object v4

    if-ne v11, v2, :cond_3

    move v2, v12

    goto :goto_2

    :cond_3
    move v2, v13

    :goto_2
    invoke-direct {v7, v4, v2}, Lcom/mgtv/task/http/g;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mgtv/task/http/i;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 13
    :goto_3
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v2, v3}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_5

    .line 15
    :cond_4
    iget-object v0, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v0, v3}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object v0

    if-ne v11, v1, :cond_5

    move v1, v12

    goto :goto_4

    :cond_5
    move v1, v13

    :goto_4
    invoke-direct {v7, v0, v1}, Lcom/mgtv/task/http/g;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    :goto_5
    const/4 v1, 0x2

    .line 16
    filled-new-array {v12, v1}, [I

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/mgtv/task/http/HttpTraceObject;->stepStart([I)V

    .line 17
    invoke-virtual {v10, v14}, Lcom/mgtv/task/http/HttpTraceObject;->setUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10, v2}, Lcom/mgtv/task/http/HttpTraceObject;->setHeader(Ljava/util/Map;)V

    .line 19
    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->setBody(Ljava/util/Map;)V

    .line 20
    invoke-virtual {v10, v14}, Lcom/mgtv/task/http/HttpTraceObject;->setFinalUrl(Ljava/lang/String;)V

    .line 21
    iget-object v2, v7, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    invoke-direct {v7, v2, v10}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/http/retry/c;Lcom/mgtv/task/http/HttpTraceObject;)V

    .line 22
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getMultiParts()Lcom/mgtv/task/http/MultiParts;

    move-result-object v15

    .line 23
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getContentTypeS()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getBodyXml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 26
    const-string v2, "text/xml"

    :cond_6
    :goto_6
    move-object v6, v2

    goto :goto_7

    .line 27
    :cond_7
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getBodyJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 28
    const-string v2, "application/json"

    goto :goto_6

    :cond_8
    if-eqz v15, :cond_9

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/mgtv/task/http/MultiParts;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 30
    :cond_9
    const-string v2, "application/x-www-form-urlencoded"

    goto :goto_6

    .line 31
    :goto_7
    invoke-virtual {v10, v6}, Lcom/mgtv/task/http/HttpTraceObject;->setContentType(Ljava/lang/String;)V

    .line 32
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    .line 33
    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getBodyJson()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v3}, Lcom/mgtv/task/http/HttpParams;->getBodyXml()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v0, v2, v3}, Lcom/mgtv/task/http/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->setBodyText(Ljava/lang/String;)V

    .line 36
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->isBodyGZip()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/mgtv/task/http/HttpTraceObject;->setBodyGZip(Z)V

    .line 37
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->getMultiParts()Lcom/mgtv/task/http/MultiParts;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mgtv/task/http/HttpTraceObject;->setMultiParts(Lcom/mgtv/task/http/MultiParts;)V

    .line 38
    invoke-virtual {v10, v11}, Lcom/mgtv/task/http/HttpTraceObject;->setMethod(Ljava/lang/String;)V

    .line 39
    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpParams;->isBodyGZip()Z

    move-result v2

    invoke-direct {v7, v0, v2}, Lcom/mgtv/task/http/g;->a(Ljava/lang/String;Z)[B

    move-result-object v5

    .line 40
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->stepEnd([I)V

    const/4 v4, 0x3

    .line 41
    filled-new-array {v4}, [I

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->stepStart([I)V

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 42
    :goto_8
    :try_start_0
    iget-object v0, v7, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/mgtv/task/http/retry/c;->b()Lcom/mgtv/task/http/retry/c$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 43
    iget-object v0, v7, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    invoke-interface {v0}, Lcom/mgtv/task/http/retry/c;->b()Lcom/mgtv/task/http/retry/c$a;

    move-result-object v0

    iget-object v2, v7, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    invoke-interface {v2, v14, v11}, Lcom/mgtv/task/http/retry/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/mgtv/task/http/retry/c$a;->a(I)V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v2, v12

    :goto_9
    const/4 v13, 0x0

    goto/16 :goto_12

    :cond_a
    :goto_a
    const/4 v0, 0x4

    .line 44
    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mgtv/task/http/HttpTraceObject;->stepStart([I)V

    .line 45
    invoke-virtual {v10, v13}, Lcom/mgtv/task/http/HttpTraceObject;->setHttpStatus(I)V

    .line 46
    invoke-static {}, Lcom/mgtv/task/http/d;->a()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 47
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 48
    invoke-direct {v7, v2, v10}, Lcom/mgtv/task/http/g;->a(Lokhttp3/OkHttpClient$Builder;Lcom/mgtv/task/http/HttpTraceObject;)V

    .line 49
    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getHeader()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v7, v3, v12}, Lcom/mgtv/task/http/g;->a(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    if-eqz v15, :cond_b

    .line 50
    new-instance v12, Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v15}, Lcom/mgtv/task/http/MultiParts;->getBoundary()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v15, v12}, Lcom/mgtv/task/http/MultiParts;->writeTo(Lokhttp3/MultipartBody$Builder;)V

    .line 52
    invoke-virtual {v12}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v12

    invoke-virtual {v3, v12}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_c

    :catch_1
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    :goto_b
    const/4 v2, 0x1

    goto :goto_9

    .line 53
    :cond_b
    array-length v12, v5

    if-lez v12, :cond_c

    .line 54
    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v12

    invoke-virtual {v3, v12}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 55
    :cond_c
    :goto_c
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 56
    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    filled-new-array {v0, v4}, [I

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->stepEnd([I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_d

    const/16 v0, 0x64

    .line 58
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v13, 0x0

    :try_start_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/mgtv/task/j;->a([Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v12

    goto/16 :goto_15

    :catch_2
    move-exception v0

    :goto_d
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object v1, v12

    goto :goto_b

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto :goto_d

    :cond_d
    const/4 v13, 0x0

    :goto_e
    const/4 v0, 0x5

    .line 59
    :try_start_5
    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mgtv/task/http/HttpTraceObject;->stepStart([I)V

    .line 60
    iget-boolean v3, v9, Lcom/mgtv/task/http/HttpRequestObject;->wholeResponse:Z

    iget-object v2, v9, Lcom/mgtv/task/http/HttpRequestObject;->channel:Lcom/mgtv/task/http/a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v12

    const/4 v13, 0x0

    move/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v5

    move-object v5, v10

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    :try_start_6
    invoke-direct/range {v1 .. v6}, Lcom/mgtv/task/http/g;->a(Lokhttp3/Response;ZLcom/mgtv/task/http/a;Lcom/mgtv/task/http/HttpTraceObject;Lcom/mgtv/task/j;)Lcom/mgtv/task/http/HttpResponseObject;

    move-result-object v16

    .line 61
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->stepEnd([I)V

    .line 62
    invoke-virtual {v10, v13}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    .line 63
    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_f

    const/4 v2, 0x1

    .line 64
    :try_start_7
    filled-new-array {v2}, [I

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mgtv/task/http/HttpTraceObject;->stepEnd([I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v12, :cond_e

    .line 65
    :try_start_8
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_f
    return-object v16

    :catch_5
    move-exception v0

    :goto_10
    move-object v1, v12

    goto :goto_12

    :cond_f
    const/4 v2, 0x1

    .line 67
    :try_start_9
    iget-object v0, v10, Lcom/mgtv/task/http/HttpTraceObject;->mRetryLogs:Ljava/util/ArrayList;

    new-instance v1, Lcom/mgtv/task/http/retry/b;

    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v3

    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/mgtv/task/http/retry/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v12, :cond_10

    .line 68
    :try_start_a
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_11
    move-object v1, v12

    goto :goto_13

    :catch_7
    move-exception v0

    const/4 v2, 0x1

    goto :goto_10

    :catch_8
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto :goto_10

    .line 70
    :goto_12
    :try_start_b
    invoke-direct {v7, v10, v0}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/http/HttpTraceObject;Ljava/lang/Exception;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_11

    if-eqz v1, :cond_13

    .line 71
    :try_start_c
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :cond_11
    if-eqz v1, :cond_12

    .line 73
    :try_start_d
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_12
    :goto_13
    iget-object v0, v7, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    invoke-direct {v7, v10, v0}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/http/HttpTraceObject;Lcom/mgtv/task/http/retry/c;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 76
    :cond_13
    :goto_14
    invoke-virtual {v10}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v16

    .line 77
    :cond_14
    throw v0

    :cond_15
    move v12, v2

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v13, 0x0

    goto/16 :goto_8

    :goto_15
    if-eqz v1, :cond_16

    .line 78
    :try_start_e
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_16

    :catch_b
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_16
    :goto_16
    throw v2
.end method

.method private c(I)Z
    .locals 0

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    const/16 p0, 0x190

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Lcom/mgtv/task/j;Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/l;
    .locals 6
    .param p1    # Lcom/mgtv/task/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/j;",
            "Lcom/mgtv/task/http/HttpRequestObject;",
            ")",
            "Lcom/mgtv/task/l<",
            "Lcom/mgtv/task/http/HttpResponseObject;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/mgtv/task/http/HttpTraceObject;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpTraceObject;-><init>()V

    iput-object v0, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    .line 134
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mgtv/task/http/g;->b(Lcom/mgtv/task/j;Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/http/HttpResponseObject;

    move-result-object p1

    .line 135
    iget-boolean p0, p0, Lcom/mgtv/task/http/g;->b:Z

    if-eqz p0, :cond_1

    .line 136
    new-instance p0, Lcom/mgtv/task/l;

    iget-object v4, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {v4}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mgtv/task/l;-><init>(Ljava/lang/Object;ZZLjava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :catch_0
    move-exception p0

    move-object v5, p0

    goto :goto_1

    .line 137
    :cond_1
    iget-object p0, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p0

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v1

    .line 138
    :goto_0
    new-instance v0, Lcom/mgtv/task/l;

    iget-object v2, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/mgtv/task/l;-><init>(Ljava/lang/Object;ZZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :goto_1
    new-instance p0, Lcom/mgtv/task/l;

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/mgtv/task/http/HttpRequestObject;->traceData:Lcom/mgtv/task/http/HttpTraceObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mgtv/task/l;-><init>(Ljava/lang/Object;ZZLjava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public bridge synthetic a(Lcom/mgtv/task/j;Ljava/lang/Object;)Lcom/mgtv/task/l;
    .locals 0
    .param p1    # Lcom/mgtv/task/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/mgtv/task/http/HttpRequestObject;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/g;->a(Lcom/mgtv/task/j;Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/l;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 3
    iput p1, p0, Lcom/mgtv/task/http/g;->d:I

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/task/http/retry/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/task/http/g;->c:Lcom/mgtv/task/http/retry/c;

    return-void
.end method

.method public b(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/mgtv/task/http/g;->e:I

    :cond_0
    return-void
.end method
