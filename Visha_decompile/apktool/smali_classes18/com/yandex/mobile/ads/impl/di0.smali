.class public final Lcom/yandex/mobile/ads/impl/di0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/et1;

.field private final b:Lcom/yandex/mobile/ads/impl/e11;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ft1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslSocketFactoryCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/di0;->a:Lcom/yandex/mobile/ads/impl/et1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ei0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/e11;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/di0;->b:Lcom/yandex/mobile/ads/impl/e11;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/di0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/fi0;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/di0;->a:Lcom/yandex/mobile/ads/impl/et1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/di0;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/et1;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/di0;->c:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->E()Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/di0;->b:Lcom/yandex/mobile/ads/impl/e11;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/e11;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/d11;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/fi0;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/zc;->a()Lcom/yandex/mobile/ads/impl/d92;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/fi0;-><init>(Lcom/yandex/mobile/ads/impl/nk;Lcom/yandex/mobile/ads/impl/c92;)V

    return-object v0
.end method
