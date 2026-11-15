.class public Lcom/mgadplus/netlib/base/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgadplus/d/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lokhttp3/Response;)Lcom/mgadplus/netlib/base/FzHttpResponseObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 98
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x800

    .line 99
    :try_start_0
    new-array v0, v0, [B

    .line 100
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 101
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 102
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v3, v4

    const/high16 v4, 0xa00000

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Response\u5185\u5bb9\u8fc7\u957f"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 105
    new-instance v1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    invoke-direct {v1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;-><init>()V

    .line 106
    invoke-static {v0}, Lcom/mgadplus/netlib/json/b;->a(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    iput-object v0, v1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->data:Lcom/google/gson/JsonElement;

    .line 107
    invoke-direct {p0, v1}, Lcom/mgadplus/netlib/base/f;->a(Lcom/mgadplus/netlib/base/FzHttpResponseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 109
    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_2

    .line 110
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    :catch_1
    :cond_2
    throw p0

    :cond_3
    const/4 v1, 0x0

    :catch_2
    :goto_3
    return-object v1
.end method

.method private a(Lcom/mgadplus/netlib/base/d;)Lcom/mgadplus/netlib/base/e;
    .locals 9

    .line 7
    iget-object v0, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/mgadplus/netlib/base/c;

    invoke-direct {v0}, Lcom/mgadplus/netlib/base/c;-><init>()V

    iput-object v0, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    .line 9
    :cond_0
    new-instance v0, Lcom/mgadplus/netlib/base/e;

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgadplus/netlib/base/e;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v1}, Lcom/mgadplus/netlib/base/c;->getMultiParts()Lcom/mgadplus/netlib/base/g;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    sget-object v2, Lcom/mgadplus/netlib/base/c$a;->BODY:Lcom/mgadplus/netlib/base/c$a;

    .line 11
    invoke-virtual {v1, v2}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    .line 12
    invoke-virtual {v1}, Lcom/mgadplus/netlib/base/c;->getBodyJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    .line 13
    invoke-virtual {v1}, Lcom/mgadplus/netlib/base/c;->getBodyXml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/mgadplus/netlib/base/d;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v2}, Lcom/mgadplus/netlib/base/c;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgadplus/netlib/base/f;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgadplus/netlib/base/i;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    sget-object v3, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    invoke-virtual {v2, v3}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object v2

    .line 16
    iget-object v3, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    sget-object v4, Lcom/mgadplus/netlib/base/c$a;->BODY:Lcom/mgadplus/netlib/base/c$a;

    invoke-virtual {v3, v4}, Lcom/mgadplus/netlib/base/c;->getParams(Lcom/mgadplus/netlib/base/c$a;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mgadplus/netlib/base/f;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 17
    iget-object v4, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v4}, Lcom/mgadplus/netlib/base/c;->getMultiParts()Lcom/mgadplus/netlib/base/g;

    move-result-object v4

    .line 18
    iget-object v5, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v5}, Lcom/mgadplus/netlib/base/c;->getBodyXml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 19
    const-string v5, "text/xml"

    goto :goto_0

    .line 20
    :cond_2
    iget-object v5, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v5}, Lcom/mgadplus/netlib/base/c;->getBodyJson()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 21
    const-string v5, "application/json"

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/form-data; boundary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mgadplus/netlib/base/g;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 23
    :cond_4
    const-string v5, "application/x-www-form-urlencoded"

    .line 24
    :goto_0
    iget-object v6, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    .line 25
    invoke-virtual {v6}, Lcom/mgadplus/netlib/base/c;->getBodyJson()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v7}, Lcom/mgadplus/netlib/base/c;->getBodyXml()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-static {v3, v6, v7}, Lcom/mgadplus/netlib/base/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v6, p1, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    invoke-virtual {v6}, Lcom/mgadplus/netlib/base/c;->isBodyGZip()Z

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/mgadplus/netlib/base/f;->a(Ljava/lang/String;Z)[B

    move-result-object v3

    const/4 v6, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/mgadplus/netlib/base/a;->b()Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    .line 29
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 30
    invoke-direct {p0, v7, p1}, Lcom/mgadplus/netlib/base/f;->a(Lokhttp3/OkHttpClient$Builder;Lcom/mgadplus/netlib/base/d;)V

    .line 31
    invoke-direct {p0, v1, v2}, Lcom/mgadplus/netlib/base/f;->a(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    if-eqz v4, :cond_5

    .line 32
    new-instance p1, Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v4}, Lcom/mgadplus/netlib/base/g;->getBoundary()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4, p1}, Lcom/mgadplus/netlib/base/g;->writeTo(Lokhttp3/MultipartBody$Builder;)V

    .line 34
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_3

    .line 35
    :cond_5
    array-length p1, v3

    if-lez p1, :cond_6

    .line 36
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 37
    :cond_6
    :goto_1
    invoke-virtual {v7}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgadplus/netlib/base/e;->a(I)Lcom/mgadplus/netlib/base/e;

    .line 40
    invoke-direct {p0, v6}, Lcom/mgadplus/netlib/base/f;->a(Lokhttp3/Response;)Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 41
    iget-object v1, p1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->data:Lcom/google/gson/JsonElement;

    if-eqz v1, :cond_8

    .line 42
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    .line 43
    invoke-virtual {v0, p1}, Lcgd;->a(Ljava/lang/Object;)Lcgd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0

    .line 46
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 48
    :cond_8
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u54cd\u5e94\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :goto_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/mgadplus/netlib/base/f;->a(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50
    invoke-virtual {v0, p1}, Lcgd;->a(Ljava/lang/Exception;)Lcgd;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_9

    .line 51
    :try_start_5
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-object v0

    :cond_a
    if-eqz v6, :cond_b

    .line 53
    :try_start_6
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 54
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/mgadplus/netlib/base/f;->b()Z

    return-object v0

    :goto_6
    if-eqz v6, :cond_c

    .line 55
    :try_start_7
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :cond_c
    :goto_7
    throw p0
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

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_5

    .line 87
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

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->capacity()I

    move-result p2

    const v0, 0xf4240

    if-le p2, v0, :cond_4

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private a(Lcom/mgadplus/netlib/base/FzHttpResponseObject;)V
    .locals 5

    .line 112
    const-string p0, "err_msg"

    const-string v0, "msg"

    const-string v1, "err_code"

    const-string v2, "code"

    iget-object v3, p1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->data:Lcom/google/gson/JsonElement;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 114
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 116
    invoke-virtual {p1, v2}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->setCode(I)V

    .line 117
    :cond_0
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 119
    invoke-virtual {p1, v1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->setErrorCode(I)V

    .line 120
    :cond_1
    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->setMsg(Ljava/lang/String;)V

    .line 122
    :cond_2
    invoke-virtual {v3, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {v3, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->setErrorMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private a(Lokhttp3/OkHttpClient$Builder;Lcom/mgadplus/netlib/base/d;)V
    .locals 4

    .line 78
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/d;->a()I

    move-result p0

    const-wide/16 v0, 0x5

    if-lez p0, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/d;->a()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, p0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 80
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    :goto_0
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/d;->c()I

    move-result p0

    if-lez p0, :cond_1

    .line 82
    invoke-virtual {p2}, Lcom/mgadplus/netlib/base/d;->c()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 83
    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :goto_1
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

    .line 73
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 74
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

    .line 75
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Exception;)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/lang/String;Z)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 59
    new-array p0, p0, [B

    return-object p0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    if-eqz p2, :cond_1

    .line 61
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 64
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object p0
.end method

.method private b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/mgadplus/d/b$a;)Lcgd;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/mgadplus/netlib/base/d;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/netlib/base/f;->a(Lcom/mgadplus/netlib/base/d;Lcom/mgadplus/d/b$a;)Lcom/mgadplus/netlib/base/e;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/mgadplus/netlib/base/d;Lcom/mgadplus/d/b$a;)Lcom/mgadplus/netlib/base/e;
    .locals 0
    .param p1    # Lcom/mgadplus/netlib/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mgadplus/netlib/base/f;->a(Lcom/mgadplus/netlib/base/d;)Lcom/mgadplus/netlib/base/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p2, Lcom/mgadplus/netlib/base/e;

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mgadplus/netlib/base/e;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p0}, Lcgd;->a(Ljava/lang/Exception;)Lcgd;

    return-object p2
.end method

.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method
