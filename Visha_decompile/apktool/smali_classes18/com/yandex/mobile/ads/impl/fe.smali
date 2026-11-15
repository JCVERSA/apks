.class public final Lcom/yandex/mobile/ads/impl/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ee;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private final b:Lcom/yandex/mobile/ads/impl/mu1;

.field private final c:Lcom/yandex/mobile/ads/impl/k2;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/mu1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfigurationExpiredDateValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fe;->a:Lcom/yandex/mobile/ads/impl/pw1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fe;->b:Lcom/yandex/mobile/ads/impl/mu1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/k2;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/k2;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fe;->c:Lcom/yandex/mobile/ads/impl/k2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fe;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fe;->c:Lcom/yandex/mobile/ads/impl/k2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k2;->a()Lcom/yandex/mobile/ads/impl/i2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i2;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fe;->a:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fe;->d:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fe;->b:Lcom/yandex/mobile/ads/impl/mu1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/mu1;->a(Lcom/yandex/mobile/ads/impl/ju1;)Z

    move-result p0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method
