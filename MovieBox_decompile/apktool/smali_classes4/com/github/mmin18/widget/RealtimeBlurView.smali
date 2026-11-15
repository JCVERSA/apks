.class public Lcom/github/mmin18/widget/RealtimeBlurView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/RealtimeBlurView$StopException;
    }
.end annotation


# static fields
.field private static p:I

.field private static q:I

.field private static r:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;


# instance fields
.field private a:F

.field private b:I

.field private c:F

.field private final d:Lcom/github/mmin18/widget/c;

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Canvas;

.field private i:Z

.field private j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Rect;

.field private m:Landroid/view/View;

.field private n:Z

.field private final o:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView$StopException;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/github/mmin18/widget/RealtimeBlurView;->r:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->k:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->l:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Lcom/github/mmin18/widget/RealtimeBlurView$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$a;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getBlurImpl()Lcom/github/mmin18/widget/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->d:Lcom/github/mmin18/widget/c;

    .line 30
    .line 31
    sget-object v0, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView:[I

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    sget v0, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x1

    .line 48
    const/high16 v2, 0x41200000    # 10.0f

    .line 49
    .line 50
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->c:F

    .line 59
    .line 60
    sget p1, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    .line 61
    .line 62
    const/high16 v0, 0x40800000    # 4.0f

    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->a:F

    .line 69
    .line 70
    sget p1, Lcom/github/mmin18/realtimeblurview/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    .line 71
    .line 72
    const v0, -0x55000001

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->b:I

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    .line 83
    .line 84
    new-instance p1, Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->j:Landroid/graphics/Paint;

    .line 90
    .line 91
    return-void
.end method

.method static synthetic a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->m:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/github/mmin18/widget/RealtimeBlurView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->h:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g()I
    .locals 2

    .line 1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->p:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic h()I
    .locals 2

    .line 1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->p:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic i(Lcom/github/mmin18/widget/RealtimeBlurView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->p:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    sget-object p1, Lcom/github/mmin18/widget/RealtimeBlurView;->r:Lcom/github/mmin18/widget/RealtimeBlurView$StopException;

    .line 15
    .line 16
    throw p1
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x4

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v2, v0, Landroid/app/Activity;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/content/ContextWrapper;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method protected getBlurImpl()Lcom/github/mmin18/widget/c;
    .locals 8

    .line 1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/high16 v2, 0x40800000    # 4.0f

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lcom/github/mmin18/widget/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/github/mmin18/widget/a;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    .line 16
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v0, v5, v4, v2}, Lcom/github/mmin18/widget/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/github/mmin18/widget/a;->release()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    .line 32
    .line 33
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :catchall_0
    :cond_0
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const-string v5, "androidx.renderscript.RenderScript"

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/github/mmin18/widget/b;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/github/mmin18/widget/b;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    .line 60
    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v0, v7, v6, v2}, Lcom/github/mmin18/widget/b;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/mmin18/widget/b;->release()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    .line 76
    .line 77
    sput v4, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    :catchall_1
    :cond_1
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 80
    .line 81
    const/4 v6, 0x2

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/github/mmin18/widget/e;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/github/mmin18/widget/e;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    .line 102
    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v0, v5, v3, v2}, Lcom/github/mmin18/widget/e;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/github/mmin18/widget/e;->release()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    .line 118
    .line 119
    sput v6, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 120
    .line 121
    :catchall_2
    :cond_2
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 122
    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    const/4 v0, -0x1

    .line 126
    sput v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 127
    .line 128
    :cond_3
    sget v0, Lcom/github/mmin18/widget/RealtimeBlurView;->q:I

    .line 129
    .line 130
    if-eq v0, v4, :cond_6

    .line 131
    .line 132
    if-eq v0, v6, :cond_5

    .line 133
    .line 134
    if-eq v0, v1, :cond_4

    .line 135
    .line 136
    new-instance v0, Lcom/github/mmin18/widget/d;

    .line 137
    .line 138
    invoke-direct {v0}, Lcom/github/mmin18/widget/d;-><init>()V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_4
    new-instance v0, Lcom/github/mmin18/widget/a;

    .line 143
    .line 144
    invoke-direct {v0}, Lcom/github/mmin18/widget/a;-><init>()V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_5
    new-instance v0, Lcom/github/mmin18/widget/e;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/github/mmin18/widget/e;-><init>()V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_6
    new-instance v0, Lcom/github/mmin18/widget/b;

    .line 155
    .line 156
    invoke-direct {v0}, Lcom/github/mmin18/widget/b;-><init>()V

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method protected j(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->d:Lcom/github/mmin18/widget/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/github/mmin18/widget/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected k(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->k:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->k:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->l:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->l:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->k:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->l:Landroid/graphics/Rect;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->j:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->l:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget-object p3, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->j:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method protected l()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->c:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->a:F

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    const/high16 v3, 0x41c80000    # 25.0f

    .line 17
    .line 18
    cmpl-float v4, v0, v3

    .line 19
    .line 20
    if-lez v4, :cond_1

    .line 21
    .line 22
    mul-float/2addr v1, v0

    .line 23
    div-float/2addr v1, v3

    .line 24
    move v0, v3

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-float v3, v3

    .line 34
    div-float/2addr v3, v1

    .line 35
    float-to-int v3, v3

    .line 36
    const/4 v5, 0x1

    .line 37
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    int-to-float v4, v4

    .line 42
    div-float/2addr v4, v1

    .line 43
    float-to-int v1, v4

    .line 44
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-boolean v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->e:Z

    .line 49
    .line 50
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->h:Landroid/graphics/Canvas;

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-ne v6, v3, :cond_2

    .line 63
    .line 64
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eq v6, v1, :cond_5

    .line 71
    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->n()V

    .line 73
    .line 74
    .line 75
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iput-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_3
    :try_start_1
    new-instance v6, Landroid/graphics/Canvas;

    .line 90
    .line 91
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .line 95
    .line 96
    iput-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->h:Landroid/graphics/Canvas;

    .line 97
    .line 98
    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_4
    move v4, v5

    .line 111
    :cond_5
    if-eqz v4, :cond_7

    .line 112
    .line 113
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->d:Lcom/github/mmin18/widget/c;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->f:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    invoke-interface {v1, v3, v4, v0}, Lcom/github/mmin18/widget/c;->b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->e:Z

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    return v2

    .line 131
    :cond_7
    :goto_0
    return v5

    .line 132
    :catchall_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 133
    .line 134
    .line 135
    return v2

    .line 136
    :catch_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 137
    .line 138
    .line 139
    return v2
.end method

.method protected m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->d:Lcom/github/mmin18/widget/c;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/github/mmin18/widget/c;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->m:Landroid/view/View;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->m:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->n:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->m:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->n:Z

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->m:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->m()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->g:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iget v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->b:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->k(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->c:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->c:F

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->e:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->a:F

    .line 7
    .line 8
    cmpl-float v0, v0, p1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->a:F

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->e:Z

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->n()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Downsample factor must be greater than 0."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->b:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView;->b:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
