.class public final Lcom/yandex/mobile/ads/impl/vs1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ab;

.field private final b:Ljava/net/Proxy;

.field private final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ab;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketAddress"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ab;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    return-object p0
.end method

.method public final b()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Ljava/net/InetSocketAddress;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/vs1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/vs1;

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vs1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vs1;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vs1;->c:Ljava/net/InetSocketAddress;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
