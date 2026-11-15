.class public final Lcom/yandex/mobile/ads/impl/qd0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o10;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qd0;->a:Lcom/yandex/mobile/ads/impl/o10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pd0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")",
            "Lcom/yandex/mobile/ads/impl/pd0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/tj2;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/pd0;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v1, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/pd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x2

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/qd0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->r()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v3, 0x1

    invoke-static {v3, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-static {p3}, Ls86;->c(F)I

    move-result p3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qd0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v3, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    if-lez p3, :cond_0

    if-lez p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p1, p3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-object v1

    :catchall_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/tj2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tj2;-><init>()V

    throw p0
.end method
