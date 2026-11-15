.class public final Lcom/yandex/mobile/ads/impl/is1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tm1;

.field private final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/md0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/tm1;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/tm1;-><init>(Lcom/yandex/mobile/ads/impl/md0;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/is1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tm1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tm1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyRewardedAdShowListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/is1;->a:Lcom/yandex/mobile/ads/impl/tm1;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/is1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/bs1;)Lcom/yandex/mobile/ads/impl/hs1;
    .locals 7

    const-string v0, "contentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hs1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/is1;->b:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/is1;->a:Lcom/yandex/mobile/ads/impl/tm1;

    new-instance v5, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v5, v2}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/hs1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bs1;Lcom/yandex/mobile/ads/impl/tm1;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;)V

    return-object v0
.end method
