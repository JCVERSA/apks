.class public final Lcom/yandex/mobile/ads/impl/d11;
.super Lcom/yandex/mobile/ads/impl/nk;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c;

.field private final b:Lcom/yandex/mobile/ads/impl/tn1;

.field private final c:Lcom/yandex/mobile/ads/impl/ee;

.field private final d:Lcom/yandex/mobile/ads/impl/yc1;

.field private final e:Lcom/yandex/mobile/ads/impl/nk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/c;Lcom/yandex/mobile/ads/impl/tn1;Lcom/yandex/mobile/ads/impl/ee;Lcom/yandex/mobile/ads/impl/yc1;Lcom/yandex/mobile/ads/impl/ki0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aabHurlStack"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readyHttpResponseCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "antiAdBlockerStateValidator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseCreator"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hurlStackFactory"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nk;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/d11;->a:Lcom/yandex/mobile/ads/impl/c;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/d11;->b:Lcom/yandex/mobile/ads/impl/tn1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/d11;->c:Lcom/yandex/mobile/ads/impl/ee;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/d11;->d:Lcom/yandex/mobile/ads/impl/yc1;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/yandex/mobile/ads/impl/ki0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ji0$b;Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/nk;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d11;->e:Lcom/yandex/mobile/ads/impl/nk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;
    .locals 4
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

    const-string v0, "additionalHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d11;->d:Lcom/yandex/mobile/ads/impl/yc1;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/yc1;->a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/xc1;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/fq1;->a(JLcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/xc1;)V

    :cond_0
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d11;->b:Lcom/yandex/mobile/ads/impl/tn1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "networkResponse"

    invoke-static {v2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v2, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Lcom/yandex/mobile/ads/impl/kf0;

    invoke-direct {v1, v0, p2}, Lcom/yandex/mobile/ads/impl/kf0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/ci0;

    iget p2, v2, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    iget-object v0, v2, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    invoke-direct {p1, p2, p0, v0}, Lcom/yandex/mobile/ads/impl/ci0;-><init>(ILjava/util/ArrayList;[B)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d11;->c:Lcom/yandex/mobile/ads/impl/ee;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ee;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d11;->a:Lcom/yandex/mobile/ads/impl/c;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/c;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d11;->e:Lcom/yandex/mobile/ads/impl/nk;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/nk;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method
