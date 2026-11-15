.class public final Lcom/yandex/mobile/ads/impl/zs0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/dr0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/at0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/at0;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/dr0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/at0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->e0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ye0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ge0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/vf0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ge0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
