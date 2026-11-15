.class public Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;
.super Landroid/widget/LinearLayout;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private c:F

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field private m:I

.field private n:Z

.field private o:[I

.field private p:[F

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Landroid/animation/ObjectAnimator;

.field private v:Landroid/animation/AnimatorSet;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "BubbleGradientLinearLayout"

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    const-string p1, "BubbleGradientLinearLayout"

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->a:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p1, p0

    .line 12
    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, p0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method

.method private d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;)[F
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    sget-object v5, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$b;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v5, p1

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eq p1, v4, :cond_4

    .line 16
    .line 17
    if-eq p1, v3, :cond_3

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const/4 v6, 0x5

    .line 24
    if-eq p1, v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    new-array v1, v1, [F

    .line 32
    .line 33
    aput v5, v1, v0

    .line 34
    .line 35
    aput v5, v1, v4

    .line 36
    .line 37
    aput v5, v1, v3

    .line 38
    .line 39
    aput p1, v1, v2

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-float p1, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    int-to-float v6, v6

    .line 52
    new-array v1, v1, [F

    .line 53
    .line 54
    aput p1, v1, v0

    .line 55
    .line 56
    aput v6, v1, v4

    .line 57
    .line 58
    aput v5, v1, v3

    .line 59
    .line 60
    aput v5, v1, v2

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    int-to-float v6, v6

    .line 73
    new-array v1, v1, [F

    .line 74
    .line 75
    aput v5, v1, v0

    .line 76
    .line 77
    aput p1, v1, v4

    .line 78
    .line 79
    aput v6, v1, v3

    .line 80
    .line 81
    aput v5, v1, v2

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    int-to-float p1, p1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    int-to-float v6, v6

    .line 94
    new-array v1, v1, [F

    .line 95
    .line 96
    aput p1, v1, v0

    .line 97
    .line 98
    aput v5, v1, v4

    .line 99
    .line 100
    aput v5, v1, v3

    .line 101
    .line 102
    aput v6, v1, v2

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    int-to-float p1, p1

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    int-to-float v6, v6

    .line 115
    new-array v1, v1, [F

    .line 116
    .line 117
    aput v5, v1, v0

    .line 118
    .line 119
    aput v5, v1, v4

    .line 120
    .line 121
    aput p1, v1, v3

    .line 122
    .line 123
    aput v6, v1, v2

    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    int-to-float p1, p1

    .line 131
    new-array v1, v1, [F

    .line 132
    .line 133
    aput v5, v1, v0

    .line 134
    .line 135
    aput v5, v1, v4

    .line 136
    .line 137
    aput p1, v1, v3

    .line 138
    .line 139
    aput v5, v1, v2

    .line 140
    .line 141
    return-object v1
.end method

.method private e(Landroid/util/AttributeSet;)V
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
    if-eqz p1, :cond_1

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->d:I

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->i:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->h:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->j:F

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
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->m:I

    .line 107
    .line 108
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientStartColor:I

    .line 109
    .line 110
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->q:I

    .line 117
    .line 118
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientEndColor:I

    .line 119
    .line 120
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->r:I

    .line 127
    .line 128
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientCenterColor:I

    .line 129
    .line 130
    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 131
    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->s:I

    .line 137
    .line 138
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_isOpenAnimator:I

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->w:Z

    .line 146
    .line 147
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 158
    .line 159
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradient_orientation:I

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    .line 170
    .line 171
    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->n:Z

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .line 181
    .line 182
    iget p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->s:I

    .line 183
    .line 184
    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    .line 185
    .line 186
    if-eq p1, v0, :cond_0

    .line 187
    .line 188
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->q:I

    .line 189
    .line 190
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->r:I

    .line 191
    .line 192
    filled-new-array {v0, p1, v1}, [I

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->o:[I

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_0
    iget p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->q:I

    .line 200
    .line 201
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->r:I

    .line 202
    .line 203
    filled-new-array {p1, v0}, [I

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->o:[I

    .line 208
    .line 209
    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private g(II)V
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
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e:F

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
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

    .line 20
    .line 21
    sub-float/2addr p1, v1

    .line 22
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e:F

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
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

    .line 32
    .line 33
    add-float/2addr v1, v2

    .line 34
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f:F

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
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

    .line 45
    .line 46
    sub-float/2addr p2, v2

    .line 47
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f:F

    .line 48
    .line 49
    sub-float/2addr p2, v2

    .line 50
    float-to-int p2, p2

    .line 51
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->h(IIII)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private h(IIII)V
    .locals 6

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
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;)[F

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->p:[F

    .line 22
    .line 23
    new-instance p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->h:F

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->i:F

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g:F

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->j:F

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->p:[F

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    aget v1, p1, p2

    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    aget v2, p1, p2

    .line 75
    .line 76
    const/4 p2, 0x2

    .line 77
    aget v3, p1, p2

    .line 78
    .line 79
    const/4 p2, 0x3

    .line 80
    aget v4, p1, p2

    .line 81
    .line 82
    iget-object v5, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->o:[I

    .line 83
    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y(FFFF[I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->n:Z

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c:F

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->d:I

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->e:F

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f:F

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    .line 123
    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->startTransAnim()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setGradientColors(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->r:I

    .line 4
    .line 5
    iput p3, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->s:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLocation(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->g(II)V

    .line 12
    .line 13
    .line 14
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
    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$1;-><init>(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setmArrowPosition(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->j:F

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startShowRemindAnim()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->v:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->v:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->v:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    .line 31
    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/high16 v6, 0x40800000    # 4.0f

    .line 44
    .line 45
    invoke-static {v5, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c(Landroid/content/Context;F)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    add-int/2addr v4, v5

    .line 50
    int-to-float v4, v4

    .line 51
    sub-float v4, v2, v4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    add-float/2addr v5, v2

    .line 63
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 64
    .line 65
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-static {v8, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    add-int/2addr v7, v6

    .line 78
    int-to-float v6, v7

    .line 79
    sub-float v6, v2, v6

    .line 80
    .line 81
    const/4 v7, 0x3

    .line 82
    new-array v7, v7, [F

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    aput v4, v7, v8

    .line 86
    .line 87
    aput v5, v7, v0

    .line 88
    .line 89
    const/4 v4, 0x2

    .line 90
    aput v6, v7, v4

    .line 91
    .line 92
    const-string v4, "translationX"

    .line 93
    .line 94
    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iput-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 99
    .line 100
    const-wide/16 v5, 0x64

    .line 101
    .line 102
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 108
    .line 109
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    new-instance v4, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;

    .line 123
    .line 124
    invoke-direct {v4, p0, v2, v1, v3}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout$a;-><init>(Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;FLandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->v:Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->u:Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->v:Landroid/animation/AnimatorSet;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public startTransAnim()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/high16 v3, 0x40c00000    # 6.0f

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->c(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    int-to-float v2, v2

    .line 29
    sub-float/2addr v1, v2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [F

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput v0, v3, v4

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput v1, v3, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput v2, v3, v0

    .line 45
    .line 46
    const-string v0, "translationY"

    .line 47
    .line 48
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    const-wide/16 v1, 0x7d0

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientLinearLayout;->t:Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method
