.class public final Lcom/yandex/mobile/ads/impl/qb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/su0;


# instance fields
.field private final a:Z

.field private final b:Lcom/yandex/mobile/ads/impl/l10;

.field private final c:Lcom/yandex/mobile/ads/impl/o10;

.field private final d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    new-instance p3, Lcom/yandex/mobile/ads/impl/l10;

    invoke-direct {p3}, Lcom/yandex/mobile/ads/impl/l10;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/qb;-><init>(Landroid/content/Context;ZLcom/yandex/mobile/ads/impl/l10;Lcom/yandex/mobile/ads/impl/o10;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/yandex/mobile/ads/impl/l10;Lcom/yandex/mobile/ads/impl/o10;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTypeProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionConverter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/qb;->a:Z

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qb;->b:Lcom/yandex/mobile/ads/impl/l10;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qb;->c:Lcom/yandex/mobile/ads/impl/o10;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/yandex/mobile/ads/impl/su0$a;
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const-string v5, "context"

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-static {p1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/wh2;->b:I

    invoke-static {p1, v5}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qb;->c:Lcom/yandex/mobile/ads/impl/o10;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v6, v1}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/qb;->b:Lcom/yandex/mobile/ads/impl/l10;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-static {v8, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/l10;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/k10;

    move-result-object v7

    sget-object v8, Lcom/yandex/mobile/ads/impl/k10;->b:Lcom/yandex/mobile/ads/impl/k10;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v6, p1

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int p1, v6

    :goto_0
    int-to-double v6, p1

    int-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/qb;->a:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/wh2;->b:I

    invoke-static {v0, v5}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qb;->c:Lcom/yandex/mobile/ads/impl/o10;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb;->d:Landroid/content/Context;

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result p0

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    int-to-double v0, v0

    int-to-double v5, p0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_2
    int-to-double v0, v0

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/su0$a;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/su0$a;-><init>()V

    iput p2, p0, Lcom/yandex/mobile/ads/impl/su0$a;->b:I

    iput p1, p0, Lcom/yandex/mobile/ads/impl/su0$a;->a:I

    return-object p0
.end method
