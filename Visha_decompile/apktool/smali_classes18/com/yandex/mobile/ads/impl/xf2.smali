.class public final Lcom/yandex/mobile/ads/impl/xf2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xf2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fz1;

.field private final b:Lcom/yandex/mobile/ads/impl/fz1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fz1;Lcom/yandex/mobile/ads/impl/fz1;)V
    .locals 1

    const-string v0, "viewSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSize"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    return-void
.end method

.method private final a(FFLcom/yandex/mobile/ads/impl/xf2$a;)Landroid/graphics/Matrix;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p1, p2, p0, p0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yf2;)Landroid/graphics/Matrix;
    .locals 2

    .line 8
    const-string v0, "videoScaleType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    .line 10
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    .line 12
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float p1, v1, p1

    div-float/2addr v1, v0

    .line 17
    sget-object v0, Lcom/yandex/mobile/ads/impl/xf2$a;->c:Lcom/yandex/mobile/ads/impl/xf2$a;

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/xf2;->a(FFLcom/yandex/mobile/ads/impl/xf2$a;)Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xf2;->a:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xf2;->b:Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 21
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float p1, v1, p1

    div-float/2addr v1, v0

    .line 22
    sget-object v0, Lcom/yandex/mobile/ads/impl/xf2$a;->c:Lcom/yandex/mobile/ads/impl/xf2$a;

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/xf2;->a(FFLcom/yandex/mobile/ads/impl/xf2$a;)Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    .line 23
    :cond_2
    sget-object p1, Lcom/yandex/mobile/ads/impl/xf2$a;->b:Lcom/yandex/mobile/ads/impl/xf2$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0, p1}, Lcom/yandex/mobile/ads/impl/xf2;->a(FFLcom/yandex/mobile/ads/impl/xf2$a;)Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
