.class public Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;,
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$d;,
        Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$SaveState;
    }
.end annotation


# static fields
.field public static final DIRECTION_HORIZONTAL:I = 0x0

.field public static final DIRECTION_VERTICAL:I = 0x1


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/util/ArrayList;

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:F

.field public p:Landroidx/viewpager2/widget/ViewPager2;

.field public q:Landroidx/viewpager/widget/ViewPager;

.field public r:I

.field public s:D

.field public t:I

.field public u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public v:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    .line 4
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    const/16 v1, 0xe9

    .line 6
    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    .line 7
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->t:I

    .line 8
    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$a;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 9
    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$b;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    invoke-static {}, Lolb;->l0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 13
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_watch_page_marker_normal_radius:I

    .line 14
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    .line 15
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_watch_page_marker_selected_radius:I

    .line 16
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    .line 17
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPINormalColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$color;->os_watch_indicator_normal_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    .line 19
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPISelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$color;->os_watch_indicator_selected_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    .line 20
    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPISelectedRadius:I

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    .line 21
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    .line 22
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPIAngle:I

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr p2, v1

    float-to-double v3, p2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    .line 23
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWatchPageIndicator_osWatchPINDirection:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    .line 27
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e()V

    return-void
.end method

.method public static getAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDynamicAlphaAc()I
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    ushr-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->o:F

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    float-to-int p0, v2

    return p0
.end method

.method private getDynamicAlphaDe()I
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    ushr-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v2, v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->o:F

    mul-float/2addr v0, p0

    sub-float/2addr v2, v0

    float-to-int p0, v2

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)I
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    sub-float v2, p1, v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIndexOfMarkers sqrt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbq5;->o(Ljava/lang/String;)V

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getIndexOfMarkers hit index = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public addMarker()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of bounds, this view can only accept the num within 3."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMarkers(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    new-instance v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;-><init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final b(II)F
    .locals 1

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->o:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public bindViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->q:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public bindViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->p:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    return-void
.end method

.method public final c(II)F
    .locals 1

    int-to-float v0, p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->o:F

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public final d()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    if-ne v7, v5, :cond_0

    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    :goto_1
    int-to-float v8, v8

    goto :goto_2

    :cond_0
    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    goto :goto_1

    :goto_2
    iput v8, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->c:F

    if-ne v7, v5, :cond_1

    move v7, v2

    goto :goto_3

    :cond_1
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->d:Z

    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-eq v7, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->c:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    float-to-double v9, v7

    iget v7, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v11, v7

    int-to-float v7, v5

    sub-float v13, v1, v7

    float-to-double v13, v13

    move/from16 v16, v5

    iget-wide v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    sub-double/2addr v9, v11

    double-to-float v4, v9

    iput v4, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    float-to-double v4, v8

    iget v8, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v9, v8

    int-to-double v11, v8

    sub-float/2addr v7, v1

    float-to-double v7, v7

    iget-wide v13, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    mul-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    sub-double/2addr v4, v9

    double-to-float v4, v4

    iput v4, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    move/from16 v4, v16

    goto :goto_7

    :cond_2
    move/from16 v16, v5

    iget-boolean v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d:I

    iget v5, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    add-int/2addr v4, v5

    :goto_4
    int-to-float v4, v4

    goto :goto_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d:I

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    sub-int/2addr v4, v5

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-double v7, v4

    iget v4, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v9, v4

    int-to-double v11, v4

    move/from16 v4, v16

    int-to-float v13, v4

    sub-float v14, v13, v1

    float-to-double v2, v14

    iget-wide v14, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v11, v2

    sub-double/2addr v9, v11

    iget-boolean v2, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_6

    :cond_4
    const/4 v2, 0x1

    :goto_6
    int-to-double v2, v2

    mul-double/2addr v9, v2

    sub-double/2addr v7, v9

    double-to-float v2, v7

    iput v2, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    float-to-double v2, v5

    iget v5, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v7, v5

    sub-float v5, v1, v13

    float-to-double v9, v5

    iget-wide v11, v0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v2, v7

    double-to-float v2, v2

    iput v2, v6, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    :goto_7
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbq5;->o(Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->c:I

    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScrollState()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->p:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->t:I

    return p0
.end method

.method public final h()I
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v2, v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    float-to-double v0, v0

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v2, v0

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->c:I

    mul-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    add-double/2addr v2, v0

    double-to-int p0, v2

    return p0

    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->c:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    float-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v5, p0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    return p0
.end method

.method public final i()I
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    float-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v5, p0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    return p0

    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->r:I

    int-to-double v2, v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->s:D

    float-to-double v0, v0

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr v2, v0

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d:I

    mul-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    add-double/2addr v2, v0

    double-to-int p0, v2

    return p0
.end method

.method public isIDELState()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->p:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->t:I

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    iput-boolean v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->p:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->u:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->q:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_c

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-nez v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    :goto_1
    if-eqz v3, :cond_2

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    if-nez v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRtl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " DIRECTION_HORIZONTAL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCurrentMarkerIndexTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNextMarkerIndexTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mViewPager2.getScrollState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getScrollState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbq5;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v1, v4, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    :goto_3
    int-to-float v4, v4

    goto :goto_4

    :cond_4
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    goto :goto_3

    :goto_4
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_5
    if-ne v1, v4, :cond_6

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_6
    if-ne v1, v4, :cond_8

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getDynamicAlphaDe()I

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    goto :goto_5

    :cond_7
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    :goto_5
    invoke-virtual {p0, v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->c(II)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_8
    if-ne v1, v3, :cond_a

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getDynamicAlphaAc()I

    move-result v5

    invoke-static {v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    goto :goto_6

    :cond_9
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    :goto_6
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    invoke-virtual {p0, v4, v5}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b(II)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_a
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->a:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$c;->b:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    :goto_7
    int-to-float v4, v4

    goto :goto_8

    :cond_b
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    goto :goto_7

    :goto_8
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i()I

    move-result p1

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h()I

    move-result p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->a(Landroid/view/MotionEvent;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pageScrollStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mFinalMarkerIndex = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbq5;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeMarker()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->d()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Out of bounds, at least 2 markers."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrent(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "OSWatchPageIndicator ArrayIndexOutOfBoundsException: index out of bounds."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNormalCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$d;)V
    .locals 0

    return-void
.end method

.method public setSelectedCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->o:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    goto :goto_2

    :cond_2
    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextMarkerIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbq5;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public whenPageScroll(IFI)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->isIDELState()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrolled position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentMarkerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " positionOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " positionOffsetPixels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mViewPager2.getScrollState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->getScrollState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbq5;->o(Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    if-lt p1, v1, :cond_3

    if-eqz p3, :cond_3

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->update(F)V

    goto :goto_0

    :cond_3
    if-ge p1, v1, :cond_5

    if-eqz p3, :cond_5

    sub-int/2addr v1, p1

    if-le v1, v0, :cond_4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->update(F)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->m:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->k:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public whenPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->t:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;->pageScrollStateChanged(I)V

    return-void
.end method
