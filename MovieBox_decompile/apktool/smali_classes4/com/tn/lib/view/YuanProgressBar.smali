.class public Lcom/tn/lib/view/YuanProgressBar;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "source.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    .line 4
    const-string v1, "#99ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 5
    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 6
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 7
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 10
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    .line 12
    const-string v1, "#99ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 13
    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 14
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 15
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x64

    .line 18
    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    .line 20
    const-string v0, "#99ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 21
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 22
    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 23
    iput p3, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/YuanProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    const/high16 v1, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    div-float/2addr v2, v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    div-float/2addr v3, v1

    .line 53
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    sub-float/2addr v3, v1

    .line 57
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 63
    .line 64
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 70
    .line 71
    if-gtz v0, :cond_2

    .line 72
    .line 73
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    .line 74
    .line 75
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 78
    .line 79
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 80
    .line 81
    int-to-float v1, v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    iget-object v7, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 89
    .line 90
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 91
    .line 92
    const/high16 v5, 0x43b40000    # 360.0f

    .line 93
    .line 94
    move-object v2, p1

    .line 95
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 99
    .line 100
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 106
    .line 107
    if-gtz v0, :cond_3

    .line 108
    .line 109
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->h:I

    .line 110
    .line 111
    mul-int/lit8 v0, v0, 0x3

    .line 112
    .line 113
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 114
    .line 115
    :cond_3
    iget-object v0, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 116
    .line 117
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 118
    .line 119
    int-to-float v1, v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 124
    .line 125
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->b:F

    .line 126
    .line 127
    const/high16 v1, 0x43b40000    # 360.0f

    .line 128
    .line 129
    mul-float/2addr v0, v1

    .line 130
    iget v1, p0, Lcom/tn/lib/view/YuanProgressBar;->e:I

    .line 131
    .line 132
    int-to-float v1, v1

    .line 133
    div-float v5, v0, v1

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    iget-object v7, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 137
    .line 138
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 139
    .line 140
    move-object v2, p1

    .line 141
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 17
    .line 18
    const-string v3, "#2f9ceb"

    .line 19
    .line 20
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 33
    .line 34
    new-instance v1, Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 42
    .line 43
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v3, Lzg/h;->a:Lzg/h;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/high16 v5, 0x40000000    # 2.0f

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/tn/lib/view/YuanProgressBar;->a:Landroid/graphics/Paint;

    .line 67
    .line 68
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    sget-object v1, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar:[I

    .line 80
    .line 81
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_insideColor:I

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->f:I

    .line 92
    .line 93
    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_circleColor:I

    .line 94
    .line 95
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 96
    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 102
    .line 103
    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuan_progressColor:I

    .line 104
    .line 105
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 106
    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 112
    .line 113
    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuanCircleStrokeWidth:I

    .line 114
    .line 115
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 116
    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->k:I

    .line 122
    .line 123
    sget p2, Lcom/tn/lib/widget/R$styleable;->Base_YuanProgressBar_base_yuanProgressStrokeWidth:I

    .line 124
    .line 125
    iget v0, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 126
    .line 127
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    iput p2, p0, Lcom/tn/lib/view/YuanProgressBar;->l:I

    .line 132
    .line 133
    new-instance p2, Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p2, p0, Lcom/tn/lib/view/YuanProgressBar;->g:Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    .line 145
    .line 146
    :cond_0
    const/4 p1, 0x2

    .line 147
    const/high16 p2, 0x41400000    # 12.0f

    .line 148
    .line 149
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    .line 150
    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/YuanProgressBar;->a(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 5
    .line 6
    sget-object p4, Lzg/h;->a:Lzg/h;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int v0, p1, v0

    .line 45
    .line 46
    int-to-float v0, v0

    .line 47
    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->c:Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sub-int v0, p2, v0

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 63
    .line 64
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/high16 v1, 0x40800000    # 4.0f

    .line 71
    .line 72
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float v0, v0

    .line 77
    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 78
    .line 79
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 91
    .line 92
    iget-object p3, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p4, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    sub-int/2addr p1, v0

    .line 103
    int-to-float p1, p1

    .line 104
    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 105
    .line 106
    iget-object p1, p0, Lcom/tn/lib/view/YuanProgressBar;->d:Landroid/graphics/RectF;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p4, p3, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    sub-int/2addr p2, p3

    .line 117
    int-to-float p2, p2

    .line 118
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 119
    .line 120
    return-void
.end method

.method public setColorNetDetect()V
    .locals 1

    .line 1
    const-string v0, "#33000000"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->i:I

    .line 8
    .line 9
    const-string v0, "#3ECAF2"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/tn/lib/view/YuanProgressBar;->j:I

    .line 16
    .line 17
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tn/lib/view/YuanProgressBar;->b:F

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
