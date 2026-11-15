.class public abstract Lcom/pgl/ssdk/j0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/net/HttpURLConnection;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:[B

.field private g:I

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/pgl/ssdk/j0;->g:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/pgl/ssdk/j0;->h:[B

    .line 11
    .line 12
    const/16 v0, 0x2710

    .line 13
    .line 14
    iput v0, p0, Lcom/pgl/ssdk/j0;->i:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/pgl/ssdk/j0;->j:I

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/pgl/ssdk/j0;->k:I

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/pgl/ssdk/j0;->l:Z

    .line 24
    .line 25
    new-instance v0, Lcom/pgl/ssdk/j0$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/pgl/ssdk/j0$a;-><init>(Lcom/pgl/ssdk/j0;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/pgl/ssdk/j0;->m:Ljava/lang/Runnable;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    .line 33
    .line 34
    return-void
.end method

.method private a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p1, "GET"

    goto :goto_0

    :cond_0
    const-string p1, "TRACE"

    goto :goto_0

    :cond_1
    const-string p1, "HEAD"

    goto :goto_0

    :cond_2
    const-string p1, "DELETE"

    goto :goto_0

    :cond_3
    const-string p1, "PUT"

    goto :goto_0

    :cond_4
    const-string p1, "POST"

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/pgl/ssdk/j0;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sput-object p0, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/pgl/ssdk/j0;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pgl/ssdk/j0;->c()Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 6
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 8
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pgl/ssdk/j0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/pgl/ssdk/j0;->j:I

    return p0
.end method

.method private b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const-string v1, "ipv6"

    .line 5
    :try_start_1
    sget-object v2, Lcom/pgl/ssdk/j0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_2

    const-string v1, "gaid"

    .line 7
    :try_start_2
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    const-string v1, "region"

    .line 8
    :try_start_3
    invoke-static {}, Lcom/pgl/ssdk/k0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/n0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "cypher"

    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "transfer-param"

    :try_start_5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p1, "application/json; charset=utf-8"

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-static {}, Lcom/pgl/ssdk/k0;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    const-string v1, "x-pangle-target-idc"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/pgl/ssdk/j0;->b()V

    .line 18
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ","

    const-string v2, "Accept-Language"

    if-eqz v0, :cond_4

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(II[B)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/pgl/ssdk/j0;->d:I

    .line 23
    iput p2, p0, Lcom/pgl/ssdk/j0;->e:I

    .line 24
    iput-object p3, p0, Lcom/pgl/ssdk/j0;->f:[B

    return-void
.end method

.method static synthetic c(Lcom/pgl/ssdk/j0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/pgl/ssdk/j0;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pgl/ssdk/j0;->j:I

    return v0
.end method

.method private c()Z
    .locals 5

    const-string v0, "https://"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/pgl/ssdk/k0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/k0;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 7
    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :cond_0
    return v1

    .line 8
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pgl/ssdk/j0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v3, p0, Lcom/pgl/ssdk/j0;->l:Z

    if-eqz v3, :cond_3

    .line 13
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/j0;->i:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 16
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/j0;->i:I

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 17
    iget v0, p0, Lcom/pgl/ssdk/j0;->d:I

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->a(I)V

    .line 18
    iget v0, p0, Lcom/pgl/ssdk/j0;->e:I

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->b(I)V

    .line 19
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->f:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 21
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 22
    iget-object v4, p0, Lcom/pgl/ssdk/j0;->f:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 26
    :try_start_2
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/pgl/ssdk/j0;->g:I

    .line 27
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    invoke-direct {p0, v0}, Lcom/pgl/ssdk/j0;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/pgl/ssdk/j0;->h:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    goto :goto_1

    :catchall_0
    move-object v0, v2

    :catchall_1
    if-nez v0, :cond_5

    goto :goto_2

    .line 29
    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 30
    :cond_6
    :goto_2
    iget v0, p0, Lcom/pgl/ssdk/j0;->g:I

    iget-object v4, p0, Lcom/pgl/ssdk/j0;->h:[B

    invoke-virtual {p0, v0, v4}, Lcom/pgl/ssdk/j0;->a(I[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 31
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 33
    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    :cond_7
    return v3

    .line 34
    :catchall_2
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    .line 35
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    iput-object v2, p0, Lcom/pgl/ssdk/j0;->b:Ljava/net/HttpURLConnection;

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/pgl/ssdk/j0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/k0;->b(Landroid/content/Context;)V

    return v1
.end method

.method static synthetic d(Lcom/pgl/ssdk/j0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/pgl/ssdk/j0;->k:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method public a(II[B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/pgl/ssdk/j0;->b(II[B)V

    .line 11
    iget-object p1, p0, Lcom/pgl/ssdk/j0;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/pgl/ssdk/o0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method abstract a(I[B)V
.end method
