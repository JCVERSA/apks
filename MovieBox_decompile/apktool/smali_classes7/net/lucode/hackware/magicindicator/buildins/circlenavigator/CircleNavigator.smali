.class public Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Lvy/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/animation/Interpolator;

.field private h:Landroid/graphics/Paint;

.field private i:Ljava/util/List;

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->g:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 25
    .line 26
    iput-boolean v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->o:Z

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 9
    .line 10
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 34
    .line 35
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 36
    .line 37
    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    iget-object v5, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->j:F

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float/2addr v1, v2

    .line 26
    const/high16 v2, 0x3f000000    # 0.5f

    .line 27
    .line 28
    add-float/2addr v1, v2

    .line 29
    float-to-int v1, v1

    .line 30
    int-to-float v1, v1

    .line 31
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->n:I

    .line 10
    .line 11
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 18
    .line 19
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d:I

    .line 26
    .line 27
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 34
    .line 35
    return-void
.end method

.method private d(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 22
    .line 23
    mul-int/lit8 p1, p1, 0x2

    .line 24
    .line 25
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    add-int/2addr p1, v0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr p1, v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr p1, v0

    .line 40
    :cond_1
    :goto_0
    return p1
.end method

.method private e(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f:I

    .line 22
    .line 23
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 24
    .line 25
    mul-int/2addr v0, p1

    .line 26
    mul-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d:I

    .line 31
    .line 32
    mul-int/2addr p1, v1

    .line 33
    add-int/2addr v0, p1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    add-int/2addr v0, p1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/2addr v0, p1

    .line 44
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 45
    .line 46
    mul-int/lit8 p1, p1, 0x2

    .line 47
    .line 48
    add-int/2addr p1, v0

    .line 49
    :cond_1
    :goto_0
    return p1
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    const/high16 v2, 0x3f000000    # 0.5f

    .line 19
    .line 20
    add-float/2addr v0, v2

    .line 21
    float-to-int v0, v0

    .line 22
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 23
    .line 24
    mul-int/lit8 v4, v3, 0x2

    .line 25
    .line 26
    iget v5, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d:I

    .line 27
    .line 28
    add-int/2addr v4, v5

    .line 29
    iget v5, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 30
    .line 31
    int-to-float v5, v5

    .line 32
    div-float/2addr v5, v1

    .line 33
    add-float/2addr v5, v2

    .line 34
    float-to-int v1, v5

    .line 35
    add-int/2addr v3, v1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v3, v1

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f:I

    .line 43
    .line 44
    if-ge v1, v2, :cond_0

    .line 45
    .line 46
    new-instance v2, Landroid/graphics/PointF;

    .line 47
    .line 48
    int-to-float v5, v3

    .line 49
    int-to-float v6, v0

    .line 50
    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/2addr v3, v4

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 63
    .line 64
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->e:I

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/graphics/PointF;

    .line 71
    .line 72
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 73
    .line 74
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->j:F

    .line 75
    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public getCircleClickListener()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getCircleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getCircleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getCircleSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->g:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    .line 1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->b(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->e(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->o:Z

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    add-int/lit8 p3, p3, -0x1

    .line 21
    .line 22
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Landroid/graphics/PointF;

    .line 47
    .line 48
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/graphics/PointF;

    .line 55
    .line 56
    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 57
    .line 58
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 59
    .line 60
    sub-float/2addr p1, p3

    .line 61
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->g:Landroid/view/animation/Interpolator;

    .line 62
    .line 63
    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    mul-float/2addr p1, p2

    .line 68
    add-float/2addr p3, p1

    .line 69
    iput p3, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->j:F

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->e:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->o:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->i:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/PointF;

    .line 14
    .line 15
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->j:F

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v2, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->k:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->l:F

    .line 21
    .line 22
    iput v1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->m:F

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public setCircleClickListener(Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator$a;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->k:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->k:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCircleCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setCircleSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->d:I

    .line 2
    .line 3
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->f()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->g:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->g:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->k:Z

    .line 2
    .line 3
    return-void
.end method
