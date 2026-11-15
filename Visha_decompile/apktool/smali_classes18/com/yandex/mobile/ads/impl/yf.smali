.class public final Lcom/yandex/mobile/ads/impl/yf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)Lcom/yandex/mobile/ads/impl/xf;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    sget p0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->W()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/in;

    new-instance v4, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v4, v2}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/zf;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/zf;-><init>(Lcom/yandex/mobile/ads/impl/en2;)V

    sget v0, Lcom/yandex/mobile/ads/impl/ag;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ag$a;->a()Lcom/yandex/mobile/ads/impl/ag;

    move-result-object v7

    new-instance v8, Lcom/yandex/mobile/ads/impl/wk1;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/wk1;-><init>()V

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/in;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/zf;Lcom/yandex/mobile/ads/impl/ag;Lcom/yandex/mobile/ads/impl/wk1;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/hk;

    new-instance v4, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v4, v2}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/zf;

    invoke-direct {v6, p1}, Lcom/yandex/mobile/ads/impl/zf;-><init>(Lcom/yandex/mobile/ads/impl/en2;)V

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/hk;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/zf;)V

    :goto_0
    return-object p0
.end method
