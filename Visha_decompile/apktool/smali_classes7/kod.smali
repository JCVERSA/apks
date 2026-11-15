.class public Lkod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lhnd;

.field public c:Ljava/net/HttpURLConnection;

.field public d:Ljava/io/InputStream;

.field public e:I


# direct methods
.method public constructor <init>(Lhnd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lkod;->d:Ljava/io/InputStream;

    const/16 v0, 0x1e0

    iput v0, p0, Lkod;->e:I

    iput-object p1, p0, Lkod;->b:Lhnd;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkod;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Llv4;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lkod;->d:Ljava/io/InputStream;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public c()J
    .locals 5

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lkod;->d()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lkod;->d()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    int-to-long v1, p0

    :catchall_1
    :cond_1
    return-wide v1
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lkod;->d:Ljava/io/InputStream;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkod;->d:Ljava/io/InputStream;

    :cond_1
    iget-object p0, p0, Lkod;->d:Ljava/io/InputStream;

    return-object p0
.end method

.method public e()Lhnd;
    .locals 0

    iget-object p0, p0, Lkod;->b:Lhnd;

    return-object p0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget p0, p0, Lkod;->e:I

    return p0

    :cond_0
    const/16 p0, 0x194

    return p0
.end method

.method public g()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 5

    new-instance v0, Lx7d;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lx7d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lx7d;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkod;->b:Lhnd;

    invoke-virtual {v0}, Lhnd;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->l()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->g()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    iget-object v0, p0, Lkod;->b:Lhnd;

    invoke-virtual {v0}, Lhnd;->h()Lcom/transsion/http/request/HttpMethod;

    move-result-object v0

    iget-object v1, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lcom/transsion/http/request/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lkod;->b:Lhnd;

    invoke-virtual {v4}, Lhnd;->f()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/transsion/http/request/HttpMethod;->permitsRequestBody(Lcom/transsion/http/request/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const-string v1, "connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->d()Lcom/transsion/http/request/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/http/request/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkod;->b:Lhnd;

    invoke-virtual {v0}, Lhnd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_1

    :cond_2
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    :goto_1
    iget-object v2, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v1, 0x1e1

    iput v1, p0, Lkod;->e:I

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1}, Lhnd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lkod;->e:I

    const/16 v1, 0x12e

    if-eq v1, v0, :cond_5

    const/16 v1, 0x12d

    if-ne v1, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lkod;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lkod;->a()V

    iget-object v1, p0, Lkod;->b:Lhnd;

    invoke-virtual {v1, v0}, Lhnd;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkod;->h()V

    :cond_6
    return-void
.end method
