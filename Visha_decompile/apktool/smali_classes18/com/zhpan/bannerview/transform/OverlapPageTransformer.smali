.class public final Lcom/zhpan/bannerview/transform/OverlapPageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/zhpan/bannerview/transform/OverlapPageTransformer;",
        "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
        "",
        "orientation",
        "",
        "minScale",
        "unSelectedItemRotation",
        "unSelectedItemAlpha",
        "itemGap",
        "<init>",
        "(IFFFF)V",
        "Landroid/view/View;",
        "page",
        "position",
        "Lzfb;",
        "transformPage",
        "(Landroid/view/View;F)V",
        "a",
        "I",
        "b",
        "F",
        "c",
        "d",
        "e",
        "f",
        "scalingValue",
        "bannerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public f:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->a:I

    iput p2, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->b:F

    iput p3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->c:F

    iput p4, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->d:F

    iput p5, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->e:F

    const/4 p1, 0x0

    cmpg-float p3, p1, p2

    if-gtz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_1

    cmpg-float p1, p1, p4

    if-gtz p1, :cond_0

    cmpg-float p1, p4, p3

    if-gtz p1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->f:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unSelectedItemAlpha value should be between 1.0 to 0.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minScale value should be between 1.0 to 0.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->b:F

    float-to-double v1, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    iput v0, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->f:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->c:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    const/4 v6, 0x1

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v5, v6

    sub-float/2addr v5, v1

    cmpl-float v1, p2, v4

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    neg-float v3, v3

    :goto_1
    mul-float/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotationY(F)V

    :goto_2
    iget v1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->f:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->b:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->e:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ltz4;->a(F)I

    move-result v3

    iget v5, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->a:I

    if-eqz v5, :cond_6

    if-ne v5, v6, :cond_5

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    :goto_3
    int-to-float v4, v4

    sub-float v1, v2, v1

    mul-float/2addr v4, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_3

    :goto_4
    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Gives correct orientation value, ViewPager2.ORIENTATION_HORIZONTAL or ViewPager2.ORIENTATION_VERTICAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    :goto_5
    int-to-float v4, v4

    sub-float v1, v2, v1

    mul-float/2addr v4, v1

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_5

    :goto_6
    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_7
    iget p0, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->d:F

    cmpg-float p0, p0, v2

    if-nez p0, :cond_8

    goto :goto_9

    :cond_8
    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_9

    cmpg-float p0, p2, v2

    if-gtz p0, :cond_9

    int-to-float p0, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p0, p2

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    goto :goto_8

    :cond_9
    mul-float/2addr p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float p0, v0, p0

    :goto_8
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    return-void
.end method
