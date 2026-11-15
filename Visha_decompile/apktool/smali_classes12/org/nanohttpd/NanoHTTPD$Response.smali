.class public Lorg/nanohttpd/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nanohttpd/NanoHTTPD$Response$b;,
        Lorg/nanohttpd/NanoHTTPD$Response$a;,
        Lorg/nanohttpd/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field public b:Lorg/nanohttpd/NanoHTTPD$Response$b;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:J

.field public final f:Ljava/util/Map;

.field public g:Lorg/nanohttpd/NanoHTTPD$Method;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->b:Lorg/nanohttpd/NanoHTTPD$Response$b;

    iput-object p2, p0, Lorg/nanohttpd/NanoHTTPD$Response;->c:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    iput-wide p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->e:J

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    iput-wide p4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->e:J

    :goto_0
    iget-wide p3, p0, Lorg/nanohttpd/NanoHTTPD$Response;->e:J

    cmp-long p1, p3, p1

    const/4 p2, 0x1

    if-gez p1, :cond_1

    move v0, p2

    :cond_1
    iput-boolean v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->h:Z

    iput-boolean p2, p0, Lorg/nanohttpd/NanoHTTPD$Response;->j:Z

    return-void
.end method

.method public static e(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static o(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content-length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content-Length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-wide p2
.end method


# virtual methods
.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->h:Z

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->i:Z

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->j:Z

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->c:Ljava/lang/String;

    return-void
.end method

.method public H(Lorg/nanohttpd/NanoHTTPD$Method;)V
    .locals 0

    iput-object p1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->g:Lorg/nanohttpd/NanoHTTPD$Method;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/io/OutputStream;)V
    .locals 7

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->c:Ljava/lang/String;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    iget-object v2, p0, Lorg/nanohttpd/NanoHTTPD$Response;->b:Lorg/nanohttpd/NanoHTTPD$Response$b;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP/1.1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$Response;->b:Lorg/nanohttpd/NanoHTTPD$Response$b;

    invoke-interface {v5}, Lorg/nanohttpd/NanoHTTPD$Response$b;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\r\n"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v5, "Date"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/nanohttpd/NanoHTTPD$Response;->j:Z

    if-eqz v1, :cond_4

    const-string v1, "keep-alive"

    goto :goto_2

    :cond_4
    const-string v1, "close"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-static {v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->i:Z

    :cond_6
    iget-boolean v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->i:Z

    if-eqz v0, :cond_7

    const-string v0, "Content-Encoding: gzip\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/nanohttpd/NanoHTTPD$Response;->D(Z)V

    :cond_7
    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->e:J

    goto :goto_3

    :cond_8
    const-wide/16 v0, 0x0

    :goto_3
    iget-object v4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->g:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v5, Lorg/nanohttpd/NanoHTTPD$Method;->HEAD:Lorg/nanohttpd/NanoHTTPD$Method;

    if-eq v4, v5, :cond_9

    iget-boolean v4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->h:Z

    if-eqz v4, :cond_9

    const-string v4, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-boolean v4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->i:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/nanohttpd/NanoHTTPD$Response;->f:Ljava/util/Map;

    invoke-static {v2, v4, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->o(Ljava/io/PrintWriter;Ljava/util/Map;J)J

    move-result-wide v0

    :cond_a
    :goto_4
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p0, p1, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->n(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    invoke-static {p0}, Lorg/nanohttpd/NanoHTTPD;->f(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    new-instance p0, Ljava/lang/Error;

    const-string p1, "sendResponse(): Status can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    invoke-static {}, Lorg/nanohttpd/NanoHTTPD;->e()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Could not send response to the client"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public final h(Ljava/io/OutputStream;J)V
    .locals 8

    const-wide/16 v0, 0x4000

    long-to-int v2, v0

    new-array v2, v2, [B

    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gtz v5, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    move-wide v5, v0

    goto :goto_1

    :cond_3
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_1
    iget-object v7, p0, Lorg/nanohttpd/NanoHTTPD$Response;->d:Ljava/io/InputStream;

    long-to-int v5, v5

    invoke-virtual {v7, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    if-nez v3, :cond_1

    int-to-long v5, v5

    sub-long/2addr p2, v5

    goto :goto_0
.end method

.method public final k(Ljava/io/OutputStream;J)V
    .locals 2

    iget-boolean v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->i:Z

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p2, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->h(Ljava/io/OutputStream;J)V

    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/nanohttpd/NanoHTTPD$Response;->h(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method

.method public final n(Ljava/io/OutputStream;J)V
    .locals 2

    iget-object v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->g:Lorg/nanohttpd/NanoHTTPD$Method;

    sget-object v1, Lorg/nanohttpd/NanoHTTPD$Method;->HEAD:Lorg/nanohttpd/NanoHTTPD$Method;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/nanohttpd/NanoHTTPD$Response;->h:Z

    if-eqz v0, :cond_0

    new-instance p2, Lorg/nanohttpd/NanoHTTPD$Response$a;

    invoke-direct {p2, p1}, Lorg/nanohttpd/NanoHTTPD$Response$a;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p2, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->k(Ljava/io/OutputStream;J)V

    invoke-virtual {p2}, Lorg/nanohttpd/NanoHTTPD$Response$a;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/nanohttpd/NanoHTTPD$Response;->k(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method
