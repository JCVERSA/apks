.class public Lcom/transsion/photoview/PhotoViewAttachment;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;,
        Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private final h:Landroid/widget/ImageView;

.field private i:Landroid/view/GestureDetector;

.field private j:Lcom/transsion/photoview/b;

.field private k:Lcom/transsion/photoview/n;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/graphics/RectF;

.field private final p:[F

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

.field private t:I

.field private u:I

.field private v:F

.field private w:Z

.field private x:Landroid/widget/ImageView$ScaleType;

.field private final y:Lcom/transsion/photoview/c;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->a:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    const/16 v0, 0xc8

    .line 12
    .line 13
    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 18
    .line 19
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 20
    .line 21
    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 22
    .line 23
    const/high16 v0, 0x40400000    # 3.0f

    .line 24
    .line 25
    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 39
    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    .line 46
    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    new-array v1, v1, [F

    .line 64
    .line 65
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 69
    .line 70
    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    .line 73
    .line 74
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 77
    .line 78
    new-instance v0, Lcom/transsion/photoview/PhotoViewAttachment$a;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/transsion/photoview/PhotoViewAttachment$a;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->y:Lcom/transsion/photoview/c;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    .line 102
    .line 103
    new-instance v1, Lcom/transsion/photoview/b;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v1, v2, v0}, Lcom/transsion/photoview/b;-><init>(Landroid/content/Context;Lcom/transsion/photoview/c;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->Q(Landroid/widget/ImageView;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/transsion/photoview/n;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lcom/transsion/photoview/n;-><init>(Landroid/widget/ImageView;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    .line 123
    .line 124
    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->V(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private B()Z
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-direct {p0, v4}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    cmpg-float v5, v2, v4

    .line 29
    .line 30
    const/4 v6, -0x1

    .line 31
    const/high16 v7, 0x40000000    # 2.0f

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    const/4 v9, 0x1

    .line 35
    const/4 v10, 0x2

    .line 36
    const/4 v11, 0x0

    .line 37
    if-gtz v5, :cond_3

    .line 38
    .line 39
    sget-object v5, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    .line 40
    .line 41
    iget-object v12, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    aget v5, v5, v12

    .line 48
    .line 49
    if-eq v5, v10, :cond_2

    .line 50
    .line 51
    if-eq v5, v8, :cond_1

    .line 52
    .line 53
    sub-float/2addr v4, v2

    .line 54
    div-float/2addr v4, v7

    .line 55
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    :goto_0
    sub-float/2addr v4, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sub-float/2addr v4, v2

    .line 60
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 64
    .line 65
    neg-float v4, v2

    .line 66
    :goto_1
    iput v10, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    cmpl-float v5, v2, v11

    .line 72
    .line 73
    if-lez v5, :cond_4

    .line 74
    .line 75
    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 76
    .line 77
    neg-float v4, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 80
    .line 81
    cmpg-float v5, v2, v4

    .line 82
    .line 83
    if-gez v5, :cond_5

    .line 84
    .line 85
    iput v9, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 86
    .line 87
    sub-float/2addr v4, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iput v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 90
    .line 91
    move v4, v11

    .line 92
    :goto_2
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-direct {p0, v2}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    int-to-float v2, v2

    .line 99
    cmpg-float v5, v3, v2

    .line 100
    .line 101
    if-gtz v5, :cond_8

    .line 102
    .line 103
    sget-object v1, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    .line 104
    .line 105
    iget-object v5, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    aget v1, v1, v5

    .line 112
    .line 113
    if-eq v1, v10, :cond_7

    .line 114
    .line 115
    if-eq v1, v8, :cond_6

    .line 116
    .line 117
    sub-float/2addr v2, v3

    .line 118
    div-float/2addr v2, v7

    .line 119
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 120
    .line 121
    :goto_3
    sub-float/2addr v2, v0

    .line 122
    move v11, v2

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    sub-float/2addr v2, v3

    .line 125
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 129
    .line 130
    neg-float v0, v0

    .line 131
    move v11, v0

    .line 132
    :goto_4
    iput v10, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 136
    .line 137
    cmpl-float v5, v3, v11

    .line 138
    .line 139
    if-lez v5, :cond_9

    .line 140
    .line 141
    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 142
    .line 143
    neg-float v11, v3

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 146
    .line 147
    cmpg-float v1, v0, v2

    .line 148
    .line 149
    if-gez v1, :cond_a

    .line 150
    .line 151
    sub-float v11, v2, v0

    .line 152
    .line 153
    iput v9, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_a
    iput v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 157
    .line 158
    :goto_5
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 159
    .line 160
    invoke-virtual {v0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    .line 162
    .line 163
    return v9
.end method

.method private E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private F()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    .line 16
    .line 17
    return-object v0
.end method

.method private H(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-int/2addr v0, p1

    .line 15
    return v0
.end method

.method private I(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-int/2addr v0, p1

    .line 15
    return v0
.end method

.method private P(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    .line 7
    .line 8
    aget p1, p1, p2

    .line 9
    .line 10
    return p1
.end method

.method private Q(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Lcom/transsion/photoview/PhotoViewAttachment$b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/photoview/PhotoViewAttachment$b;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/photoview/PhotoViewAttachment$c;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/transsion/photoview/PhotoViewAttachment$c;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->j0(F)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->V(Landroid/graphics/Matrix;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private V(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/photoview/PhotoViewAttachment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/photoview/PhotoViewAttachment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->a:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->r:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic h(Lcom/transsion/photoview/PhotoViewAttachment;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic i(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic k(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/e;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic l(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic m(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic o(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic q(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic r(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/k;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic s(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic t(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->y:Lcom/transsion/photoview/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private u0(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    div-float v3, v0, v2

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    div-float v4, v1, p1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 40
    .line 41
    const/high16 v7, 0x40000000    # 2.0f

    .line 42
    .line 43
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 46
    .line 47
    sub-float/2addr v0, v2

    .line 48
    div-float/2addr v0, v7

    .line 49
    sub-float/2addr v1, p1

    .line 50
    div-float/2addr v1, v7

    .line 51
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 57
    .line 58
    if-ne v5, v6, :cond_2

    .line 59
    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 70
    .line 71
    mul-float/2addr v2, v3

    .line 72
    sub-float/2addr v0, v2

    .line 73
    div-float/2addr v0, v7

    .line 74
    mul-float/2addr p1, v3

    .line 75
    sub-float/2addr v1, p1

    .line 76
    div-float/2addr v1, v7

    .line 77
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 82
    .line 83
    if-ne v5, v6, :cond_3

    .line 84
    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 96
    .line 97
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 101
    .line 102
    mul-float/2addr v2, v3

    .line 103
    sub-float/2addr v0, v2

    .line 104
    div-float/2addr v0, v7

    .line 105
    mul-float/2addr p1, v3

    .line 106
    sub-float/2addr v1, p1

    .line 107
    div-float/2addr v1, v7

    .line 108
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 116
    .line 117
    .line 118
    new-instance v5, Landroid/graphics/RectF;

    .line 119
    .line 120
    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 121
    .line 122
    .line 123
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    .line 124
    .line 125
    float-to-int v0, v0

    .line 126
    rem-int/lit16 v0, v0, 0xb4

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    new-instance v3, Landroid/graphics/RectF;

    .line 131
    .line 132
    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    .line 135
    :cond_4
    sget-object p1, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    .line 136
    .line 137
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    aget p1, p1, v0

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    if-eq p1, v0, :cond_8

    .line 147
    .line 148
    const/4 v0, 0x2

    .line 149
    if-eq p1, v0, :cond_7

    .line 150
    .line 151
    const/4 v0, 0x3

    .line 152
    if-eq p1, v0, :cond_6

    .line 153
    .line 154
    const/4 v0, 0x4

    .line 155
    if-eq p1, v0, :cond_5

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 159
    .line 160
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 161
    .line 162
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 167
    .line 168
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 169
    .line 170
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_7
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 175
    .line 176
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 177
    .line 178
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_8
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    .line 183
    .line 184
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 185
    .line 186
    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 187
    .line 188
    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->S()V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method static bridge synthetic v(Lcom/transsion/photoview/PhotoViewAttachment;Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic w(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic x(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic y(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;->cancelFling()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public C(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public D()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public G()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public K()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public L()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public M()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->P(Landroid/graphics/Matrix;I)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    float-to-double v0, v0

    .line 9
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-direct {p0, v1, v4}, Lcom/transsion/photoview/PhotoViewAttachment;->P(Landroid/graphics/Matrix;I)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float v1, v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-double v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float v0, v0

    .line 36
    return v0
.end method

.method public N()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public O(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public T(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public U(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Matrix cannot be null"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public W(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/photoview/o;->a(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 9
    .line 10
    return-void
.end method

.method public X(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/transsion/photoview/o;->a(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 9
    .line 10
    return-void
.end method

.method public Y(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/transsion/photoview/o;->a(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 9
    .line 10
    return-void
.end method

.method public Z(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public a0(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b0(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->r:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public c0(Lcom/transsion/photoview/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d0(Lcom/transsion/photoview/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e0(Lcom/transsion/photoview/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f0(Lcom/transsion/photoview/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g0(Lcom/transsion/photoview/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h0(Lcom/transsion/photoview/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i0(Lcom/transsion/photoview/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/high16 v1, 0x43b40000    # 360.0f

    .line 4
    .line 5
    rem-float/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public k0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/high16 v1, 0x43b40000    # 360.0f

    .line 4
    .line 5
    rem-float/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l0(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n0(FZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m0(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    iget-object p4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 16
    .line 17
    new-instance v6, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    move-object v0, v6

    .line 24
    move-object v1, p0

    .line 25
    move v3, p1

    .line 26
    move v4, p2

    .line 27
    move v5, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    .line 36
    .line 37
    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p2, "Scale must be within the range of minScale and maxScale"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public n0(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    div-float/2addr v2, v1

    .line 19
    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public o0(FFF)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/transsion/photoview/o;->a(FFF)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 9
    .line 10
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-ne p3, p7, :cond_0

    .line 4
    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-eq p5, p9, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->u0(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/transsion/photoview/o;->d(Landroid/widget/ImageView;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-eq v0, v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 34
    .line 35
    cmpg-float v0, v0, v3

    .line 36
    .line 37
    if-gez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    new-instance v9, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    move-object v3, v9

    .line 62
    move-object v4, p0

    .line 63
    invoke-direct/range {v3 .. v8}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 75
    .line 76
    cmpl-float v0, v0, v3

    .line 77
    .line 78
    if-lez v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    new-instance v9, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    iget v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    move-object v3, v9

    .line 103
    move-object v4, p0

    .line 104
    invoke-direct/range {v3 .. v8}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    :goto_0
    move p1, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    move p1, v1

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/transsion/photoview/n;->d()V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->z()V

    .line 129
    .line 130
    .line 131
    :goto_2
    move p1, v1

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/transsion/photoview/b;->g()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/transsion/photoview/b;->f()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 147
    .line 148
    invoke-virtual {v3, p2}, Lcom/transsion/photoview/b;->h(Landroid/view/MotionEvent;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez p1, :cond_5

    .line 153
    .line 154
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/transsion/photoview/b;->g()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_5

    .line 161
    .line 162
    move p1, v2

    .line 163
    goto :goto_4

    .line 164
    :cond_5
    move p1, v1

    .line 165
    :goto_4
    if-nez v0, :cond_6

    .line 166
    .line 167
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/transsion/photoview/b;->f()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    move v0, v2

    .line 176
    goto :goto_5

    .line 177
    :cond_6
    move v0, v1

    .line 178
    :goto_5
    if-eqz p1, :cond_7

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    move v1, v2

    .line 183
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    .line 184
    .line 185
    move v1, v3

    .line 186
    goto :goto_6

    .line 187
    :cond_8
    move v1, p1

    .line 188
    :goto_6
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    .line 189
    .line 190
    if-eqz p1, :cond_9

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    move v1, v2

    .line 199
    :cond_9
    return v1
.end method

.method public p0(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/photoview/o;->e(Landroid/widget/ImageView$ScaleType;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public q0(Lcom/transsion/photoview/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/n;->k(Lcom/transsion/photoview/i;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public s0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->u0(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->S()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
