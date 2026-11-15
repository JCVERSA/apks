.class public final Lcom/yandex/mobile/ads/impl/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/md0;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/md0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cg;->a:Lcom/yandex/mobile/ads/impl/md0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/uf;)Lcom/yandex/mobile/ads/impl/bg;
    .locals 7

    const-string v0, "appOpenAdContentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/bg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/cg;->b:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cg;->a:Lcom/yandex/mobile/ads/impl/md0;

    new-instance v4, Lcom/yandex/mobile/ads/impl/pm1;

    invoke-direct {v4, p0}, Lcom/yandex/mobile/ads/impl/pm1;-><init>(Lcom/yandex/mobile/ads/impl/md0;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/lt0;

    invoke-direct {v5, v2}, Lcom/yandex/mobile/ads/impl/lt0;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/bg;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/uf;Lcom/yandex/mobile/ads/impl/pm1;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;)V

    return-object v0
.end method
