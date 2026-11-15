.class public Lcom/transsion/publish/view/clip/ClipImageView;
.super Lcom/transsion/publish/view/clip/BaseClipImageView;
.source "source.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/clip/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field public static SCALE_MAX:F = 4.0f

.field private static t:F = 2.0f


# instance fields
.field private d:F

.field private e:Z

.field private final f:[F

.field private g:Landroid/view/ScaleGestureDetector;

.field private final h:Landroid/graphics/Matrix;

.field private i:Landroid/view/GestureDetector;

.field private j:Z

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/clip/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/clip/BaseClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    const/16 p2, 0x9

    .line 5
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    .line 7
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    const/16 p2, 0x10

    .line 8
    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 9
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/transsion/publish/view/clip/ClipImageView$a;

    invoke-direct {v0, p0}, Lcom/transsion/publish/view/clip/ClipImageView$a;-><init>(Lcom/transsion/publish/view/clip/ClipImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->i:Landroid/view/GestureDetector;

    .line 11
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/publish/view/clip/ClipImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/publish/view/clip/ClipImageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/publish/view/clip/ClipImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/publish/view/clip/ClipImageView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/publish/view/clip/ClipImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f()F
    .locals 1

    .line 1
    sget v0, Lcom/transsion/publish/view/clip/ClipImageView;->t:F

    .line 2
    .line 3
    return v0
.end method

.method private g()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-double v3, v3

    .line 18
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    add-double/2addr v3, v5

    .line 24
    iget v7, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 25
    .line 26
    mul-int/lit8 v8, v7, 0x2

    .line 27
    .line 28
    sub-int v8, v1, v8

    .line 29
    .line 30
    int-to-double v8, v8

    .line 31
    cmpl-double v3, v3, v8

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-ltz v3, :cond_1

    .line 35
    .line 36
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 37
    .line 38
    int-to-float v8, v7

    .line 39
    cmpl-float v8, v3, v8

    .line 40
    .line 41
    if-lez v8, :cond_0

    .line 42
    .line 43
    neg-float v3, v3

    .line 44
    int-to-float v8, v7

    .line 45
    add-float/2addr v3, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v3, v4

    .line 48
    :goto_0
    iget v8, v0, Landroid/graphics/RectF;->right:F

    .line 49
    .line 50
    sub-int v9, v1, v7

    .line 51
    .line 52
    int-to-float v9, v9

    .line 53
    cmpg-float v9, v8, v9

    .line 54
    .line 55
    if-gez v9, :cond_2

    .line 56
    .line 57
    sub-int/2addr v1, v7

    .line 58
    int-to-float v1, v1

    .line 59
    sub-float v3, v1, v8

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v3, v4

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    float-to-double v7, v1

    .line 68
    add-double/2addr v7, v5

    .line 69
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 70
    .line 71
    mul-int/lit8 v5, v1, 0x2

    .line 72
    .line 73
    sub-int v5, v2, v5

    .line 74
    .line 75
    int-to-double v5, v5

    .line 76
    cmpl-double v5, v7, v5

    .line 77
    .line 78
    if-ltz v5, :cond_4

    .line 79
    .line 80
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 81
    .line 82
    int-to-float v6, v1

    .line 83
    cmpl-float v6, v5, v6

    .line 84
    .line 85
    if-lez v6, :cond_3

    .line 86
    .line 87
    neg-float v4, v5

    .line 88
    int-to-float v5, v1

    .line 89
    add-float/2addr v4, v5

    .line 90
    :cond_3
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 91
    .line 92
    sub-int v5, v2, v1

    .line 93
    .line 94
    int-to-float v5, v5

    .line 95
    cmpg-float v5, v0, v5

    .line 96
    .line 97
    if-gez v5, :cond_4

    .line 98
    .line 99
    sub-int/2addr v2, v1

    .line 100
    int-to-float v1, v2

    .line 101
    sub-float v4, v1, v0

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 104
    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v1
.end method

.method private h(FF)Z
    .locals 2

    .line 1
    mul-float/2addr p1, p1

    .line 2
    mul-float/2addr p2, p2

    .line 3
    add-float/2addr p1, p2

    .line 4
    float-to-double p1, p1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->k:I

    .line 10
    .line 11
    int-to-double v0, v0

    .line 12
    cmpl-double p1, p1, v0

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/publish/view/clip/ClipImageView;->clip(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public clip(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 8
    invoke-static {v0, p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->f:[F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
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
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 25
    .line 26
    mul-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    sub-int/2addr v2, v3

    .line 29
    sub-int/2addr v1, v2

    .line 30
    div-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    .line 40
    .line 41
    sub-int/2addr v1, v2

    .line 42
    div-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->r:I

    .line 51
    .line 52
    sub-int/2addr v1, v2

    .line 53
    div-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    int-to-float v1, v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    int-to-float v3, v3

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float v0, v0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    int-to-float v4, v4

    .line 82
    iget v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 83
    .line 84
    mul-int/lit8 v5, v5, 0x2

    .line 85
    .line 86
    int-to-float v5, v5

    .line 87
    sub-float/2addr v4, v5

    .line 88
    div-float/2addr v4, v3

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    int-to-float v5, v5

    .line 94
    iget v6, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 95
    .line 96
    mul-int/lit8 v6, v6, 0x2

    .line 97
    .line 98
    int-to-float v6, v6

    .line 99
    sub-float/2addr v5, v6

    .line 100
    div-float/2addr v5, v0

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    .line 106
    .line 107
    const/high16 v5, 0x40000000    # 2.0f

    .line 108
    .line 109
    mul-float v6, v4, v5

    .line 110
    .line 111
    sput v6, Lcom/transsion/publish/view/clip/ClipImageView;->t:F

    .line 112
    .line 113
    const/high16 v6, 0x40800000    # 4.0f

    .line 114
    .line 115
    mul-float/2addr v6, v4

    .line 116
    sput v6, Lcom/transsion/publish/view/clip/ClipImageView;->SCALE_MAX:F

    .line 117
    .line 118
    iget-object v6, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 119
    .line 120
    sub-float/2addr v1, v3

    .line 121
    div-float/2addr v1, v5

    .line 122
    sub-float/2addr v2, v0

    .line 123
    div-float/2addr v2, v5

    .line 124
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    div-int/lit8 v1, v1, 0x2

    .line 134
    .line 135
    int-to-float v1, v1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    div-int/lit8 v2, v2, 0x2

    .line 141
    .line 142
    int-to-float v2, v2

    .line 143
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->e:Z

    .line 153
    .line 154
    :cond_2
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    sget v2, Lcom/transsion/publish/view/clip/ClipImageView;->SCALE_MAX:F

    .line 18
    .line 19
    cmpg-float v4, v0, v2

    .line 20
    .line 21
    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    cmpl-float v4, v1, v5

    .line 26
    .line 27
    if-gtz v4, :cond_2

    .line 28
    .line 29
    :cond_1
    iget v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    .line 30
    .line 31
    cmpl-float v4, v0, v4

    .line 32
    .line 33
    if-lez v4, :cond_5

    .line 34
    .line 35
    cmpg-float v4, v1, v5

    .line 36
    .line 37
    if-gez v4, :cond_5

    .line 38
    .line 39
    :cond_2
    mul-float v4, v1, v0

    .line 40
    .line 41
    iget v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->d:F

    .line 42
    .line 43
    cmpg-float v4, v4, v5

    .line 44
    .line 45
    if-gez v4, :cond_3

    .line 46
    .line 47
    div-float v1, v5, v0

    .line 48
    .line 49
    :cond_3
    mul-float v4, v1, v0

    .line 50
    .line 51
    cmpl-float v4, v4, v2

    .line 52
    .line 53
    if-lez v4, :cond_4

    .line 54
    .line 55
    div-float v1, v2, v0

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->i:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->g:Landroid/view/ScaleGestureDetector;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v1

    .line 23
    move v4, v2

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v3, p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-float/2addr v4, v6

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-float/2addr v5, v6

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    int-to-float v3, p1

    .line 41
    div-float/2addr v4, v3

    .line 42
    div-float/2addr v5, v3

    .line 43
    iget v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    .line 44
    .line 45
    if-eq p1, v3, :cond_2

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    .line 48
    .line 49
    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    .line 50
    .line 51
    iput v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    .line 52
    .line 53
    :cond_2
    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eq p1, v0, :cond_8

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    if-eq p1, p2, :cond_3

    .line 63
    .line 64
    const/4 p2, 0x3

    .line 65
    if-eq p1, p2, :cond_8

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    .line 69
    .line 70
    sub-float p1, v4, p1

    .line 71
    .line 72
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    .line 73
    .line 74
    sub-float v1, v5, v1

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    invoke-direct {p0, p1, v1}, Lcom/transsion/publish/view/clip/ClipImageView;->h(FF)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    .line 85
    .line 86
    :cond_4
    iget-boolean v3, p0, Lcom/transsion/publish/view/clip/ClipImageView;->n:Z

    .line 87
    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    iget v8, p0, Lcom/transsion/publish/view/clip/ClipImageView;->p:I

    .line 109
    .line 110
    mul-int/2addr v8, p2

    .line 111
    sub-int/2addr v7, v8

    .line 112
    int-to-float v7, v7

    .line 113
    cmpg-float v6, v6, v7

    .line 114
    .line 115
    if-gtz v6, :cond_5

    .line 116
    .line 117
    move p1, v2

    .line 118
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    iget v7, p0, Lcom/transsion/publish/view/clip/ClipImageView;->s:I

    .line 127
    .line 128
    mul-int/2addr v7, p2

    .line 129
    sub-int/2addr v6, v7

    .line 130
    int-to-float p2, v6

    .line 131
    cmpg-float p2, v3, p2

    .line 132
    .line 133
    if-gtz p2, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    move v2, v1

    .line 137
    :goto_1
    iget-object p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 138
    .line 139
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/transsion/publish/view/clip/ClipImageView;->g()V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->h:Landroid/graphics/Matrix;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    iput v4, p0, Lcom/transsion/publish/view/clip/ClipImageView;->l:F

    .line 151
    .line 152
    iput v5, p0, Lcom/transsion/publish/view/clip/ClipImageView;->m:F

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->o:I

    .line 156
    .line 157
    :goto_2
    return v0
.end method

.method public setCropWH(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/publish/view/clip/ClipImageView;->q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/publish/view/clip/ClipImageView;->r:I

    .line 4
    .line 5
    return-void
.end method
