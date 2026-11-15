.class final Lcom/android/net/toolbox/a;
.super Lcom/android/net/toolbox/b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/net/toolbox/i;


# direct methods
.method public constructor <init>(Lcom/android/net/toolbox/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/net/toolbox/b;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/a;->a:Lcom/android/net/toolbox/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/n;Ljava/util/Map;)Lcom/android/net/toolbox/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/net/toolbox/h;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/android/net/toolbox/a;->a:Lcom/android/net/toolbox/i;

    invoke-interface {p0, p1, p2}, Lcom/android/net/toolbox/i;->b(Lcom/android/net/n;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    new-instance v4, Lcom/android/net/g;

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/net/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p0, Lcom/android/net/toolbox/h;

    invoke-direct {p0, p1, v0}, Lcom/android/net/toolbox/h;-><init>(ILjava/util/List;)V

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p2, v1

    int-to-long v3, p2

    cmp-long p2, v3, v1

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/net/toolbox/h;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/net/toolbox/h;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Response too large: "

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
