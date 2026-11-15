.class public final Lcom/yandex/mobile/ads/impl/cv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/et1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/et1;)V
    .locals 1

    const-string v0, "sslSocketFactoryCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cv1;->a:Lcom/yandex/mobile/ads/impl/et1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/dv1;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/zc;->a()Lcom/yandex/mobile/ads/impl/d92;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/d92;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cv1;->a:Lcom/yandex/mobile/ads/impl/et1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/et1;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->z0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/dv1;

    invoke-direct {v1, v0, p0, p1}, Lcom/yandex/mobile/ads/impl/dv1;-><init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;Z)V

    return-object v1
.end method
