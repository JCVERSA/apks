.class public final Lcom/yandex/mobile/ads/impl/l10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/it1;

.field private final b:Lcom/yandex/mobile/ads/impl/rt1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/it1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/it1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/l10;-><init>(Lcom/yandex/mobile/ads/impl/it1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/it1;)V
    .locals 1

    .line 3
    const-string v0, "safePackageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l10;->a:Lcom/yandex/mobile/ads/impl/it1;

    .line 6
    new-instance p1, Lcom/yandex/mobile/ads/impl/rt1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/rt1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l10;->b:Lcom/yandex/mobile/ads/impl/rt1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/k10;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l10;->b:Lcom/yandex/mobile/ads/impl/rt1;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/rt1;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, v3

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float v5, v2, v1

    invoke-static {v4, v5}, Lwn8;->f(FF)F

    move-result v4

    const/16 v5, 0xa0

    int-to-float v5, v5

    mul-float/2addr v1, v5

    div-float/2addr v3, v1

    div-float/2addr v2, v1

    mul-float/2addr v3, v3

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "uimode"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/app/UiModeManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_1
    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l10;->a:Lcom/yandex/mobile/ads/impl/it1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    const-string v0, "android.hardware.touchscreen"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_1

    :catchall_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lcom/yandex/mobile/ads/impl/k10;->d:Lcom/yandex/mobile/ads/impl/k10;

    return-object p0

    :cond_2
    const-wide/high16 p0, 0x401c000000000000L    # 7.0

    cmpl-double p0, v1, p0

    if-gez p0, :cond_4

    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, v4, p0

    if-ltz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/yandex/mobile/ads/impl/k10;->b:Lcom/yandex/mobile/ads/impl/k10;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p0, Lcom/yandex/mobile/ads/impl/k10;->c:Lcom/yandex/mobile/ads/impl/k10;

    :goto_3
    return-object p0
.end method
