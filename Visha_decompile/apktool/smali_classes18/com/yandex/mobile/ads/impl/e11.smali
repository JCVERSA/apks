.class public final Lcom/yandex/mobile/ads/impl/e11;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e11;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/mobile/ads/impl/d11;
    .locals 9

    new-instance v8, Lcom/yandex/mobile/ads/impl/d11;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e11;->a:Landroid/content/Context;

    new-instance v3, Lcom/yandex/mobile/ads/impl/c;

    invoke-direct {v3, v1, p1}, Lcom/yandex/mobile/ads/impl/c;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/tn1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/tn1;-><init>()V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/d;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fe;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/yc1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/yc1;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/ki0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/ki0;-><init>()V

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/d11;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;Lcom/yandex/mobile/ads/impl/c;Lcom/yandex/mobile/ads/impl/tn1;Lcom/yandex/mobile/ads/impl/ee;Lcom/yandex/mobile/ads/impl/yc1;Lcom/yandex/mobile/ads/impl/ki0;)V

    return-object v8
.end method
