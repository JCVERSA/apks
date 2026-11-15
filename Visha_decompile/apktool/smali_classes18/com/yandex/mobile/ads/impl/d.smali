.class public final Lcom/yandex/mobile/ads/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/b2;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/b2;

    .line 3
    sget v1, Lcom/yandex/mobile/ads/impl/c2;->h:I

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/c2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/c2;

    move-result-object v1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/b2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/c2;)V

    return-object v0
.end method

.method public static final a()Lcom/yandex/mobile/ads/impl/b;
    .locals 2

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/b;

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/w82;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/w82;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/b;-><init>(Lcom/yandex/mobile/ads/impl/w82;)V

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fe;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/fe;

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/mu1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/mu1;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/fe;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/mu1;)V

    return-object v0
.end method
