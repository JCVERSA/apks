.class public abstract Lcom/android/net/toolbox/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/toolbox/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/net/n;Ljava/util/Map;)Lcom/android/net/toolbox/h;
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
.end method

.method public final b(Lcom/android/net/n;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/net/toolbox/b;->a(Lcom/android/net/n;Ljava/util/Map;)Lcom/android/net/toolbox/h;

    move-result-object p0

    new-instance p1, Lorg/apache/http/ProtocolVersion;

    const-string p2, "HTTP"

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    new-instance p2, Lorg/apache/http/message/BasicStatusLine;

    iget v0, p0, Lcom/android/net/toolbox/h;->a:I

    const-string v1, ""

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    new-instance p1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/net/toolbox/h;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/g;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    iget-object v3, v1, Lcom/android/net/g;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/net/g;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/http/Header;

    invoke-virtual {p1, p2}, Lorg/apache/http/message/BasicHttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    iget-object p2, p0, Lcom/android/net/toolbox/h;->d:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    iget p0, p0, Lcom/android/net/toolbox/h;->c:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    invoke-virtual {p1, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    return-object p1
.end method
