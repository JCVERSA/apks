.class public Lcom/transsion/ninegridview/NineGridView;
.super Landroid/view/ViewGroup;
.source "source.java"


# static fields
.field public static final MODE_FILL:I = 0x0

.field public static final MODE_GRID:I = 0x1

.field private static m:Lvm/b;


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Lcom/transsion/ninegridview/NineGridViewAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/ninegridview/NineGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ninegridview/NineGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa

    .line 4
    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 5
    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    const/16 p3, 0x9

    .line 6
    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    const/4 p3, 0x3

    .line 7
    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 10
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 11
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    int-to-float v0, v0

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    .line 12
    sget-object p3, Lcom/transsion/ninegridview/R$styleable;->NineGridView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_gridSpacing:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 14
    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_singleImageSize:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    .line 15
    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_singleImageRatio:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    .line 16
    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_maxSize:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 17
    sget p2, Lcom/transsion/ninegridview/R$styleable;->NineGridView_ngv_mode:I

    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(I)Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->generateImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/transsion/ninegridview/NineGridView$a;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/transsion/ninegridview/NineGridView$a;-><init>(Lcom/transsion/ninegridview/NineGridView;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->j:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    :goto_0
    return-object p1
.end method

.method public static getImageLoader()Lvm/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ninegridview/NineGridView;->m:Lvm/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setImageLoader(Lvm/b;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/ninegridview/NineGridView;->m:Lvm/b;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-ge p2, p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    move-object v2, p3

    .line 18
    check-cast v2, Landroid/widget/ImageView;

    .line 19
    .line 20
    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    .line 21
    .line 22
    div-int p4, p2, p3

    .line 23
    .line 24
    rem-int p3, p2, p3

    .line 25
    .line 26
    iget p5, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 27
    .line 28
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 29
    .line 30
    add-int/2addr p5, v0

    .line 31
    mul-int/2addr p5, p3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    add-int/2addr p5, p3

    .line 37
    iget p3, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 38
    .line 39
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 40
    .line 41
    add-int/2addr p3, v0

    .line 42
    mul-int/2addr p3, p4

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    add-int/2addr p3, p4

    .line 48
    iget p4, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 49
    .line 50
    add-int/2addr p4, p5

    .line 51
    iget v0, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 52
    .line 53
    add-int/2addr v0, p3

    .line 54
    invoke-virtual {v2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/transsion/ninegridview/NineGridView;->m:Lvm/b;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object p3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Lcom/transsion/ninegridview/ImageInfo;

    .line 72
    .line 73
    iget-object v3, p3, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    .line 74
    .line 75
    iget v4, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 76
    .line 77
    iget v5, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 78
    .line 79
    iget-object p3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Lcom/transsion/ninegridview/ImageInfo;

    .line 86
    .line 87
    iget-object v6, p3, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface/range {v0 .. v6}, Lvm/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    sub-int p2, p1, p2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr p2, v0

    .line 19
    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/transsion/ninegridview/ImageInfo;

    .line 46
    .line 47
    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    cmpl-float v3, v1, v2

    .line 51
    .line 52
    if-lez v3, :cond_1

    .line 53
    .line 54
    iget v3, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 55
    .line 56
    cmpl-float v2, v3, v2

    .line 57
    .line 58
    if-lez v2, :cond_1

    .line 59
    .line 60
    cmpl-float p2, v1, v3

    .line 61
    .line 62
    const/high16 v1, 0x43580000    # 216.0f

    .line 63
    .line 64
    if-lez p2, :cond_0

    .line 65
    .line 66
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 71
    .line 72
    float-to-int v1, v1

    .line 73
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 78
    .line 79
    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 80
    .line 81
    float-to-int v1, v1

    .line 82
    mul-int/2addr p2, v1

    .line 83
    iget p1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 84
    .line 85
    float-to-int p1, p1

    .line 86
    div-int/2addr p2, p1

    .line 87
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 95
    .line 96
    float-to-int v1, v1

    .line 97
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 102
    .line 103
    iget v1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 104
    .line 105
    float-to-int v1, v1

    .line 106
    mul-int/2addr p2, v1

    .line 107
    iget p1, p1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 108
    .line 109
    float-to-int p1, p1

    .line 110
    div-int/2addr p2, p1

    .line 111
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    .line 115
    .line 116
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 121
    .line 122
    int-to-float p2, p1

    .line 123
    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    .line 124
    .line 125
    div-float/2addr p2, v1

    .line 126
    float-to-int p2, p2

    .line 127
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 128
    .line 129
    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    .line 130
    .line 131
    if-le p2, v1, :cond_3

    .line 132
    .line 133
    int-to-float v2, v1

    .line 134
    const/high16 v3, 0x3f800000    # 1.0f

    .line 135
    .line 136
    mul-float/2addr v2, v3

    .line 137
    int-to-float p2, p2

    .line 138
    div-float/2addr v2, p2

    .line 139
    int-to-float p1, p1

    .line 140
    mul-float/2addr p1, v2

    .line 141
    float-to-int p1, p1

    .line 142
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 143
    .line 144
    iput v1, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 148
    .line 149
    mul-int/lit8 p1, p1, 0x2

    .line 150
    .line 151
    sub-int/2addr p2, p1

    .line 152
    div-int/lit8 p2, p2, 0x3

    .line 153
    .line 154
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 155
    .line 156
    iput p2, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 157
    .line 158
    :cond_3
    :goto_0
    iget p1, p0, Lcom/transsion/ninegridview/NineGridView;->h:I

    .line 159
    .line 160
    iget p2, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    .line 161
    .line 162
    mul-int/2addr p1, p2

    .line 163
    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 164
    .line 165
    sub-int/2addr p2, v0

    .line 166
    mul-int/2addr v1, p2

    .line 167
    add-int/2addr p1, v1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    add-int/2addr p1, p2

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    add-int/2addr p1, p2

    .line 178
    iget p2, p0, Lcom/transsion/ninegridview/NineGridView;->i:I

    .line 179
    .line 180
    iget v1, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    .line 181
    .line 182
    mul-int/2addr p2, v1

    .line 183
    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 184
    .line 185
    sub-int/2addr v1, v0

    .line 186
    mul-int/2addr v2, v1

    .line 187
    add-int/2addr p2, v2

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    add-int/2addr p2, v0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    add-int v1, p2, v0

    .line 198
    .line 199
    :cond_4
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public setAdapter(Lcom/transsion/ninegridview/NineGridViewAdapter;)V
    .locals 6
    .param p1    # Lcom/transsion/ninegridview/NineGridViewAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView;->l:Lcom/transsion/ninegridview/NineGridViewAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    if-le v2, v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :cond_1
    div-int/lit8 v3, v2, 0x3

    .line 40
    .line 41
    rem-int/lit8 v4, v2, 0x3

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    move v4, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v4, v5

    .line 49
    :goto_0
    add-int/2addr v3, v4

    .line 50
    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    .line 54
    .line 55
    iget v3, p0, Lcom/transsion/ninegridview/NineGridView;->e:I

    .line 56
    .line 57
    if-ne v3, v5, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x2

    .line 63
    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->g:I

    .line 64
    .line 65
    iput v3, p0, Lcom/transsion/ninegridview/NineGridView;->f:I

    .line 66
    .line 67
    :cond_3
    iget-object v3, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 68
    .line 69
    if-nez v3, :cond_5

    .line 70
    .line 71
    :goto_1
    if-ge v1, v2, :cond_8

    .line 72
    .line 73
    invoke-direct {p0, v1}, Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-le v1, v2, :cond_6

    .line 95
    .line 96
    sub-int/2addr v1, v2

    .line 97
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    if-ge v1, v2, :cond_8

    .line 102
    .line 103
    :goto_2
    if-ge v1, v2, :cond_8

    .line 104
    .line 105
    invoke-direct {p0, v1}, Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-nez v3, :cond_7

    .line 110
    .line 111
    return-void

    .line 112
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 131
    .line 132
    if-le v1, v2, :cond_9

    .line 133
    .line 134
    sub-int/2addr v2, v5

    .line 135
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    instance-of v2, v1, Lcom/transsion/ninegridview/NineGridViewWrapper;

    .line 140
    .line 141
    if-eqz v2, :cond_9

    .line 142
    .line 143
    check-cast v1, Lcom/transsion/ninegridview/NineGridViewWrapper;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iget v2, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 154
    .line 155
    sub-int/2addr p1, v2

    .line 156
    invoke-virtual {v1, p1}, Lcom/transsion/ninegridview/NineGridViewWrapper;->setMoreNum(I)V

    .line 157
    .line 158
    .line 159
    :cond_9
    iput-object v0, p0, Lcom/transsion/ninegridview/NineGridView;->k:Ljava/util/List;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_a
    :goto_4
    const/16 p1, 0x8

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public setGridSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingleImageRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->b:F

    .line 2
    .line 3
    return-void
.end method

.method public setSingleImageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ninegridview/NineGridView;->a:I

    .line 2
    .line 3
    return-void
.end method
