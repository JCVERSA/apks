.class public Lcom/transsion/ninegridview/preview/q;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "source.java"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/content/Context;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/transsion/ninegridview/preview/q;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ninegridview/preview/q;->i(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/ninegridview/preview/q;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ninegridview/preview/q;->h(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ninegridview/preview/q;->j(Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/transsion/ninegridview/preview/q;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic j(Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lni/f$b;->j(I)Lni/f$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Lni/f$b;->f(Z)Lni/f$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v2}, Lni/f$b;->e(Z)Lni/f$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lni/f$b;->k(Z)Lni/f$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Lni/f$b;->h(Z)Lni/f$b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Lni/f$b;->d(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()Lcom/transsion/photoview/PhotoView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lcom/transsion/ninegridview/R$id;->pv:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/photoview/PhotoView;

    .line 10
    .line 11
    return-object v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lcom/transsion/ninegridview/R$id;->thumb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsion/ninegridview/R$layout;->item_photoview:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/transsion/ninegridview/R$id;->root:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/transsion/ninegridview/preview/n;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/n;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/transsion/ninegridview/ImageInfo;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_0
    :try_start_0
    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 40
    .line 41
    sget-object v2, Lzg/h;->a:Lzg/h;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lzg/h;->e(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    cmpl-float v1, v1, v3

    .line 51
    .line 52
    if-gtz v1, :cond_1

    .line 53
    .line 54
    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 55
    .line 56
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lzg/h;->c(Landroid/content/Context;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    cmpl-float v1, v1, v3

    .line 64
    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    :cond_1
    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 68
    .line 69
    iget v3, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 70
    .line 71
    div-float/2addr v1, v3

    .line 72
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lzg/h;->e(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    int-to-float v3, v3

    .line 79
    iput v3, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 80
    .line 81
    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lzg/h;->e(Landroid/content/Context;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v2, v2

    .line 88
    div-float/2addr v2, v1

    .line 89
    iput v2, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    :catch_0
    :cond_2
    sget v1, Lcom/transsion/ninegridview/R$id;->pv:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/transsion/photoview/PhotoView;

    .line 98
    .line 99
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/transsion/ninegridview/preview/o;

    .line 105
    .line 106
    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/o;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lcom/transsion/ninegridview/preview/q$a;

    .line 113
    .line 114
    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/q$a;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setSlideUpAndDownListener(Lcom/transsion/photoview/i;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/transsion/ninegridview/preview/p;

    .line 121
    .line 122
    invoke-direct {v2, p0, p2, v1}, Lcom/transsion/ninegridview/preview/p;-><init>(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    check-cast p3, Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method
