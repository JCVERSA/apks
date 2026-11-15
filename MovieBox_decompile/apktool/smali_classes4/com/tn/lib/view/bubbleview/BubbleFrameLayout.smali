.class public Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# instance fields
.field private a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private b:F

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/tn/lib/widget/R$styleable;->BubbleView:[I

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowRadius:I

    .line 19
    .line 20
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A:F

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 27
    .line 28
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowColor:I

    .line 29
    .line 30
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c:I

    .line 37
    .line 38
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetX:I

    .line 39
    .line 40
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    .line 47
    .line 48
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetY:I

    .line 49
    .line 50
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    .line 57
    .line 58
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowWidth:I

    .line 59
    .line 60
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->f:F

    .line 67
    .line 68
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowHeight:I

    .line 69
    .line 70
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->h:F

    .line 77
    .line 78
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_angle:I

    .line 79
    .line 80
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->g:F

    .line 87
    .line 88
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowPosition:I

    .line 89
    .line 90
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->i:F

    .line 97
    .line 98
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_bubbleColor:I

    .line 99
    .line 100
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->k:I

    .line 107
    .line 108
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 120
    .line 121
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->l:Z

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    .line 131
    .line 132
    :cond_0
    return-void
.end method

.method private c(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    float-to-int v0, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr p1, v1

    .line 18
    int-to-float p1, p1

    .line 19
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 20
    .line 21
    sub-float/2addr p1, v1

    .line 22
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    .line 23
    .line 24
    sub-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 32
    .line 33
    add-float/2addr v1, v2

    .line 34
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    .line 35
    .line 36
    sub-float/2addr v1, v2

    .line 37
    float-to-int v1, v1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr p2, v2

    .line 43
    int-to-float p2, p2

    .line 44
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 45
    .line 46
    sub-float/2addr p2, v2

    .line 47
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    .line 48
    .line 49
    sub-float/2addr p2, v2

    .line 50
    float-to-int p2, p2

    .line 51
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d(IIII)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private d(IIII)V
    .locals 1

    .line 1
    if-lt p2, p1, :cond_1

    .line 2
    .line 3
    if-ge p4, p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    int-to-float p3, p3

    .line 10
    int-to-float p2, p2

    .line 11
    int-to-float p4, p4

    .line 12
    invoke-direct {v0, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->g:F

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->h:F

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->f:F

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->i:F

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->k:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->l:Z

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c:I

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setUpBubbleDrawable()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;-><init>(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
