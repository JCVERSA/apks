.class public final Lcom/yandex/mobile/ads/impl/li0;
.super Lcom/yandex/mobile/ads/impl/nk;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/net/ssl/SSLSocketFactory;

.field private final b:Lcom/yandex/mobile/ads/impl/ke1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t82;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nk;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/li0;->a:Ljavax/net/ssl/SSLSocketFactory;

    new-instance p2, Lcom/yandex/mobile/ads/impl/ke1;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/ke1;-><init>(Lcom/yandex/mobile/ads/impl/t82;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/li0;->b:Lcom/yandex/mobile/ads/impl/ke1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/ci0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/mobile/ads/impl/ai;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalHeaders"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->j()I

    move-result v1

    sget v2, Lcom/yandex/mobile/ads/impl/ge1;->c:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/li0;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1, v1, v2}, Lcom/yandex/mobile/ads/impl/ge1;->a(IILjavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/li0;->b:Lcom/yandex/mobile/ads/impl/ke1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ke1;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p0

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/zn1;

    const/4 v0, 0x0

    invoke-direct {p2, v1, p0, v0}, Lcom/yandex/mobile/ads/impl/zn1;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/vp1;Z)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zn1;->b()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result p2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qf0;->c()Ljava/util/TreeMap;

    move-result-object v1

    const-string v2, "requestHeaders"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/yandex/mobile/ads/impl/kf0;

    invoke-direct {v6, v4, v5}, Lcom/yandex/mobile/ads/impl/kf0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result p1

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq p1, v1, :cond_5

    const/16 p1, 0x64

    if-gt p1, p2, :cond_2

    const/16 p1, 0xc8

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_5

    const/16 p1, 0x130

    if-eq p2, p1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zq1;->a()J

    move-result-wide v0

    long-to-int v0, v0

    :cond_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/ci0;

    const-string v1, "response"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object p0

    invoke-interface {p0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    :cond_4
    invoke-direct {p1, p2, v2, v0, v3}, Lcom/yandex/mobile/ads/impl/ci0;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V

    return-object p1

    :cond_5
    :goto_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/ci0;

    const/4 p1, -0x1

    invoke-direct {p0, p2, v2, p1, v3}, Lcom/yandex/mobile/ads/impl/ci0;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V

    return-object p0
.end method
