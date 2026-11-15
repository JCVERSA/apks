.class public final Lcom/yandex/mobile/ads/impl/fc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/lc2;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/lc2;

    invoke-direct {v4, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/lc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v0, "getApplicationContext(...)"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/fc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/lc2;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/lc2;Landroid/content/Context;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdLoaderController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fc2;->c:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fc2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Lcom/yandex/mobile/ads/impl/ea2;)V
    .locals 6

    .line 1
    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationParametersProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/ka2;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fc2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fc2;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/yandex/mobile/ads/impl/qa2;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->a()Lcom/yandex/mobile/ads/impl/ln2;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/ln2;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kn2;

    move-result-object v5

    .line 6
    invoke-direct {v3, v1, v4, v5}, Lcom/yandex/mobile/ads/impl/qa2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;Lcom/yandex/mobile/ads/impl/bb2;)V

    .line 7
    invoke-direct {v0, v1, v2, p3, v3}, Lcom/yandex/mobile/ads/impl/ka2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/ea2;Lcom/yandex/mobile/ads/impl/qa2;)V

    .line 8
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/fc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc2;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/yandex/mobile/ads/impl/lc2;->a(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/ka2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/sm0;)V
    .locals 1

    .line 11
    const-string v0, "vmapRequestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc2;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0, p2}, Lcom/yandex/mobile/ads/impl/lc2;->a(Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/sm0;)V

    return-void
.end method
