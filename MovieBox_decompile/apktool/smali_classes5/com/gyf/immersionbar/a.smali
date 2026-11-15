.class Lcom/gyf/immersionbar/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:F


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/gyf/immersionbar/a;->f:Z

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/a;->j(Landroid/app/Activity;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/gyf/immersionbar/a;->g:F

    .line 28
    .line 29
    const-string v0, "status_bar_height"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/gyf/immersionbar/a;->a:I

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/a;->b(Landroid/app/Activity;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/gyf/immersionbar/a;->b:I

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/a;->e(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/gyf/immersionbar/a;->d:I

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/a;->h(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/gyf/immersionbar/a;->e:I

    .line 54
    .line 55
    if-lez v0, :cond_1

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_1
    iput-boolean v1, p0, Lcom/gyf/immersionbar/a;->c:Z

    .line 59
    .line 60
    return-void
.end method

.method private b(Landroid/app/Activity;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/gyf/immersionbar/R$id;->action_bar_container:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroid/util/TypedValue;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x10102eb

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    .line 36
    .line 37
    iget v0, v0, Landroid/util/TypedValue;->data:I

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
    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :cond_1
    return v0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "dimen"

    .line 7
    .line 8
    const-string v3, "android"

    .line 9
    .line 10
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v4, 0x1d

    .line 37
    .line 38
    if-lt v3, v4, :cond_0

    .line 39
    .line 40
    const-string v3, "status_bar_height"

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    :cond_0
    return v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    int-to-float v0, v2

    .line 70
    mul-float/2addr v0, p1

    .line 71
    div-float/2addr v0, p0

    .line 72
    const/4 p0, 0x0

    .line 73
    cmpl-float p0, v0, p0

    .line 74
    .line 75
    const/high16 p1, 0x3f000000    # 0.5f

    .line 76
    .line 77
    if-ltz p0, :cond_2

    .line 78
    .line 79
    add-float/2addr v0, p1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sub-float/2addr v0, p1

    .line 82
    :goto_0
    float-to-int p0, v0

    .line 83
    return p0

    .line 84
    :catch_0
    :cond_3
    return v0
.end method

.method private e(Landroid/content/Context;)I
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/app/Activity;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/a;->l(Landroid/app/Activity;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/gyf/immersionbar/a;->f(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method static f(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "navigation_bar_height"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "navigation_bar_height_landscape"

    .line 18
    .line 19
    :goto_0
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method private h(Landroid/content/Context;)I
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/app/Activity;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/a;->l(Landroid/app/Activity;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "navigation_bar_width"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method static i(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "navigation_bar_width"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private j(Landroid/app/Activity;)F
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    int-to-float p1, p1

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    div-float/2addr p1, v1

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr v0, v1

    .line 27
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method private l(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/gyf/immersionbar/g$a;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/gyf/immersionbar/g$a;->a:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    .line 30
    .line 31
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32
    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    .line 35
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 41
    .line 42
    .line 43
    iget p1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .line 45
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    .line 47
    sub-int/2addr v0, v3

    .line 48
    if-gtz v0, :cond_1

    .line 49
    .line 50
    sub-int/2addr v1, p1

    .line 51
    if-lez v1, :cond_2

    .line 52
    .line 53
    :cond_1
    const/4 v2, 0x1

    .line 54
    :cond_2
    return v2
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/a;->g:F

    .line 2
    .line 3
    const/high16 v1, 0x44160000    # 600.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-gez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/gyf/immersionbar/a;->f:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method
