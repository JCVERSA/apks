.class public final Lcom/yandex/mobile/ads/impl/x00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l12;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/x00$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x00$a;

.field private b:Lcom/yandex/mobile/ads/impl/l12;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wd;)V
    .locals 1

    const-string v0, "socketAdapterFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/mm1;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/x00$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/x00$a;->b(Ljavax/net/ssl/SSLSocket;)Lcom/yandex/mobile/ads/impl/xd;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/l12;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void

    .line 8
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    .line 9
    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/x00$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/x00$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->a:Lcom/yandex/mobile/ads/impl/x00$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/x00$a;->b(Ljavax/net/ssl/SSLSocket;)Lcom/yandex/mobile/ads/impl/xd;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x00;->b:Lcom/yandex/mobile/ads/impl/l12;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/l12;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :goto_2
    monitor-exit p0

    throw p1
.end method
