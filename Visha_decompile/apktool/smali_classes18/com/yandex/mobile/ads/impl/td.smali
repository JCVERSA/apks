.class public final Lcom/yandex/mobile/ads/impl/td;
.super Lcom/yandex/mobile/ads/impl/rh1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/td$a;
    }
.end annotation


# static fields
.field private static final f:Z

.field public static final synthetic g:I


# instance fields
.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/yandex/mobile/ads/impl/xp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/yandex/mobile/ads/impl/td;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rh1;-><init>()V

    sget v0, Lcom/yandex/mobile/ads/impl/m22;->h:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/m22$a;->a()Lcom/yandex/mobile/ads/impl/m22;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/x00;

    sget v2, Lcom/yandex/mobile/ads/impl/xd;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/xd$a;->a()Lcom/yandex/mobile/ads/impl/wd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/x00;-><init>(Lcom/yandex/mobile/ads/impl/wd;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/l12;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ly71;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/l12;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/l12;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/td;->d:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/xp$a;->a()Lcom/yandex/mobile/ads/impl/xp;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/td;->e:Lcom/yandex/mobile/ads/impl/xp;

    return-void
.end method

.method public static final synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/yandex/mobile/ads/impl/td;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/eo;
    .locals 2

    .line 1
    const-string v0, "trustManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/qd$a;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/qd;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/wk;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/td;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/k72;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/wk;-><init>(Lcom/yandex/mobile/ads/impl/k72;)V

    :goto_0
    return-object v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 12
    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/td;->e:Lcom/yandex/mobile/ads/impl/xp;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xp;->a(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x5

    .line 14
    invoke-static {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/rh1;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    const-string p0, "socket"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "address"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mm1;",
            ">;)V"
        }
    .end annotation

    .line 5
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/td;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/l12;

    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/l12;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/l12;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/l12;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 10
    const-string p0, "hostname"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/k72;
    .locals 3

    .line 1
    const-string v0, "trustManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const-class v2, Ljava/security/cert/X509Certificate;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/td$a;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/td$a;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/rh1;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/k72;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 10
    const-string v0, "response.body().close()"

    const-string v1, "closer"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/td;->e:Lcom/yandex/mobile/ads/impl/xp;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xp;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 8
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/td;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/l12;

    invoke-interface {v2, p1}, Lcom/yandex/mobile/ads/impl/l12;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/l12;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/l12;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method
