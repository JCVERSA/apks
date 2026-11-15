.class public Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/BitmapShader;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:Landroid/graphics/Bitmap;

.field private q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field private s:Z

.field private t:I

.field u:F

.field v:F

.field w:F

.field x:F

.field y:[I


# direct methods
.method private constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->c:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    .line 8
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    .line 9
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h:I

    .line 10
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->i:F

    .line 11
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->j:F

    .line 12
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 13
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 14
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    .line 15
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 16
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 17
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->o:I

    .line 19
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    .line 20
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 21
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 22
    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 23
    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->p:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->u:F

    .line 24
    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->v:F

    .line 25
    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->w:F

    .line 26
    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->x:F

    .line 27
    iget-object p1, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t:[I

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->y:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;Lcom/tn/lib/view/bubbleview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;-><init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$a;->b:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 35
    .line 36
    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->o:I

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 61
    .line 62
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->u:F

    .line 63
    .line 64
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->v:F

    .line 65
    .line 66
    iget v6, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->w:F

    .line 67
    .line 68
    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->x:F

    .line 69
    .line 70
    iget-object v8, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->y:[I

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 74
    .line 75
    move-object v3, v0

    .line 76
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    .line 87
    .line 88
    invoke-direct {p0, v0, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;Landroid/graphics/Path;)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    cmpl-float v0, v0, v2

    .line 95
    .line 96
    if-lez v0, :cond_5

    .line 97
    .line 98
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 121
    .line 122
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    .line 123
    .line 124
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->i:F

    .line 125
    .line 126
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->j:F

    .line 127
    .line 128
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h:I

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 134
    .line 135
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 136
    .line 137
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 138
    .line 139
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    sub-float/2addr v0, v2

    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 14
    .line 15
    div-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    .line 19
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 22
    .line 23
    add-float/2addr v0, v2

    .line 24
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 34
    .line 35
    sub-float/2addr v0, v2

    .line 36
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 46
    .line 47
    sub-float v4, v2, v3

    .line 48
    .line 49
    iget v5, p1, Landroid/graphics/RectF;->top:F

    .line 50
    .line 51
    add-float/2addr v3, v5

    .line 52
    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .line 54
    .line 55
    const/high16 v2, 0x43870000    # 270.0f

    .line 56
    .line 57
    const/high16 v3, 0x42b40000    # 90.0f

    .line 58
    .line 59
    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 60
    .line 61
    .line 62
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 63
    .line 64
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 65
    .line 66
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 67
    .line 68
    sub-float/2addr v2, v4

    .line 69
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 70
    .line 71
    sub-float/2addr v2, v4

    .line 72
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/graphics/RectF;

    .line 76
    .line 77
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 78
    .line 79
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 80
    .line 81
    sub-float v5, v2, v4

    .line 82
    .line 83
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 84
    .line 85
    sub-float v4, v6, v4

    .line 86
    .line 87
    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 88
    .line 89
    sub-float/2addr v4, v7

    .line 90
    sub-float/2addr v6, v7

    .line 91
    invoke-direct {v0, v5, v4, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 96
    .line 97
    .line 98
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 99
    .line 100
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 101
    .line 102
    add-float/2addr v0, v2

    .line 103
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 104
    .line 105
    add-float/2addr v0, v2

    .line 106
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 107
    .line 108
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 109
    .line 110
    sub-float/2addr v2, v4

    .line 111
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    .line 113
    .line 114
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 115
    .line 116
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 117
    .line 118
    add-float/2addr v0, v2

    .line 119
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 120
    .line 121
    div-float/2addr v2, v1

    .line 122
    add-float/2addr v0, v2

    .line 123
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 124
    .line 125
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    .line 127
    .line 128
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 129
    .line 130
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 131
    .line 132
    add-float/2addr v0, v1

    .line 133
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 134
    .line 135
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 136
    .line 137
    sub-float/2addr v1, v2

    .line 138
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    .line 140
    .line 141
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 142
    .line 143
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 144
    .line 145
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 146
    .line 147
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    add-float/2addr v0, v1

    .line 152
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 153
    .line 154
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 155
    .line 156
    sub-float/2addr v1, v2

    .line 157
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Landroid/graphics/RectF;

    .line 161
    .line 162
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 163
    .line 164
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 165
    .line 166
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 167
    .line 168
    sub-float v5, v2, v4

    .line 169
    .line 170
    iget v6, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 171
    .line 172
    sub-float/2addr v5, v6

    .line 173
    add-float/2addr v4, v1

    .line 174
    sub-float/2addr v2, v6

    .line 175
    invoke-direct {v0, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 179
    .line 180
    .line 181
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 182
    .line 183
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 184
    .line 185
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 186
    .line 187
    add-float/2addr v1, v2

    .line 188
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Landroid/graphics/RectF;

    .line 192
    .line 193
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 194
    .line 195
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 196
    .line 197
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 198
    .line 199
    add-float v4, v2, v1

    .line 200
    .line 201
    add-float/2addr v2, p1

    .line 202
    invoke-direct {v0, v1, p1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    .line 204
    .line 205
    const/high16 p1, 0x43340000    # 180.0f

    .line 206
    .line 207
    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    sub-float/2addr v0, v2

    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 14
    .line 15
    div-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 20
    .line 21
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 22
    .line 23
    add-float/2addr v0, v2

    .line 24
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 25
    .line 26
    add-float/2addr v0, v2

    .line 27
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 28
    .line 29
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 37
    .line 38
    sub-float/2addr v0, v2

    .line 39
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/graphics/RectF;

    .line 45
    .line 46
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 47
    .line 48
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 49
    .line 50
    sub-float v4, v2, v3

    .line 51
    .line 52
    iget v5, p1, Landroid/graphics/RectF;->top:F

    .line 53
    .line 54
    add-float/2addr v3, v5

    .line 55
    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    .line 57
    .line 58
    const/high16 v2, 0x43870000    # 270.0f

    .line 59
    .line 60
    const/high16 v3, 0x42b40000    # 90.0f

    .line 61
    .line 62
    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 63
    .line 64
    .line 65
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 66
    .line 67
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 68
    .line 69
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 70
    .line 71
    sub-float/2addr v2, v4

    .line 72
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/graphics/RectF;

    .line 76
    .line 77
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 78
    .line 79
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 80
    .line 81
    sub-float v5, v2, v4

    .line 82
    .line 83
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 84
    .line 85
    sub-float v4, v6, v4

    .line 86
    .line 87
    invoke-direct {v0, v5, v4, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 92
    .line 93
    .line 94
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 95
    .line 96
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 97
    .line 98
    add-float/2addr v0, v2

    .line 99
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 100
    .line 101
    add-float/2addr v0, v2

    .line 102
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 103
    .line 104
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Landroid/graphics/RectF;

    .line 108
    .line 109
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 110
    .line 111
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 112
    .line 113
    add-float v5, v2, v4

    .line 114
    .line 115
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 116
    .line 117
    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 118
    .line 119
    sub-float v8, v6, v7

    .line 120
    .line 121
    add-float/2addr v7, v2

    .line 122
    add-float/2addr v7, v4

    .line 123
    invoke-direct {v0, v5, v8, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 127
    .line 128
    .line 129
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 130
    .line 131
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 132
    .line 133
    add-float/2addr v0, v2

    .line 134
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 135
    .line 136
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 137
    .line 138
    add-float/2addr v2, v4

    .line 139
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 143
    .line 144
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 145
    .line 146
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 147
    .line 148
    div-float/2addr v4, v1

    .line 149
    add-float/2addr v2, v4

    .line 150
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    .line 152
    .line 153
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 154
    .line 155
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 156
    .line 157
    add-float/2addr v0, v1

    .line 158
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 159
    .line 160
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    .line 162
    .line 163
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 164
    .line 165
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 166
    .line 167
    add-float/2addr v0, v1

    .line 168
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 169
    .line 170
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 171
    .line 172
    add-float/2addr v1, v2

    .line 173
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 181
    .line 182
    add-float v4, v1, v2

    .line 183
    .line 184
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 185
    .line 186
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 187
    .line 188
    add-float/2addr v1, v5

    .line 189
    add-float/2addr v1, v2

    .line 190
    add-float/2addr v5, p1

    .line 191
    invoke-direct {v0, v4, p1, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .line 193
    .line 194
    const/high16 p1, 0x43340000    # 180.0f

    .line 195
    .line 196
    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method private d(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 6
    .line 7
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    sub-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 14
    .line 15
    div-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    .line 19
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 22
    .line 23
    add-float/2addr v0, v1

    .line 24
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 34
    .line 35
    sub-float/2addr v0, v1

    .line 36
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 46
    .line 47
    sub-float v3, v1, v2

    .line 48
    .line 49
    iget v4, p1, Landroid/graphics/RectF;->top:F

    .line 50
    .line 51
    add-float/2addr v2, v4

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .line 54
    .line 55
    const/high16 v1, 0x43870000    # 270.0f

    .line 56
    .line 57
    const/high16 v2, 0x42b40000    # 90.0f

    .line 58
    .line 59
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 60
    .line 61
    .line 62
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 63
    .line 64
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 65
    .line 66
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 67
    .line 68
    sub-float/2addr v1, v3

    .line 69
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroid/graphics/RectF;

    .line 73
    .line 74
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 77
    .line 78
    sub-float v4, v1, v3

    .line 79
    .line 80
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 81
    .line 82
    sub-float v3, v5, v3

    .line 83
    .line 84
    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 89
    .line 90
    .line 91
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 92
    .line 93
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 94
    .line 95
    add-float/2addr v0, v1

    .line 96
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 97
    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 104
    .line 105
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 106
    .line 107
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 108
    .line 109
    sub-float v5, v3, v4

    .line 110
    .line 111
    add-float/2addr v4, v1

    .line 112
    invoke-direct {v0, v1, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 116
    .line 117
    .line 118
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 119
    .line 120
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 121
    .line 122
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 123
    .line 124
    add-float/2addr v1, v3

    .line 125
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Landroid/graphics/RectF;

    .line 129
    .line 130
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 131
    .line 132
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 133
    .line 134
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 135
    .line 136
    add-float v4, v3, v1

    .line 137
    .line 138
    add-float/2addr v3, p1

    .line 139
    invoke-direct {v0, v1, p1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x43340000    # 180.0f

    .line 143
    .line 144
    invoke-virtual {p2, v0, p1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;Landroid/graphics/Path;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private f(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    sub-float/2addr v0, v2

    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 14
    .line 15
    div-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    .line 19
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 22
    .line 23
    add-float/2addr v0, v2

    .line 24
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 34
    .line 35
    sub-float/2addr v0, v2

    .line 36
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 37
    .line 38
    sub-float/2addr v0, v2

    .line 39
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/graphics/RectF;

    .line 45
    .line 46
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 47
    .line 48
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 49
    .line 50
    sub-float v4, v2, v3

    .line 51
    .line 52
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 53
    .line 54
    sub-float/2addr v4, v5

    .line 55
    iget v6, p1, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    sub-float/2addr v2, v5

    .line 58
    add-float/2addr v3, v6

    .line 59
    invoke-direct {v0, v4, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    .line 61
    .line 62
    const/high16 v2, 0x43870000    # 270.0f

    .line 63
    .line 64
    const/high16 v3, 0x42b40000    # 90.0f

    .line 65
    .line 66
    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 67
    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 70
    .line 71
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 72
    .line 73
    sub-float/2addr v0, v2

    .line 74
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 75
    .line 76
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    .line 78
    .line 79
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 80
    .line 81
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 82
    .line 83
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 84
    .line 85
    div-float/2addr v4, v1

    .line 86
    add-float/2addr v2, v4

    .line 87
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    .line 89
    .line 90
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 91
    .line 92
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 93
    .line 94
    sub-float/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 96
    .line 97
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 98
    .line 99
    add-float/2addr v1, v2

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    .line 102
    .line 103
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 104
    .line 105
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 106
    .line 107
    sub-float/2addr v0, v1

    .line 108
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 109
    .line 110
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 111
    .line 112
    sub-float/2addr v1, v2

    .line 113
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Landroid/graphics/RectF;

    .line 117
    .line 118
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 119
    .line 120
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 121
    .line 122
    sub-float v4, v1, v2

    .line 123
    .line 124
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 125
    .line 126
    sub-float/2addr v4, v5

    .line 127
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 128
    .line 129
    sub-float v2, v6, v2

    .line 130
    .line 131
    sub-float/2addr v1, v5

    .line 132
    invoke-direct {v0, v4, v2, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p2, v0, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 137
    .line 138
    .line 139
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 140
    .line 141
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 142
    .line 143
    add-float/2addr v0, v1

    .line 144
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 145
    .line 146
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Landroid/graphics/RectF;

    .line 150
    .line 151
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 152
    .line 153
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 154
    .line 155
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 156
    .line 157
    sub-float v5, v2, v4

    .line 158
    .line 159
    add-float/2addr v4, v1

    .line 160
    invoke-direct {v0, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Landroid/graphics/RectF;

    .line 167
    .line 168
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 169
    .line 170
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 171
    .line 172
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 173
    .line 174
    add-float v4, v2, v1

    .line 175
    .line 176
    add-float/2addr v2, p1

    .line 177
    invoke-direct {v0, v1, p1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    .line 179
    .line 180
    const/high16 p1, 0x43340000    # 180.0f

    .line 181
    .line 182
    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->getIntrinsicWidth()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v3, v1

    .line 29
    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->getIntrinsicHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    int-to-float v2, v2

    .line 35
    div-float/2addr v1, v2

    .line 36
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private h(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    sub-float/2addr v0, v2

    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 14
    .line 15
    div-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 18
    .line 19
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 22
    .line 23
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-float/2addr v0, v2

    .line 30
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 33
    .line 34
    add-float/2addr v2, v3

    .line 35
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 36
    .line 37
    .line 38
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 39
    .line 40
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 41
    .line 42
    add-float/2addr v0, v2

    .line 43
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 44
    .line 45
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 46
    .line 47
    add-float/2addr v2, v3

    .line 48
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 54
    .line 55
    div-float/2addr v2, v1

    .line 56
    add-float/2addr v0, v2

    .line 57
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 58
    .line 59
    add-float/2addr v0, v1

    .line 60
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 61
    .line 62
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    .line 64
    .line 65
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 66
    .line 67
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    .line 68
    .line 69
    add-float/2addr v0, v1

    .line 70
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    .line 71
    .line 72
    add-float/2addr v0, v1

    .line 73
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 74
    .line 75
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 76
    .line 77
    add-float/2addr v1, v2

    .line 78
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    .line 80
    .line 81
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 82
    .line 83
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 84
    .line 85
    sub-float/2addr v0, v1

    .line 86
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 87
    .line 88
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 89
    .line 90
    add-float/2addr v1, v2

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/graphics/RectF;

    .line 95
    .line 96
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 97
    .line 98
    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 99
    .line 100
    sub-float v3, v1, v2

    .line 101
    .line 102
    iget v4, p1, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 105
    .line 106
    add-float v6, v4, v5

    .line 107
    .line 108
    add-float/2addr v2, v4

    .line 109
    add-float/2addr v2, v5

    .line 110
    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    const/high16 v1, 0x43870000    # 270.0f

    .line 114
    .line 115
    const/high16 v2, 0x42b40000    # 90.0f

    .line 116
    .line 117
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 118
    .line 119
    .line 120
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 121
    .line 122
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 123
    .line 124
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 125
    .line 126
    sub-float/2addr v1, v3

    .line 127
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Landroid/graphics/RectF;

    .line 131
    .line 132
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 133
    .line 134
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 135
    .line 136
    sub-float v4, v1, v3

    .line 137
    .line 138
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 139
    .line 140
    sub-float v3, v5, v3

    .line 141
    .line 142
    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 147
    .line 148
    .line 149
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 150
    .line 151
    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 152
    .line 153
    add-float/2addr v0, v1

    .line 154
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Landroid/graphics/RectF;

    .line 160
    .line 161
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 162
    .line 163
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 164
    .line 165
    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 166
    .line 167
    sub-float v5, v3, v4

    .line 168
    .line 169
    add-float/2addr v4, v1

    .line 170
    invoke-direct {v0, v1, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 174
    .line 175
    .line 176
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 177
    .line 178
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 179
    .line 180
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 181
    .line 182
    add-float/2addr v1, v3

    .line 183
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 184
    .line 185
    add-float/2addr v1, v3

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Landroid/graphics/RectF;

    .line 190
    .line 191
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 192
    .line 193
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 194
    .line 195
    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    .line 196
    .line 197
    add-float v4, p1, v3

    .line 198
    .line 199
    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    .line 200
    .line 201
    add-float v6, v5, v1

    .line 202
    .line 203
    add-float/2addr v5, p1

    .line 204
    add-float/2addr v5, v3

    .line 205
    invoke-direct {v0, v1, v4, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    .line 207
    .line 208
    const/high16 p1, 0x43340000    # 180.0f

    .line 209
    .line 210
    invoke-virtual {p2, v0, p1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 214
    .line 215
    .line 216
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    .line 10
    .line 11
    return-void
.end method
