.class public final Lcom/yandex/mobile/ads/impl/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q30;

.field private final b:Ljavax/net/SocketFactory;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;

.field private final e:Lcom/yandex/mobile/ads/impl/fo;

.field private final f:Lcom/yandex/mobile/ads/impl/ci;

.field private final g:Ljava/net/Proxy;

.field private final h:Ljava/net/ProxySelector;

.field private final i:Lcom/yandex/mobile/ads/impl/gi0;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mm1;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/rr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/yandex/mobile/ads/impl/q30;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/ee1;Lcom/yandex/mobile/ads/impl/fo;Lcom/yandex/mobile/ads/impl/ci;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 1

    const-string v0, "uriHost"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dns"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyAuthenticator"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionSpecs"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySelector"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ab;->a:Lcom/yandex/mobile/ads/impl/q30;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ab;->b:Ljavax/net/SocketFactory;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ab;->c:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ab;->d:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ab;->e:Lcom/yandex/mobile/ads/impl/fo;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ab;->f:Lcom/yandex/mobile/ads/impl/ci;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    new-instance p3, Lcom/yandex/mobile/ads/impl/gi0$a;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/gi0$a;-><init>()V

    if-eqz p5, :cond_0

    const-string p4, "https"

    goto :goto_0

    :cond_0
    const-string p4, "http"

    :goto_0
    invoke-virtual {p3, p4}, Lcom/yandex/mobile/ads/impl/gi0$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/gi0$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/gi0$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/gi0$a;->a(I)Lcom/yandex/mobile/ads/impl/gi0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0$a;->a()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-static {p9}, Lcom/yandex/mobile/ads/impl/g92;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ab;->j:Ljava/util/List;

    invoke-static {p10}, Lcom/yandex/mobile/ads/impl/g92;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ab;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/fo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->e:Lcom/yandex/mobile/ads/impl/fo;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ab;)Z
    .locals 2

    .line 2
    const-string v0, "that"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->a:Lcom/yandex/mobile/ads/impl/q30;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->a:Lcom/yandex/mobile/ads/impl/q30;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->f:Lcom/yandex/mobile/ads/impl/ci;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->f:Lcom/yandex/mobile/ads/impl/ci;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->j:Ljava/util/List;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->k:Ljava/util/List;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->k:Ljava/util/List;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->c:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->d:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->e:Lcom/yandex/mobile/ads/impl/fo;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->e:Lcom/yandex/mobile/ads/impl/fo;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result p0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/rr;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->k:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/q30;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->a:Lcom/yandex/mobile/ads/impl/q30;

    return-object p0
.end method

.method public final d()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->d:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mm1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->j:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ab;

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ab;->a(Lcom/yandex/mobile/ads/impl/ab;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/ci;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->f:Lcom/yandex/mobile/ads/impl/ci;

    return-object p0
.end method

.method public final h()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->a:Lcom/yandex/mobile/ads/impl/q30;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->f:Lcom/yandex/mobile/ads/impl/ci;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->j:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->k:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->e:Lcom/yandex/mobile/ads/impl/fo;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->b:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public final j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/gi0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ab;->i:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ab;->g:Ljava/net/Proxy;

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ab;->h:Ljava/net/ProxySelector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxySelector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
