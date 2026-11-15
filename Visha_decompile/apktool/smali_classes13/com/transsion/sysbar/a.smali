.class public Lcom/transsion/sysbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/sysbar/a;->f:Z

    invoke-virtual {p0, p1}, Lcom/transsion/sysbar/a;->j(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/transsion/sysbar/a;->g:F

    const-string v0, "status_bar_height"

    invoke-static {p1, v0}, Lcom/transsion/sysbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sysbar/a;->a:I

    invoke-virtual {p0, p1}, Lcom/transsion/sysbar/a;->b(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sysbar/a;->b:I

    invoke-virtual {p0, p1}, Lcom/transsion/sysbar/a;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sysbar/a;->d:I

    invoke-virtual {p0, p1}, Lcom/transsion/sysbar/a;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sysbar/a;->e:I

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/sysbar/a;->c:Z

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v2, :cond_0

    const-string v3, "status_bar_height"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    div-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    if-ltz p0, :cond_1

    add-float/2addr v0, p1

    goto :goto_0

    :cond_1
    sub-float/2addr v0, p1

    :goto_0
    float-to-int p0, v0

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string v0, "navigation_bar_height_landscape"

    :goto_0
    invoke-static {p0, v0}, Lcom/transsion/sysbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 1

    const-string v0, "navigation_bar_width"

    invoke-static {p0, v0}, Lcom/transsion/sysbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/transsion/sysbar/a;->b:I

    return p0
.end method

.method public final b(Landroid/app/Activity;)I
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Lcom/transsion/common/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    :cond_1
    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/transsion/sysbar/a;->d:I

    return p0
.end method

.method public final e(Landroid/content/Context;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/transsion/sysbar/a;->l(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/transsion/sysbar/a;->f(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/transsion/sysbar/a;->e:I

    return p0
.end method

.method public final h(Landroid/content/Context;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/transsion/sysbar/a;->l(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "navigation_bar_width"

    invoke-static {p1, p0}, Lcom/transsion/sysbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroid/app/Activity;)F
    .locals 1

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/transsion/sysbar/a;->a:I

    return p0
.end method

.method public l(Landroid/app/Activity;)Z
    .locals 3

    invoke-static {p1}, Lcom/transsion/sysbar/c;->a(Landroid/content/Context;)Lcom/transsion/sysbar/c$a;

    move-result-object p0

    iget-boolean v0, p0, Lcom/transsion/sysbar/c$a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/sysbar/c$a;->a:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p1, v2

    if-gtz p1, :cond_1

    sub-int/2addr v0, p0

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sysbar/a;->c:Z

    return p0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/transsion/sysbar/a;->g:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/sysbar/a;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
