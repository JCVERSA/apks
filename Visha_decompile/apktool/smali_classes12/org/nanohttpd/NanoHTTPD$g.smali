.class public Lorg/nanohttpd/NanoHTTPD$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/nanohttpd/NanoHTTPD$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:Lorg/nanohttpd/NanoHTTPD$j;

.field public final b:Ljava/io/OutputStream;

.field public final c:Ljava/io/BufferedInputStream;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lorg/nanohttpd/NanoHTTPD$Method;

.field public h:Ljava/util/Map;

.field public i:Ljava/util/Map;

.field public j:Lorg/nanohttpd/NanoHTTPD$b;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final synthetic n:Lorg/nanohttpd/NanoHTTPD;


# direct methods
.method public constructor <init>(Lorg/nanohttpd/NanoHTTPD;Lorg/nanohttpd/NanoHTTPD$j;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$g;->n:Lorg/nanohttpd/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/nanohttpd/NanoHTTPD$g;->a:Lorg/nanohttpd/NanoHTTPD$j;

    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    iput-object p4, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    :goto_1
    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$g;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$g;->h:Ljava/util/Map;

    return-object p0
.end method

.method public final b(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lorg/nanohttpd/NanoHTTPD$g;->c(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/nanohttpd/NanoHTTPD;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD$g;->m:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD$g;->m:Ljava/lang/String;

    invoke-static {}, Lorg/nanohttpd/NanoHTTPD;->e()Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p0, "uri"

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p0, Lorg/nanohttpd/NanoHTTPD$ResponseException;

    sget-object p1, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const-string p2, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, p1, p2}, Lorg/nanohttpd/NanoHTTPD$ResponseException;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/nanohttpd/NanoHTTPD$ResponseException;

    sget-object p1, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const-string p2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, p1, p2}, Lorg/nanohttpd/NanoHTTPD$ResponseException;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance p1, Lorg/nanohttpd/NanoHTTPD$ResponseException;

    sget-object p2, Lorg/nanohttpd/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lorg/nanohttpd/NanoHTTPD$ResponseException;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD$g;->k:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$g;->k:Ljava/lang/String;

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {p0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/nanohttpd/NanoHTTPD;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/nanohttpd/NanoHTTPD;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 10

    const-string v0, "text/plain"

    const-string v1, "connection"

    const-string v2, "NanoHttpd Shutdown"

    const/16 v3, 0x2000

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [B

    const/4 v6, 0x0

    iput v6, p0, Lorg/nanohttpd/NanoHTTPD$g;->d:I

    iput v6, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v3}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/nanohttpd/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v5, v6, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    if-eq v3, v7, :cond_b

    :goto_0
    if-lez v3, :cond_1

    :try_start_2
    iget v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    add-int/2addr v7, v3

    iput v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    invoke-virtual {p0, v5, v7}, Lorg/nanohttpd/NanoHTTPD$g;->e([BI)I

    move-result v3

    iput v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->d:I

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    iget v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    rsub-int v8, v7, 0x2000

    invoke-virtual {v3, v5, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :goto_1
    iget v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->d:I

    iget v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    if-ge v3, v7, :cond_2

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    iget v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->d:I

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/io/BufferedInputStream;->skip(J)J

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->h:Ljava/util/Map;

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget v9, p0, Lorg/nanohttpd/NanoHTTPD$g;->e:I

    invoke-direct {v8, v5, v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->h:Ljava/util/Map;

    iget-object v8, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    invoke-virtual {p0, v3, v5, v7, v8}, Lorg/nanohttpd/NanoHTTPD$g;->b(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->l:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    const-string v8, "remote-addr"

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    const-string v7, "http-client-ip"

    iget-object v8, p0, Lorg/nanohttpd/NanoHTTPD$g;->l:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "method"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/nanohttpd/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Method;

    move-result-object v3

    iput-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->g:Lorg/nanohttpd/NanoHTTPD$Method;

    if-eqz v3, :cond_a

    const-string v3, "uri"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->f:Ljava/lang/String;

    new-instance v3, Lorg/nanohttpd/NanoHTTPD$b;

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$g;->n:Lorg/nanohttpd/NanoHTTPD;

    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    invoke-direct {v3, v5, v7}, Lorg/nanohttpd/NanoHTTPD$b;-><init>(Lorg/nanohttpd/NanoHTTPD;Ljava/util/Map;)V

    iput-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->j:Lorg/nanohttpd/NanoHTTPD$b;

    iget-object v3, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$g;->m:Ljava/lang/String;

    const-string v7, "HTTP/1.1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    if-eqz v3, :cond_5

    const-string v5, "(?i).*close.*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v3, v7

    goto :goto_3

    :cond_6
    move v3, v6

    :goto_3
    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$g;->n:Lorg/nanohttpd/NanoHTTPD;

    invoke-virtual {v5, p0}, Lorg/nanohttpd/NanoHTTPD;->n(Lorg/nanohttpd/NanoHTTPD$h;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    const-string v8, "accept-encoding"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lorg/nanohttpd/NanoHTTPD$g;->j:Lorg/nanohttpd/NanoHTTPD$b;

    invoke-virtual {v8, v4}, Lorg/nanohttpd/NanoHTTPD$b;->b(Lorg/nanohttpd/NanoHTTPD$Response;)V

    iget-object v8, p0, Lorg/nanohttpd/NanoHTTPD$g;->g:Lorg/nanohttpd/NanoHTTPD$Method;

    invoke-virtual {v4, v8}, Lorg/nanohttpd/NanoHTTPD$Response;->H(Lorg/nanohttpd/NanoHTTPD$Method;)V

    iget-object v8, p0, Lorg/nanohttpd/NanoHTTPD$g;->n:Lorg/nanohttpd/NanoHTTPD;

    invoke-virtual {v8, v4}, Lorg/nanohttpd/NanoHTTPD;->u(Lorg/nanohttpd/NanoHTTPD$Response;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v5, :cond_7

    const-string v8, "gzip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v4, v6}, Lorg/nanohttpd/NanoHTTPD$Response;->E(Z)V

    invoke-virtual {v4, v3}, Lorg/nanohttpd/NanoHTTPD$Response;->F(Z)V

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->g(Ljava/io/OutputStream;)V

    if-eqz v3, :cond_8

    const-string v3, "close"

    invoke-virtual {v4, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/nanohttpd/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_8

    :goto_4
    invoke-static {v4}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$g;->a:Lorg/nanohttpd/NanoHTTPD$j;

    invoke-interface {p0}, Lorg/nanohttpd/NanoHTTPD$j;->clear()V

    goto/16 :goto_8

    :cond_8
    :try_start_3
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Lorg/nanohttpd/NanoHTTPD$ResponseException;

    sget-object v2, Lorg/nanohttpd/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v1, v2, v3}, Lorg/nanohttpd/NanoHTTPD$ResponseException;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lorg/nanohttpd/NanoHTTPD$ResponseException;

    sget-object v2, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const-string v3, "BAD REQUEST: Syntax error."

    invoke-direct {v1, v2, v3}, Lorg/nanohttpd/NanoHTTPD$ResponseException;-><init>(Lorg/nanohttpd/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->c:Ljava/io/BufferedInputStream;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/nanohttpd/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    invoke-virtual {v1}, Lorg/nanohttpd/NanoHTTPD$ResponseException;->getStatus()Lorg/nanohttpd/NanoHTTPD$Response$Status;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->g(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Lorg/nanohttpd/NanoHTTPD$Response;->close()V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_c

    :try_start_7
    invoke-virtual {v0}, Lorg/nanohttpd/NanoHTTPD$Response;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_6
    throw v1

    :goto_7
    sget-object v2, Lorg/nanohttpd/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->g(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v0}, Lorg/nanohttpd/NanoHTTPD$Response;->close()V

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$g;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    :goto_8
    return-void

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_d

    :try_start_b
    invoke-virtual {v0}, Lorg/nanohttpd/NanoHTTPD$Response;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_9
    throw v1

    :goto_a
    throw v0

    :goto_b
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_c
    invoke-static {v4}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$g;->a:Lorg/nanohttpd/NanoHTTPD$j;

    invoke-interface {p0}, Lorg/nanohttpd/NanoHTTPD$j;->clear()V

    throw v0
.end method

.method public final e([BI)I
    .locals 7

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_2

    aget-byte v2, p1, v0

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-ne v2, v3, :cond_0

    aget-byte v5, p1, v1

    if-ne v5, v4, :cond_0

    add-int/lit8 v5, v0, 0x3

    if-ge v5, p2, :cond_0

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    if-ne v6, v3, :cond_0

    aget-byte v3, p1, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    if-ne v2, v4, :cond_1

    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$g;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$g;->f:Ljava/lang/String;

    return-object p0
.end method
