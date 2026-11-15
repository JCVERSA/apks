.class public Lcom/transsion/publish/view/ZoomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Matrix;

.field private i:Landroid/view/ScaleGestureDetector;

.field private j:Landroid/view/GestureDetector;

.field private k:Z

.field private l:Landroid/animation/ValueAnimator;

.field private m:Landroid/widget/OverScroller;

.field private n:I

.field private o:I

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    .line 6
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->m:Landroid/widget/OverScroller;

    .line 8
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 9
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/transsion/publish/view/ZoomImageView$a;

    invoke-direct {p3, p0}, Lcom/transsion/publish/view/ZoomImageView$a;-><init>(Lcom/transsion/publish/view/ZoomImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->i:Landroid/view/ScaleGestureDetector;

    .line 10
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/transsion/publish/view/ZoomImageView$b;

    invoke-direct {p3, p0}, Lcom/transsion/publish/view/ZoomImageView$b;-><init>(Lcom/transsion/publish/view/ZoomImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/ZoomImageView;->j:Landroid/view/GestureDetector;

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/publish/view/ZoomImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/publish/view/ZoomImageView;->n:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/publish/view/ZoomImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/publish/view/ZoomImageView;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->m:Landroid/widget/OverScroller;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/view/ZoomImageView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/publish/view/ZoomImageView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/publish/view/ZoomImageView;->n:I

    .line 2
    .line 3
    return-void
.end method

.method private getDoubleDrowScale()F
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 6
    .line 7
    sub-float/2addr v1, v0

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v2, 0x3d4ccccd    # 0.05f

    .line 13
    .line 14
    .line 15
    cmpg-float v1, v1, v2

    .line 16
    .line 17
    if-gez v1, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 20
    .line 21
    :cond_0
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    .line 22
    .line 23
    sub-float/2addr v1, v0

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    cmpg-float v1, v1, v2

    .line 29
    .line 30
    if-gez v1, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    .line 33
    .line 34
    :cond_1
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    .line 35
    .line 36
    sub-float/2addr v1, v0

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    cmpg-float v1, v1, v2

    .line 42
    .line 43
    if-gez v1, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    .line 46
    .line 47
    :cond_2
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    .line 48
    .line 49
    cmpl-float v2, v0, v1

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    cmpg-float v0, v0, v1

    .line 54
    .line 55
    if-gez v0, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->k:Z

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iget v1, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 71
    .line 72
    :goto_1
    return v1
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method private getScale()F
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method static bridge synthetic h(Lcom/transsion/publish/view/ZoomImageView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/publish/view/ZoomImageView;->o:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/publish/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic k(Lcom/transsion/publish/view/ZoomImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic l(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->o(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic m(Lcom/transsion/publish/view/ZoomImageView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->p(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic n(Lcom/transsion/publish/view/ZoomImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private o(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getDoubleDrowScale()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private p(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    cmpg-float v1, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-gtz v1, :cond_1

    .line 25
    .line 26
    move p1, v2

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    cmpg-float v0, v0, v1

    .line 37
    .line 38
    if-gtz v0, :cond_2

    .line 39
    .line 40
    move p2, v2

    .line 41
    :cond_2
    cmpl-float v0, p1, v2

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    cmpl-float v0, p2, v2

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private q()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 25
    .line 26
    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    cmpl-float v9, v5, v8

    .line 34
    .line 35
    const/high16 v10, 0x40000000    # 2.0f

    .line 36
    .line 37
    const/high16 v11, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-lez v9, :cond_2

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    cmpl-float v6, v3, v1

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    neg-float v1, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    mul-float/2addr v1, v11

    .line 49
    div-float/2addr v1, v10

    .line 50
    mul-float/2addr v3, v11

    .line 51
    div-float/2addr v3, v10

    .line 52
    add-float/2addr v3, v5

    .line 53
    sub-float/2addr v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    int-to-float v1, v1

    .line 56
    cmpg-float v9, v6, v1

    .line 57
    .line 58
    if-gez v9, :cond_3

    .line 59
    .line 60
    cmpl-float v9, v3, v1

    .line 61
    .line 62
    if-lez v9, :cond_1

    .line 63
    .line 64
    sub-float/2addr v1, v6

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v1, v8

    .line 67
    :goto_0
    cmpl-float v3, v7, v8

    .line 68
    .line 69
    if-lez v3, :cond_5

    .line 70
    .line 71
    int-to-float v0, v2

    .line 72
    cmpl-float v2, v4, v0

    .line 73
    .line 74
    if-lez v2, :cond_4

    .line 75
    .line 76
    neg-float v8, v7

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    mul-float/2addr v0, v11

    .line 79
    div-float/2addr v0, v10

    .line 80
    mul-float/2addr v4, v11

    .line 81
    div-float/2addr v4, v10

    .line 82
    add-float/2addr v7, v4

    .line 83
    sub-float v8, v0, v7

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    int-to-float v2, v2

    .line 87
    cmpg-float v3, v0, v2

    .line 88
    .line 89
    if-gez v3, :cond_7

    .line 90
    .line 91
    cmpl-float v3, v4, v2

    .line 92
    .line 93
    if-lez v3, :cond_6

    .line 94
    .line 95
    sub-float v8, v2, v0

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    mul-float/2addr v2, v11

    .line 99
    div-float/2addr v2, v10

    .line 100
    mul-float/2addr v4, v11

    .line 101
    div-float/2addr v4, v10

    .line 102
    add-float/2addr v7, v4

    .line 103
    sub-float v8, v2, v7

    .line 104
    .line 105
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 106
    .line 107
    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private r(FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput v0, v1, v2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput p1, v1, v0

    .line 24
    .line 25
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    const-wide/16 v0, 0x12c

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v0, Lcom/transsion/publish/view/ZoomImageView$c;

    .line 49
    .line 50
    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/publish/view/ZoomImageView$c;-><init>(Lcom/transsion/publish/view/ZoomImageView;FF)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->l:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    if-lez p1, :cond_2

    .line 17
    .line 18
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v2

    .line 25
    int-to-float v0, v0

    .line 26
    cmpl-float p1, p1, v0

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 33
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .line 36
    cmpg-float p1, p1, v0

    .line 37
    .line 38
    if-gtz p1, :cond_3

    .line 39
    .line 40
    move v1, v2

    .line 41
    :cond_3
    :goto_0
    return v1
.end method

.method public canScrollVertically(I)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    if-lez p1, :cond_2

    .line 17
    .line 18
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v2

    .line 25
    int-to-float v0, v0

    .line 26
    cmpl-float p1, p1, v0

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .line 36
    cmpg-float p1, p1, v0

    .line 37
    .line 38
    if-gtz p1, :cond_3

    .line 39
    .line 40
    move v1, v2

    .line 41
    :cond_3
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    .line 30
    if-le v3, v0, :cond_1

    .line 31
    .line 32
    if-gt v2, v1, :cond_1

    .line 33
    .line 34
    int-to-float v5, v0

    .line 35
    mul-float/2addr v5, v4

    .line 36
    int-to-float v6, v3

    .line 37
    div-float/2addr v5, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v5, v4

    .line 40
    :goto_0
    if-gt v3, v0, :cond_2

    .line 41
    .line 42
    if-le v2, v1, :cond_2

    .line 43
    .line 44
    int-to-float v5, v1

    .line 45
    mul-float/2addr v5, v4

    .line 46
    int-to-float v6, v2

    .line 47
    div-float/2addr v5, v6

    .line 48
    :cond_2
    if-gt v3, v0, :cond_3

    .line 49
    .line 50
    if-le v2, v1, :cond_4

    .line 51
    .line 52
    :cond_3
    if-lt v3, v0, :cond_5

    .line 53
    .line 54
    if-lt v2, v1, :cond_5

    .line 55
    .line 56
    :cond_4
    int-to-float v5, v0

    .line 57
    mul-float/2addr v5, v4

    .line 58
    int-to-float v6, v3

    .line 59
    div-float/2addr v5, v6

    .line 60
    int-to-float v6, v1

    .line 61
    mul-float/2addr v6, v4

    .line 62
    int-to-float v7, v2

    .line 63
    div-float/2addr v6, v7

    .line 64
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    :cond_5
    iput v5, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 69
    .line 70
    const/high16 v6, 0x40000000    # 2.0f

    .line 71
    .line 72
    mul-float v7, v5, v6

    .line 73
    .line 74
    iput v7, p0, Lcom/transsion/publish/view/ZoomImageView;->g:F

    .line 75
    .line 76
    const/high16 v7, 0x40800000    # 4.0f

    .line 77
    .line 78
    mul-float/2addr v5, v7

    .line 79
    iput v5, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    mul-float/2addr v0, v4

    .line 83
    div-float/2addr v0, v6

    .line 84
    div-int/lit8 v3, v3, 0x2

    .line 85
    .line 86
    int-to-float v3, v3

    .line 87
    sub-float v3, v0, v3

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    mul-float/2addr v1, v4

    .line 91
    div-float/2addr v1, v6

    .line 92
    div-int/lit8 v2, v2, 0x2

    .line 93
    .line 94
    int-to-float v2, v2

    .line 95
    sub-float v2, v1, v2

    .line 96
    .line 97
    iget-object v4, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 98
    .line 99
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 103
    .line 104
    iget v3, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 105
    .line 106
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/transsion/publish/view/ZoomImageView;->d:Z

    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView;->i:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->j:Landroid/view/GestureDetector;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    or-int/2addr p1, v0

    .line 14
    return p1
.end method

.method public scale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->h:Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->q()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public scaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/ZoomImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    mul-float/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->e:F

    .line 11
    .line 12
    cmpg-float v1, p1, v0

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/transsion/publish/view/ZoomImageView;->f:F

    .line 35
    .line 36
    cmpl-float p1, p1, v0

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    div-int/lit8 p1, p1, 0x2

    .line 45
    .line 46
    int-to-float p1, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    div-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/publish/view/ZoomImageView;->r(FFF)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method
