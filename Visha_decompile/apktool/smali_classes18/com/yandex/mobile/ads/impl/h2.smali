.class public final Lcom/yandex/mobile/ads/impl/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/d2;

.field private final b:Lcom/yandex/mobile/ads/impl/k2;

.field private final c:Lcom/yandex/mobile/ads/impl/j2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/d2;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/k2;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/k2;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/j2;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/j2;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/h2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/d2;Lcom/yandex/mobile/ads/impl/k2;Lcom/yandex/mobile/ads/impl/j2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/d2;Lcom/yandex/mobile/ads/impl/k2;Lcom/yandex/mobile/ads/impl/j2;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerDetectorHttpUsageChecker"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerStateProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerStateExpiredValidator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h2;->a:Lcom/yandex/mobile/ads/impl/d2;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/h2;->b:Lcom/yandex/mobile/ads/impl/k2;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/h2;->c:Lcom/yandex/mobile/ads/impl/j2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/g2;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h2;->b:Lcom/yandex/mobile/ads/impl/k2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k2;->a()Lcom/yandex/mobile/ads/impl/i2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/h2;->c:Lcom/yandex/mobile/ads/impl/j2;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/j2;->a(Lcom/yandex/mobile/ads/impl/i2;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h2;->a:Lcom/yandex/mobile/ads/impl/d2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/d2;->a(Lcom/yandex/mobile/ads/impl/i2;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/yandex/mobile/ads/impl/g2;->c:Lcom/yandex/mobile/ads/impl/g2;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/mobile/ads/impl/g2;->b:Lcom/yandex/mobile/ads/impl/g2;

    :goto_0
    return-object p0
.end method
