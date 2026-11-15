.class public Lcom/transsion/blur/ShapeBlurView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/blur/ShapeBlurView$StopException;,
        Lcom/transsion/blur/ShapeBlurView$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1

.field public static I:I

.field public static J:I

.field public static K:Lcom/transsion/blur/ShapeBlurView$StopException;


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public B:Landroid/graphics/Matrix;

.field public C:Landroid/graphics/BitmapShader;

.field public D:Z

.field public E:I

.field public F:I

.field public G:Landroid/graphics/Point;

.field public final H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public b:Landroid/content/Context;

.field public c:F

.field public d:I

.field public e:F

.field public final f:Lcg0;

.field public g:Z

.field public h:Landroid/graphics/Bitmap;

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Canvas;

.field public k:Z

.field public final l:Landroid/graphics/Rect;

.field public final m:Landroid/graphics/RectF;

.field public n:Landroid/view/View;

.field public o:Z

.field public p:I

.field public final q:Landroid/graphics/Paint;

.field public r:F

.field public s:F

.field public t:F

.field public final u:[F

.field public final v:Landroid/graphics/Path;

.field public w:[F

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/Paint;

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/blur/ShapeBlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/blur/ShapeBlurView$StopException;-><init>(Lqf9;)V

    sput-object v0, Lcom/transsion/blur/ShapeBlurView;->K:Lcom/transsion/blur/ShapeBlurView$StopException;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/blur/ShapeBlurView;->r:F

    iput v1, p0, Lcom/transsion/blur/ShapeBlurView;->s:F

    iput v1, p0, Lcom/transsion/blur/ShapeBlurView;->t:F

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->v:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iput v1, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->G:Landroid/graphics/Point;

    new-instance v4, Lcom/transsion/blur/ShapeBlurView$a;

    invoke-direct {v4, p0}, Lcom/transsion/blur/ShapeBlurView$a;-><init>(Lcom/transsion/blur/ShapeBlurView;)V

    iput-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->getBlurImpl()Lcg0;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->f:Lcg0;

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Lcom/transsion/common/R$styleable;->ShapeBlurView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v5, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_radius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v4, v6, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->e:F

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_down_sample:I

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->c:F

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_overlay_color:I

    const v5, 0x4d1a1a1a

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_corner_radius:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    sget v5, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_corner_radius_top_left:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v0

    sget v5, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_corner_radius_top_right:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v4

    sget v5, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_corner_radius_bottom_right:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    aput v5, v2, v6

    sget v5, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_corner_radius_bottom_left:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x3

    aput v5, v2, v6

    invoke-virtual {p0, p1}, Lcom/transsion/blur/ShapeBlurView;->q(F)V

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_mode:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_support_dynamic_blur:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/blur/ShapeBlurView;->D:Z

    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_border_width:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iput v1, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget p1, Lcom/transsion/common/R$styleable;->ShapeBlurView_blur_border_color:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->getState()[I

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/transsion/blur/ShapeBlurView;->G:Landroid/graphics/Point;

    invoke-static {p1}, Lraa;->d(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->E:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static bridge synthetic a(Lcom/transsion/blur/ShapeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/blur/ShapeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static build(Landroid/content/Context;)Lcom/transsion/blur/ShapeBlurView$b;
    .locals 2

    new-instance v0, Lcom/transsion/blur/ShapeBlurView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/blur/ShapeBlurView$b;-><init>(Landroid/content/Context;Lqf9;)V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/transsion/blur/ShapeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/blur/ShapeBlurView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/blur/ShapeBlurView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/blur/ShapeBlurView;->o:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/blur/ShapeBlurView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/blur/ShapeBlurView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/blur/ShapeBlurView;->D:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/blur/ShapeBlurView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/blur/ShapeBlurView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/blur/ShapeBlurView;->k:Z

    return-void
.end method

.method public static bridge synthetic j()I
    .locals 1

    sget v0, Lcom/transsion/blur/ShapeBlurView;->I:I

    return v0
.end method

.method public static bridge synthetic k(I)V
    .locals 0

    sput p0, Lcom/transsion/blur/ShapeBlurView;->I:I

    return-void
.end method


# virtual methods
.method public callDraw()V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v4

    neg-int v3, v3

    aget v6, v0, v5

    neg-int v6, v6

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v0, v4

    add-int/2addr v3, v7

    aget v0, v0, v5

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput-boolean v5, p0, Lcom/transsion/blur/ShapeBlurView;->k:Z

    sget v7, Lcom/transsion/blur/ShapeBlurView;->I:I

    add-int/2addr v7, v5

    sput v7, Lcom/transsion/blur/ShapeBlurView;->I:I

    :try_start_0
    iget-object v7, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iget-object v10, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v7, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lcom/transsion/blur/ShapeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-boolean v4, p0, Lcom/transsion/blur/ShapeBlurView;->k:Z

    sget v2, Lcom/transsion/blur/ShapeBlurView;->I:I

    sub-int/2addr v2, v5

    sput v2, Lcom/transsion/blur/ShapeBlurView;->I:I

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :goto_2
    iput-boolean v4, p0, Lcom/transsion/blur/ShapeBlurView;->k:Z

    sget v2, Lcom/transsion/blur/ShapeBlurView;->I:I

    sub-int/2addr v2, v5

    sput v2, Lcom/transsion/blur/ShapeBlurView;->I:I

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1

    :goto_3
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/blur/ShapeBlurView;->l(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/blur/ShapeBlurView;->o:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public dp2px(F)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/blur/ShapeBlurView;->k:Z

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/blur/ShapeBlurView;->I:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    sget-object p0, Lcom/transsion/blur/ShapeBlurView;->K:Lcom/transsion/blur/ShapeBlurView$StopException;

    throw p0
.end method

.method public getActivityDecorView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlurImpl()Lcg0;
    .locals 7

    sget v0, Lcom/transsion/blur/ShapeBlurView;->J:I

    const/4 v1, 0x3

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x4

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lwb;

    invoke-direct {v0}, Lwb;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v4, v2}, Lwb;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    invoke-virtual {v0}, Lwb;->release()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    sput v1, Lcom/transsion/blur/ShapeBlurView;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget v0, Lcom/transsion/blur/ShapeBlurView;->J:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "androidx.renderscript.RenderScript"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lzb;

    invoke-direct {v0}, Lzb;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v5, v2}, Lzb;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    invoke-virtual {v0}, Lzb;->release()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    sput v4, Lcom/transsion/blur/ShapeBlurView;->J:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    sget v0, Lcom/transsion/blur/ShapeBlurView;->J:I

    const/4 v5, 0x2

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v6, "android.support.v8.renderscript.RenderScript"

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Ly6a;

    invoke-direct {v0}, Ly6a;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, v3, v2}, Ly6a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    invoke-virtual {v0}, Ly6a;->release()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    sput v5, Lcom/transsion/blur/ShapeBlurView;->J:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_2
    sget p0, Lcom/transsion/blur/ShapeBlurView;->J:I

    if-nez p0, :cond_3

    const/4 p0, -0x1

    sput p0, Lcom/transsion/blur/ShapeBlurView;->J:I

    :cond_3
    sget p0, Lcom/transsion/blur/ShapeBlurView;->J:I

    if-eq p0, v4, :cond_6

    if-eq p0, v5, :cond_5

    if-eq p0, v1, :cond_4

    new-instance p0, Ln93;

    invoke-direct {p0}, Ln93;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Lwb;

    invoke-direct {p0}, Lwb;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Ly6a;

    invoke-direct {p0}, Ly6a;-><init>()V

    return-object p0

    :cond_6
    new-instance p0, Lzb;

    invoke-direct {p0}, Lzb;-><init>()V

    return-object p0
.end method

.method public getBlurMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    return p0
.end method

.method public getBorderColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->getMaxCornerRadius()F

    move-result p0

    return p0
.end method

.method public getMaxCornerRadius()F
    .locals 4

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getState()[I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Landroid/util/StateSet;->WILD_CARD:[I

    return-object p0
.end method

.method public l(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->f:Lcg0;

    invoke-interface {p0, p1, p2}, Lcg0;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 2

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/blur/ShapeBlurView;->n(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/blur/ShapeBlurView;->o(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/blur/ShapeBlurView;->p(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    :cond_1
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->r:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->s:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->t:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->r:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->s:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/blur/ShapeBlurView;->t:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->r:F

    iget v2, p0, Lcom/transsion/blur/ShapeBlurView;->s:F

    iget v3, p0, Lcom/transsion/blur/ShapeBlurView;->t:F

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->reset()V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->r:F

    iget p3, p0, Lcom/transsion/blur/ShapeBlurView;->s:F

    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->t:F

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v0

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iput p2, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, p2

    iput v1, p3, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v0

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iput p2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p3, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, p2

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p2, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    :goto_2
    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    div-float v1, p3, v0

    div-float/2addr p3, v0

    invoke-virtual {p2, v1, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method

.method public final o(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    :cond_1
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->reset()V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    div-float/2addr p3, v0

    invoke-virtual {p2, v1, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->x:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/blur/ShapeBlurView$2;

    invoke-direct {v0, p0}, Lcom/transsion/blur/ShapeBlurView$2;-><init>(Lcom/transsion/blur/ShapeBlurView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/blur/ShapeBlurView;->o:Z

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/blur/ShapeBlurView;->o:Z

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->v()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/transsion/blur/ShapeBlurView;->E:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->G:Landroid/graphics/Point;

    invoke-static {v0}, Lraa;->d(Landroid/graphics/Point;)V

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->E:I

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->v()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/blur/ShapeBlurView;->m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public final p(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->G:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/transsion/blur/ShapeBlurView;->F:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->v:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->w:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->v:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->v:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->m:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget p2, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/transsion/blur/ShapeBlurView;->v:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final q(F)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v6, v5, v2

    cmpg-float v6, v6, v4

    if-gez v6, :cond_0

    aput v4, v5, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    cmpg-float v0, p1, v4

    if-gez v0, :cond_2

    move p1, v4

    :cond_2
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->r()V

    return-void
.end method

.method public final r()V
    .locals 13

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->w:[F

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v9, v4, v8

    aget v10, v4, v7

    aget v11, v4, v6

    aget v4, v4, v5

    const/16 v12, 0x8

    new-array v12, v12, [F

    aput v9, v12, v8

    aput v9, v12, v7

    aput v10, v12, v6

    aput v10, v12, v5

    aput v11, v12, v3

    aput v11, v12, v2

    aput v4, v12, v1

    aput v4, v12, v0

    iput-object v12, p0, Lcom/transsion/blur/ShapeBlurView;->w:[F

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v9, p0, v8

    aput v9, v4, v8

    aget v8, p0, v8

    aput v8, v4, v7

    aget v7, p0, v7

    aput v7, v4, v6

    aput v7, v4, v5

    aget v6, p0, v6

    aput v6, v4, v3

    aput v6, v4, v2

    aget p0, p0, v5

    aput p0, v4, v1

    aput p0, v4, v0

    :goto_0
    return-void
.end method

.method public refreshView(Lcom/transsion/blur/ShapeBlurView$b;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->a(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->a(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->a(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->p:I

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->c(Lcom/transsion/blur/ShapeBlurView$b;)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->c(Lcom/transsion/blur/ShapeBlurView$b;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->c(Lcom/transsion/blur/ShapeBlurView$b;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->A:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->getState()[I

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v0, v2

    :cond_2
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->d(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->d(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->z:F

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->y:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v0, v2

    :cond_3
    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v4, v4, v3

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v6

    aget v6, v6, v3

    cmpl-float v4, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v4, v4, v2

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v8

    aget v8, v8, v2

    cmpl-float v4, v4, v8

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v4, v4, v7

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v8

    aget v8, v8, v7

    cmpl-float v4, v4, v8

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    aget v4, v4, v6

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v8

    aget v8, v8, v6

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v4

    aget v4, v4, v3

    aput v4, v0, v3

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v3

    aget v3, v3, v2

    aput v3, v0, v2

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v3

    aget v3, v3, v6

    aput v3, v0, v6

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->u:[F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->e(Lcom/transsion/blur/ShapeBlurView$b;)[F

    move-result-object v3

    aget v3, v3, v7

    aput v3, v0, v7

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->r()V

    move v0, v2

    :cond_5
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->g(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v3

    if-eq v3, v1, :cond_6

    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->g(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v3

    if-eq v1, v3, :cond_6

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->g(Lcom/transsion/blur/ShapeBlurView$b;)I

    move-result v0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->d:I

    move v0, v2

    :cond_6
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->b(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->e:F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->b(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->b(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->e:F

    iput-boolean v2, p0, Lcom/transsion/blur/ShapeBlurView;->g:Z

    move v0, v2

    :cond_7
    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->f(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_8

    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->c:F

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->f(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/transsion/blur/ShapeBlurView$b;->f(Lcom/transsion/blur/ShapeBlurView$b;)F

    move-result p1

    iput p1, p0, Lcom/transsion/blur/ShapeBlurView;->c:F

    iput-boolean v2, p0, Lcom/transsion/blur/ShapeBlurView;->g:Z

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->u()V

    goto :goto_1

    :cond_8
    move v2, v0

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public s()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/transsion/blur/ShapeBlurView;->e:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V

    return v0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iget v2, p0, Lcom/transsion/blur/ShapeBlurView;->c:F

    div-float/2addr v1, v2

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    mul-float/2addr v2, v1

    div-float/2addr v2, v3

    move v1, v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v5, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v4, p0, Lcom/transsion/blur/ShapeBlurView;->g:Z

    iget-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :cond_3
    :try_start_3
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/transsion/blur/ShapeBlurView;->j:Landroid/graphics/Canvas;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    :try_start_4
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V

    return v0

    :cond_4
    move v4, v5

    :cond_5
    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/transsion/blur/ShapeBlurView;->f:Lcg0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4, v1}, Lcg0;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v0, p0, Lcom/transsion/blur/ShapeBlurView;->g:Z

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v5

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V

    throw v1

    :catch_1
    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->t()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/blur/ShapeBlurView;->u()V

    iget-object p0, p0, Lcom/transsion/blur/ShapeBlurView;->f:Lcg0;

    invoke-interface {p0}, Lcg0;->release()V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->h:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->i:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->B:Landroid/graphics/Matrix;

    :cond_2
    iget-object v0, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->C:Landroid/graphics/BitmapShader;

    :cond_3
    iput-object v1, p0, Lcom/transsion/blur/ShapeBlurView;->b:Landroid/content/Context;

    return-void
.end method

.method public final v()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {}, Lhoc;->a()I

    move-result v1

    invoke-static {v0, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->F:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/transsion/blur/ShapeBlurView;->F:I

    :cond_1
    :goto_0
    return-void
.end method
