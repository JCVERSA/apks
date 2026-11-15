.class public final Lcom/yandex/mobile/ads/impl/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mp0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qs;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qs;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dm;->a:Lcom/yandex/mobile/ads/impl/qs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->i()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/vp1$a;-><init>(Lcom/yandex/mobile/ads/impl/vp1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->a()Lcom/yandex/mobile/ads/impl/yp1;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "Content-Type"

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yp1;->b()Lcom/yandex/mobile/ads/impl/cx0;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/cx0;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    :cond_0
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yp1;->a()J

    move-result-wide v7

    cmp-long v2, v7, v3

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-virtual {v1, v9}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v1, v9, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/gi0;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    const/4 v10, 0x1

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v2, v9}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move v2, v10

    goto :goto_1

    :cond_5
    move v2, v8

    :goto_1
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/dm;->a:Lcom/yandex/mobile/ads/impl/qs;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/yandex/mobile/ads/impl/qs;->a(Lcom/yandex/mobile/ads/impl/gi0;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    if-gez v8, :cond_6

    invoke-static {}, Ly71;->u()V

    :cond_6
    check-cast v12, Lcom/yandex/mobile/ads/impl/os;

    if-lez v8, :cond_7

    const-string v8, "; "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/os;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3d

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/os;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v13

    goto :goto_2

    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Cookie"

    invoke-virtual {v1, v8, v7}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    :cond_9
    const-string v7, "User-Agent"

    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    const-string v8, "okhttp/4.9.3"

    invoke-virtual {v1, v7, v8}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    :cond_a
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vp1$a;->a()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/do1;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dm;->a:Lcom/yandex/mobile/ads/impl/qs;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v7

    invoke-static {p0, v1, v7}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/qs;Lcom/yandex/mobile/ads/impl/gi0;Lcom/yandex/mobile/ads/impl/qf0;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>(Lcom/yandex/mobile/ads/impl/vq1;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    if-eqz v2, :cond_b

    const-string v0, "Content-Encoding"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v10}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/vq1;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Lokio/GzipSource;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zq1;->c()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v2, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->g()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qf0;->b()Lcom/yandex/mobile/ads/impl/qf0$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/qf0$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/qf0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/qf0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0$a;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-static {p1, v5}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/eo1;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p1, v3, v4, v1}, Lcom/yandex/mobile/ads/impl/eo1;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    :cond_b
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    return-object p0
.end method
