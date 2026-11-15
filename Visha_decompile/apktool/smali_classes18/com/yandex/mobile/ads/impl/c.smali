.class public final Lcom/yandex/mobile/ads/impl/c;
.super Lcom/yandex/mobile/ads/impl/nk;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ji0$b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a;

.field private final b:Lcom/yandex/mobile/ads/impl/nk;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ki0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ki0;-><init>()V

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/d;->a()Lcom/yandex/mobile/ads/impl/b;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/c;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/ki0;Lcom/yandex/mobile/ads/impl/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/ki0;Lcom/yandex/mobile/ads/impl/a;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hurlStackFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aabCryptedUrlValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nk;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/c;->a:Lcom/yandex/mobile/ads/impl/a;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/ki0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ji0$b;Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/nk;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c;->b:Lcom/yandex/mobile/ads/impl/nk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;
    .locals 2
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

    .line 1
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c;->a:Lcom/yandex/mobile/ads/impl/a;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/vh0;->c:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c;->b:Lcom/yandex/mobile/ads/impl/nk;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/nk;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;

    move-result-object p0

    const-string p1, "executeRequest(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c;->a:Lcom/yandex/mobile/ads/impl/a;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    const-string p1, "https://yandex.ru/appcry"

    :cond_0
    return-object p1
.end method
