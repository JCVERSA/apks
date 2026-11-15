.class public Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SHADOW_COLOR:I = -0x7f777778


# instance fields
.field public b:Landroid/content/Context;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:F

.field public f:F

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->c:Landroid/graphics/Paint;

    .line 6
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v1, 0x41200000    # 10.0f

    .line 11
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 12
    sget v1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_radius:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowRadius(F)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const v1, 0x40533333    # 3.3f

    .line 14
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 15
    sget v0, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_distance:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowDistance(F)V

    .line 16
    sget p3, Lcom/transsion/widgetslib/R$drawable;->img_shadow:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_0

    .line 17
    sget p1, Lcom/transsion/widgetslib/R$styleable;->ShadowLayout_os_shadow_color:I

    const p3, -0x7f777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->setShadowColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 19
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 20
    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->f:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->e:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getShadowColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->d:I

    return p0
.end method

.method public getShadowDistance()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->f:F

    return p0
.end method

.method public getShadowRadius()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->e:F

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 4

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->d:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->f:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->e:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lolb;->f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->a()V

    return-void
.end method

.method public setShadowDistance(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->f:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->a()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->e:F

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;->a()V

    return-void
.end method
