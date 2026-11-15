.class public Lcom/contrarywind/view/WheelView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/contrarywind/view/WheelView$ACTION;,
        Lcom/contrarywind/view/WheelView$DividerType;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:F

.field private O:J

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:F

.field private final U:F

.field private final V:Ljava/util/List;

.field private a:Lcom/contrarywind/view/WheelView$DividerType;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/view/GestureDetector;

.field private e:Lp7/b;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/concurrent/ScheduledExecutorService;

.field private i:Ljava/util/concurrent/ScheduledFuture;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Lo7/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Boolean;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:Landroid/graphics/Typeface;

.field private v:I

.field private w:I

.field private x:I

.field private y:F

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/contrarywind/view/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/contrarywind/view/WheelView;->f:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/contrarywind/view/WheelView;->o:Ljava/lang/Boolean;

    .line 7
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/contrarywind/view/WheelView;->u:Landroid/graphics/Typeface;

    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    iput v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    const/4 v1, 0x5

    .line 9
    iput v1, p0, Lcom/contrarywind/view/WheelView;->I:I

    .line 10
    iput v0, p0, Lcom/contrarywind/view/WheelView;->M:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/contrarywind/view/WheelView;->N:F

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/contrarywind/view/WheelView;->O:J

    const/16 v1, 0x11

    .line 13
    iput v1, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 14
    iput v0, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 15
    iput v0, p0, Lcom/contrarywind/view/WheelView;->S:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 16
    iput v2, p0, Lcom/contrarywind/view/WheelView;->U:F

    .line 17
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/contrarywind/view/WheelView;->V:Ljava/util/List;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/contrarywind/view/R$dimen;->pickerview_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 20
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const v2, 0x4019999a    # 2.4f

    .line 21
    iput v2, p0, Lcom/contrarywind/view/WheelView;->T:F

    goto :goto_0

    :cond_0
    cmpg-float v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-gtz v3, :cond_1

    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    const v2, 0x40666666    # 3.6f

    .line 22
    iput v2, p0, Lcom/contrarywind/view/WheelView;->T:F

    goto :goto_0

    :cond_1
    if-gtz v3, :cond_2

    cmpg-float v3, v2, v4

    if-gez v3, :cond_2

    const/high16 v2, 0x40900000    # 4.5f

    .line 23
    iput v2, p0, Lcom/contrarywind/view/WheelView;->T:F

    goto :goto_0

    :cond_2
    cmpg-float v3, v4, v2

    const/high16 v4, 0x40400000    # 3.0f

    if-gtz v3, :cond_3

    cmpg-float v3, v2, v4

    if-gez v3, :cond_3

    const/high16 v2, 0x40c00000    # 6.0f

    .line 24
    iput v2, p0, Lcom/contrarywind/view/WheelView;->T:F

    goto :goto_0

    :cond_3
    cmpl-float v3, v2, v4

    if-ltz v3, :cond_4

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    .line 25
    iput v2, p0, Lcom/contrarywind/view/WheelView;->T:F

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 26
    sget-object v2, Lcom/contrarywind/view/R$styleable;->pickerview:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 27
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 28
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textColorOut:I

    const/high16 v1, -0x10000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->v:I

    .line 29
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textColorCenter:I

    const v1, -0xff0100

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->w:I

    .line 30
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_dividerColor:I

    const/high16 v1, 0x33000000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->x:I

    .line 31
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_textSize:I

    iget v1, p0, Lcom/contrarywind/view/WheelView;->p:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 32
    sget v0, Lcom/contrarywind/view/R$styleable;->pickerview_wheelview_lineSpacingMultiplier:I

    iget v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    :cond_5
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->h()V

    .line 35
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/contrarywind/view/WheelView;)Lp7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/contrarywind/view/WheelView;->e:Lp7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->V:Ljava/util/List;

    .line 2
    .line 3
    add-int/lit8 v1, p1, -0x1

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const-string p1, "%02d"

    .line 23
    .line 24
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private d(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/a;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr p1, v0

    .line 10
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->d(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lo7/a;->a()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    if-le p1, v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lo7/a;->a()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr p1, v0

    .line 32
    invoke-direct {p0, p1}, Lcom/contrarywind/view/WheelView;->d(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :cond_1
    :goto_0
    return p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/contrarywind/view/WheelView;->b(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    return-object p1
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->b:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Lq7/a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lq7/a;-><init>(Lcom/contrarywind/view/WheelView;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->c:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Landroid/view/GestureDetector;

    .line 11
    .line 12
    new-instance v1, Lp7/a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lp7/a;-><init>(Lcom/contrarywind/view/WheelView;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->d:Landroid/view/GestureDetector;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->g()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lcom/contrarywind/view/WheelView;->v:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->u:Landroid/graphics/Typeface;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v2, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget v2, p0, Lcom/contrarywind/view/WheelView;->w:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 52
    .line 53
    const v2, 0x3f8ccccd    # 1.1f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->u:Landroid/graphics/Typeface;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v2, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 69
    .line 70
    int-to-float v2, v2

    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v2, p0, Lcom/contrarywind/view/WheelView;->x:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpg-float v2, v0, v1

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iput v1, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 9
    .line 10
    invoke-interface {v3}, Lo7/a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Lo7/a;->getItem(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {p0, v3}, Lcom/contrarywind/view/WheelView;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget v4, p0, Lcom/contrarywind/view/WheelView;->q:I

    .line 40
    .line 41
    if-le v3, v4, :cond_0

    .line 42
    .line 43
    iput v3, p0, Lcom/contrarywind/view/WheelView;->q:I

    .line 44
    .line 45
    :cond_0
    iget-object v3, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 46
    .line 47
    const-string v4, "\u661f\u671f"

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v3, v5

    .line 58
    iput v3, p0, Lcom/contrarywind/view/WheelView;->r:I

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->r:I

    .line 64
    .line 65
    mul-int/lit8 v0, v0, 0x3

    .line 66
    .line 67
    int-to-float v0, v0

    .line 68
    iput v0, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 69
    .line 70
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_4

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq p1, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-boolean p1, p0, Lcom/contrarywind/view/WheelView;->f:Z

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr p1, v0

    .line 57
    int-to-double v0, p1

    .line 58
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 59
    .line 60
    mul-double/2addr v0, v2

    .line 61
    double-to-int p1, v0

    .line 62
    iput p1, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-int/2addr p1, v0

    .line 72
    int-to-double v0, p1

    .line 73
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 74
    .line 75
    mul-double/2addr v0, v2

    .line 76
    double-to-int p1, v0

    .line 77
    iput p1, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sub-int/2addr p1, v0

    .line 87
    iget v0, p0, Lcom/contrarywind/view/WheelView;->T:F

    .line 88
    .line 89
    float-to-int v0, v0

    .line 90
    sub-int/2addr p1, v0

    .line 91
    iput p1, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iput v3, p0, Lcom/contrarywind/view/WheelView;->R:I

    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_4

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq p1, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-boolean p1, p0, Lcom/contrarywind/view/WheelView;->f:Z

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr p1, v0

    .line 57
    int-to-double v0, p1

    .line 58
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 59
    .line 60
    mul-double/2addr v0, v2

    .line 61
    double-to-int p1, v0

    .line 62
    iput p1, p0, Lcom/contrarywind/view/WheelView;->S:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-int/2addr p1, v0

    .line 72
    int-to-double v0, p1

    .line 73
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 74
    .line 75
    mul-double/2addr v0, v2

    .line 76
    double-to-int p1, v0

    .line 77
    iput p1, p0, Lcom/contrarywind/view/WheelView;->S:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sub-int/2addr p1, v0

    .line 87
    iget v0, p0, Lcom/contrarywind/view/WheelView;->T:F

    .line 88
    .line 89
    float-to-int v0, v0

    .line 90
    sub-int/2addr p1, v0

    .line 91
    iput p1, p0, Lcom/contrarywind/view/WheelView;->S:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iput v3, p0, Lcom/contrarywind/view/WheelView;->S:I

    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 21
    .line 22
    :goto_0
    iget v4, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 23
    .line 24
    if-le v1, v4, :cond_0

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 29
    .line 30
    int-to-float v4, v2

    .line 31
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 49
    .line 50
    int-to-float v0, v2

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->i()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 10
    .line 11
    iget v1, p0, Lcom/contrarywind/view/WheelView;->I:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    mul-float/2addr v0, v1

    .line 17
    float-to-int v0, v0

    .line 18
    mul-int/lit8 v1, v0, 0x2

    .line 19
    .line 20
    int-to-double v1, v1

    .line 21
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    div-double/2addr v1, v3

    .line 27
    double-to-int v1, v1

    .line 28
    iput v1, p0, Lcom/contrarywind/view/WheelView;->J:I

    .line 29
    .line 30
    int-to-double v0, v0

    .line 31
    div-double/2addr v0, v3

    .line 32
    double-to-int v0, v0

    .line 33
    iput v0, p0, Lcom/contrarywind/view/WheelView;->L:I

    .line 34
    .line 35
    iget v0, p0, Lcom/contrarywind/view/WheelView;->P:I

    .line 36
    .line 37
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 42
    .line 43
    iget v0, p0, Lcom/contrarywind/view/WheelView;->J:I

    .line 44
    .line 45
    int-to-float v1, v0

    .line 46
    iget v2, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 47
    .line 48
    sub-float/2addr v1, v2

    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v1, v3

    .line 52
    iput v1, p0, Lcom/contrarywind/view/WheelView;->A:F

    .line 53
    .line 54
    int-to-float v0, v0

    .line 55
    add-float/2addr v0, v2

    .line 56
    div-float/2addr v0, v3

    .line 57
    iput v0, p0, Lcom/contrarywind/view/WheelView;->B:F

    .line 58
    .line 59
    iget v1, p0, Lcom/contrarywind/view/WheelView;->r:I

    .line 60
    .line 61
    int-to-float v1, v1

    .line 62
    sub-float/2addr v2, v1

    .line 63
    div-float/2addr v2, v3

    .line 64
    sub-float/2addr v0, v2

    .line 65
    iget v1, p0, Lcom/contrarywind/view/WheelView;->T:F

    .line 66
    .line 67
    sub-float/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/contrarywind/view/WheelView;->C:F

    .line 69
    .line 70
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 71
    .line 72
    const/4 v1, -0x1

    .line 73
    if-ne v0, v1, :cond_2

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 80
    .line 81
    invoke-interface {v0}, Lo7/a;->a()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    div-int/lit8 v0, v0, 0x2

    .line 88
    .line 89
    iput v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 94
    .line 95
    :cond_2
    :goto_0
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 96
    .line 97
    iput v0, p0, Lcom/contrarywind/view/WheelView;->G:I

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getAdapter()Lo7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget v2, p0, Lcom/contrarywind/view/WheelView;->F:I

    .line 12
    .line 13
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lo7/a;->a()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v2, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->F:I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 28
    .line 29
    invoke-interface {v2}, Lo7/a;->a()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v0, v2

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 39
    .line 40
    invoke-interface {v2}, Lo7/a;->a()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/lit8 v2, v2, -0x1

    .line 45
    .line 46
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    return v0

    .line 55
    :cond_2
    iget v0, p0, Lcom/contrarywind/view/WheelView;->F:I

    .line 56
    .line 57
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 58
    .line 59
    invoke-interface {v2}, Lo7/a;->a()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lo7/a;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v2, v1, [F

    .line 15
    .line 16
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 17
    .line 18
    .line 19
    move p1, v0

    .line 20
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    aget p2, v2, v0

    .line 23
    .line 24
    float-to-double v3, p2

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    double-to-int p2, v3

    .line 30
    add-int/2addr p1, p2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, p1

    .line 35
    :cond_1
    return v0
.end method

.method public getTotalScrollY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 2
    .line 3
    return v0
.end method

.method public isCenterLabel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public isLoop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, v0, Lcom/contrarywind/view/WheelView;->E:I

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lo7/a;->a()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v9, 0x1

    .line 24
    sub-int/2addr v2, v9

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/contrarywind/view/WheelView;->E:I

    .line 30
    .line 31
    iget v2, v0, Lcom/contrarywind/view/WheelView;->I:I

    .line 32
    .line 33
    new-array v10, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    iget v2, v0, Lcom/contrarywind/view/WheelView;->D:F

    .line 36
    .line 37
    iget v3, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 38
    .line 39
    div-float/2addr v2, v3

    .line 40
    float-to-int v2, v2

    .line 41
    iput v2, v0, Lcom/contrarywind/view/WheelView;->H:I

    .line 42
    .line 43
    :try_start_0
    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 44
    .line 45
    invoke-interface {v3}, Lo7/a;->a()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    rem-int/2addr v2, v3

    .line 50
    add-int/2addr v1, v2

    .line 51
    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v1, "WheelView"

    .line 55
    .line 56
    const-string v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-boolean v1, v0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 66
    .line 67
    if-gez v1, :cond_1

    .line 68
    .line 69
    iput v8, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 70
    .line 71
    :cond_1
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 72
    .line 73
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 74
    .line 75
    invoke-interface {v2}, Lo7/a;->a()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sub-int/2addr v2, v9

    .line 80
    if-le v1, v2, :cond_4

    .line 81
    .line 82
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 83
    .line 84
    invoke-interface {v1}, Lo7/a;->a()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    sub-int/2addr v1, v9

    .line 89
    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 93
    .line 94
    if-gez v1, :cond_3

    .line 95
    .line 96
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 97
    .line 98
    invoke-interface {v1}, Lo7/a;->a()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget v2, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 103
    .line 104
    add-int/2addr v1, v2

    .line 105
    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 106
    .line 107
    :cond_3
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 108
    .line 109
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 110
    .line 111
    invoke-interface {v2}, Lo7/a;->a()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    sub-int/2addr v2, v9

    .line 116
    if-le v1, v2, :cond_4

    .line 117
    .line 118
    iget v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 119
    .line 120
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 121
    .line 122
    invoke-interface {v2}, Lo7/a;->a()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    sub-int/2addr v1, v2

    .line 127
    iput v1, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 128
    .line 129
    :cond_4
    :goto_1
    iget v1, v0, Lcom/contrarywind/view/WheelView;->D:F

    .line 130
    .line 131
    iget v2, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 132
    .line 133
    rem-float v11, v1, v2

    .line 134
    .line 135
    move v1, v8

    .line 136
    :goto_2
    iget v2, v0, Lcom/contrarywind/view/WheelView;->I:I

    .line 137
    .line 138
    if-ge v1, v2, :cond_8

    .line 139
    .line 140
    iget v3, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 141
    .line 142
    div-int/lit8 v2, v2, 0x2

    .line 143
    .line 144
    sub-int/2addr v2, v1

    .line 145
    sub-int/2addr v3, v2

    .line 146
    iget-boolean v2, v0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 147
    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-direct {v0, v3}, Lcom/contrarywind/view/WheelView;->d(I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 155
    .line 156
    invoke-interface {v3, v2}, Lo7/a;->getItem(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    aput-object v2, v10, v1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    const-string v2, ""

    .line 164
    .line 165
    if-gez v3, :cond_6

    .line 166
    .line 167
    aput-object v2, v10, v1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 171
    .line 172
    invoke-interface {v4}, Lo7/a;->a()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    sub-int/2addr v4, v9

    .line 177
    if-le v3, v4, :cond_7

    .line 178
    .line 179
    aput-object v2, v10, v1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 183
    .line 184
    invoke-interface {v2, v3}, Lo7/a;->getItem(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    aput-object v2, v10, v1

    .line 189
    .line 190
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->a:Lcom/contrarywind/view/WheelView$DividerType;

    .line 194
    .line 195
    sget-object v2, Lcom/contrarywind/view/WheelView$DividerType;->WRAP:Lcom/contrarywind/view/WheelView$DividerType;

    .line 196
    .line 197
    const/4 v12, 0x0

    .line 198
    if-ne v1, v2, :cond_b

    .line 199
    .line 200
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_9

    .line 207
    .line 208
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 209
    .line 210
    iget v2, v0, Lcom/contrarywind/view/WheelView;->q:I

    .line 211
    .line 212
    sub-int/2addr v1, v2

    .line 213
    div-int/lit8 v1, v1, 0x2

    .line 214
    .line 215
    :goto_4
    add-int/lit8 v1, v1, -0xc

    .line 216
    .line 217
    int-to-float v1, v1

    .line 218
    goto :goto_5

    .line 219
    :cond_9
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 220
    .line 221
    iget v2, v0, Lcom/contrarywind/view/WheelView;->q:I

    .line 222
    .line 223
    sub-int/2addr v1, v2

    .line 224
    div-int/lit8 v1, v1, 0x4

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_5
    cmpg-float v2, v1, v12

    .line 228
    .line 229
    if-gtz v2, :cond_a

    .line 230
    .line 231
    const/high16 v1, 0x41200000    # 10.0f

    .line 232
    .line 233
    :cond_a
    move v13, v1

    .line 234
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 235
    .line 236
    int-to-float v1, v1

    .line 237
    sub-float v14, v1, v13

    .line 238
    .line 239
    iget v5, v0, Lcom/contrarywind/view/WheelView;->A:F

    .line 240
    .line 241
    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 242
    .line 243
    move-object/from16 v1, p1

    .line 244
    .line 245
    move v2, v13

    .line 246
    move v3, v5

    .line 247
    move v4, v14

    .line 248
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    .line 250
    .line 251
    iget v5, v0, Lcom/contrarywind/view/WheelView;->B:F

    .line 252
    .line 253
    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 254
    .line 255
    move v3, v5

    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    iget v5, v0, Lcom/contrarywind/view/WheelView;->A:F

    .line 261
    .line 262
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 263
    .line 264
    int-to-float v4, v1

    .line 265
    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    move-object/from16 v1, p1

    .line 269
    .line 270
    move v3, v5

    .line 271
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    .line 273
    .line 274
    iget v5, v0, Lcom/contrarywind/view/WheelView;->B:F

    .line 275
    .line 276
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 277
    .line 278
    int-to-float v4, v1

    .line 279
    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 280
    .line 281
    move-object/from16 v1, p1

    .line 282
    .line 283
    move v3, v5

    .line 284
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    :goto_6
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_c

    .line 294
    .line 295
    iget-boolean v1, v0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 296
    .line 297
    if-eqz v1, :cond_c

    .line 298
    .line 299
    iget v1, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 300
    .line 301
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 302
    .line 303
    iget-object v3, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v2, v3}, Lcom/contrarywind/view/WheelView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    sub-int/2addr v1, v2

    .line 310
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 311
    .line 312
    int-to-float v1, v1

    .line 313
    iget v3, v0, Lcom/contrarywind/view/WheelView;->T:F

    .line 314
    .line 315
    sub-float/2addr v1, v3

    .line 316
    iget v3, v0, Lcom/contrarywind/view/WheelView;->C:F

    .line 317
    .line 318
    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 319
    .line 320
    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    .line 322
    .line 323
    :cond_c
    move v1, v8

    .line 324
    :goto_7
    iget v2, v0, Lcom/contrarywind/view/WheelView;->I:I

    .line 325
    .line 326
    if-ge v1, v2, :cond_17

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    .line 330
    .line 331
    iget v2, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 332
    .line 333
    int-to-float v3, v1

    .line 334
    mul-float/2addr v2, v3

    .line 335
    sub-float/2addr v2, v11

    .line 336
    iget v3, v0, Lcom/contrarywind/view/WheelView;->L:I

    .line 337
    .line 338
    int-to-float v3, v3

    .line 339
    div-float/2addr v2, v3

    .line 340
    float-to-double v2, v2

    .line 341
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    div-double v4, v2, v4

    .line 347
    .line 348
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    mul-double/2addr v4, v13

    .line 354
    const-wide v13, 0x4056800000000000L    # 90.0

    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    sub-double/2addr v13, v4

    .line 360
    double-to-float v4, v13

    .line 361
    const/high16 v5, 0x42b40000    # 90.0f

    .line 362
    .line 363
    cmpl-float v6, v4, v5

    .line 364
    .line 365
    if-gez v6, :cond_d

    .line 366
    .line 367
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 368
    .line 369
    cmpg-float v6, v4, v6

    .line 370
    .line 371
    if-gtz v6, :cond_e

    .line 372
    .line 373
    :cond_d
    move v3, v12

    .line 374
    move v12, v8

    .line 375
    goto/16 :goto_e

    .line 376
    .line 377
    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    div-float/2addr v6, v5

    .line 382
    float-to-double v5, v6

    .line 383
    const-wide v13, 0x400199999999999aL    # 2.2

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    double-to-float v5, v5

    .line 393
    iget-boolean v6, v0, Lcom/contrarywind/view/WheelView;->g:Z

    .line 394
    .line 395
    if-nez v6, :cond_f

    .line 396
    .line 397
    iget-object v6, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-nez v6, :cond_f

    .line 404
    .line 405
    aget-object v6, v10, v1

    .line 406
    .line 407
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-nez v6, :cond_f

    .line 416
    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    aget-object v13, v10, v1

    .line 423
    .line 424
    invoke-direct {v0, v13}, Lcom/contrarywind/view/WheelView;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v13

    .line 428
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    goto :goto_8

    .line 441
    :cond_f
    aget-object v6, v10, v1

    .line 442
    .line 443
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    :goto_8
    iget-object v13, v0, Lcom/contrarywind/view/WheelView;->o:Ljava/lang/Boolean;

    .line 448
    .line 449
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 450
    .line 451
    .line 452
    move-result v13

    .line 453
    if-eqz v13, :cond_10

    .line 454
    .line 455
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    :cond_10
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->l(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->j(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-direct {v0, v6}, Lcom/contrarywind/view/WheelView;->k(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget v13, v0, Lcom/contrarywind/view/WheelView;->L:I

    .line 469
    .line 470
    int-to-double v13, v13

    .line 471
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 472
    .line 473
    .line 474
    move-result-wide v15

    .line 475
    iget v9, v0, Lcom/contrarywind/view/WheelView;->L:I

    .line 476
    .line 477
    int-to-double v8, v9

    .line 478
    mul-double/2addr v15, v8

    .line 479
    sub-double/2addr v13, v15

    .line 480
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 481
    .line 482
    .line 483
    move-result-wide v8

    .line 484
    iget v15, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 485
    .line 486
    move-wide/from16 v17, v13

    .line 487
    .line 488
    int-to-double v12, v15

    .line 489
    mul-double/2addr v8, v12

    .line 490
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 491
    .line 492
    div-double/2addr v8, v12

    .line 493
    sub-double v13, v17, v8

    .line 494
    .line 495
    double-to-float v8, v13

    .line 496
    const/4 v9, 0x0

    .line 497
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    .line 499
    .line 500
    iget v9, v0, Lcom/contrarywind/view/WheelView;->A:F

    .line 501
    .line 502
    cmpg-float v12, v8, v9

    .line 503
    .line 504
    const/high16 v13, 0x3f800000    # 1.0f

    .line 505
    .line 506
    if-gtz v12, :cond_11

    .line 507
    .line 508
    iget v12, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 509
    .line 510
    int-to-float v12, v12

    .line 511
    add-float/2addr v12, v8

    .line 512
    cmpl-float v12, v12, v9

    .line 513
    .line 514
    if-ltz v12, :cond_11

    .line 515
    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    .line 518
    .line 519
    iget v4, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 520
    .line 521
    int-to-float v4, v4

    .line 522
    iget v5, v0, Lcom/contrarywind/view/WheelView;->A:F

    .line 523
    .line 524
    sub-float/2addr v5, v8

    .line 525
    const/4 v9, 0x0

    .line 526
    invoke-virtual {v7, v9, v9, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 527
    .line 528
    .line 529
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 530
    .line 531
    .line 532
    move-result-wide v4

    .line 533
    double-to-float v4, v4

    .line 534
    mul-float/2addr v4, v13

    .line 535
    invoke-virtual {v7, v13, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 536
    .line 537
    .line 538
    iget v4, v0, Lcom/contrarywind/view/WheelView;->S:I

    .line 539
    .line 540
    int-to-float v4, v4

    .line 541
    iget v5, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 542
    .line 543
    int-to-float v5, v5

    .line 544
    iget-object v9, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 545
    .line 546
    invoke-virtual {v7, v6, v4, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 553
    .line 554
    .line 555
    iget v4, v0, Lcom/contrarywind/view/WheelView;->A:F

    .line 556
    .line 557
    sub-float/2addr v4, v8

    .line 558
    iget v5, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 559
    .line 560
    int-to-float v5, v5

    .line 561
    iget v8, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 562
    .line 563
    float-to-int v8, v8

    .line 564
    int-to-float v8, v8

    .line 565
    const/4 v9, 0x0

    .line 566
    invoke-virtual {v7, v9, v4, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 567
    .line 568
    .line 569
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 570
    .line 571
    .line 572
    move-result-wide v2

    .line 573
    double-to-float v2, v2

    .line 574
    mul-float/2addr v2, v13

    .line 575
    invoke-virtual {v7, v13, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 576
    .line 577
    .line 578
    iget v2, v0, Lcom/contrarywind/view/WheelView;->R:I

    .line 579
    .line 580
    int-to-float v2, v2

    .line 581
    iget v3, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 582
    .line 583
    int-to-float v3, v3

    .line 584
    iget v4, v0, Lcom/contrarywind/view/WheelView;->T:F

    .line 585
    .line 586
    sub-float/2addr v3, v4

    .line 587
    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 588
    .line 589
    invoke-virtual {v7, v6, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 593
    .line 594
    .line 595
    :goto_9
    const/4 v3, 0x0

    .line 596
    const/4 v12, 0x0

    .line 597
    goto/16 :goto_d

    .line 598
    .line 599
    :cond_11
    iget v12, v0, Lcom/contrarywind/view/WheelView;->B:F

    .line 600
    .line 601
    cmpg-float v14, v8, v12

    .line 602
    .line 603
    if-gtz v14, :cond_12

    .line 604
    .line 605
    iget v14, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 606
    .line 607
    int-to-float v14, v14

    .line 608
    add-float/2addr v14, v8

    .line 609
    cmpl-float v14, v14, v12

    .line 610
    .line 611
    if-ltz v14, :cond_12

    .line 612
    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    .line 615
    .line 616
    iget v4, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 617
    .line 618
    int-to-float v4, v4

    .line 619
    iget v5, v0, Lcom/contrarywind/view/WheelView;->B:F

    .line 620
    .line 621
    sub-float/2addr v5, v8

    .line 622
    const/4 v9, 0x0

    .line 623
    invoke-virtual {v7, v9, v9, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 624
    .line 625
    .line 626
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 627
    .line 628
    .line 629
    move-result-wide v4

    .line 630
    double-to-float v4, v4

    .line 631
    mul-float/2addr v4, v13

    .line 632
    invoke-virtual {v7, v13, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 633
    .line 634
    .line 635
    iget v4, v0, Lcom/contrarywind/view/WheelView;->R:I

    .line 636
    .line 637
    int-to-float v4, v4

    .line 638
    iget v5, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 639
    .line 640
    int-to-float v5, v5

    .line 641
    iget v9, v0, Lcom/contrarywind/view/WheelView;->T:F

    .line 642
    .line 643
    sub-float/2addr v5, v9

    .line 644
    iget-object v9, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 645
    .line 646
    invoke-virtual {v7, v6, v4, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 650
    .line 651
    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 653
    .line 654
    .line 655
    iget v4, v0, Lcom/contrarywind/view/WheelView;->B:F

    .line 656
    .line 657
    sub-float/2addr v4, v8

    .line 658
    iget v5, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 659
    .line 660
    int-to-float v5, v5

    .line 661
    iget v8, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 662
    .line 663
    float-to-int v8, v8

    .line 664
    int-to-float v8, v8

    .line 665
    const/4 v9, 0x0

    .line 666
    invoke-virtual {v7, v9, v4, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 667
    .line 668
    .line 669
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 670
    .line 671
    .line 672
    move-result-wide v2

    .line 673
    double-to-float v2, v2

    .line 674
    mul-float/2addr v2, v13

    .line 675
    invoke-virtual {v7, v13, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 676
    .line 677
    .line 678
    iget v2, v0, Lcom/contrarywind/view/WheelView;->S:I

    .line 679
    .line 680
    int-to-float v2, v2

    .line 681
    iget v3, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 682
    .line 683
    int-to-float v3, v3

    .line 684
    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 685
    .line 686
    invoke-virtual {v7, v6, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 690
    .line 691
    .line 692
    goto :goto_9

    .line 693
    :cond_12
    cmpl-float v9, v8, v9

    .line 694
    .line 695
    if-ltz v9, :cond_13

    .line 696
    .line 697
    iget v9, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 698
    .line 699
    int-to-float v14, v9

    .line 700
    add-float/2addr v14, v8

    .line 701
    cmpg-float v8, v14, v12

    .line 702
    .line 703
    if-gtz v8, :cond_13

    .line 704
    .line 705
    int-to-float v2, v9

    .line 706
    iget v3, v0, Lcom/contrarywind/view/WheelView;->T:F

    .line 707
    .line 708
    sub-float/2addr v2, v3

    .line 709
    iget v3, v0, Lcom/contrarywind/view/WheelView;->R:I

    .line 710
    .line 711
    int-to-float v3, v3

    .line 712
    iget-object v4, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 713
    .line 714
    invoke-virtual {v7, v6, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 715
    .line 716
    .line 717
    iget v2, v0, Lcom/contrarywind/view/WheelView;->G:I

    .line 718
    .line 719
    iget v3, v0, Lcom/contrarywind/view/WheelView;->I:I

    .line 720
    .line 721
    div-int/lit8 v3, v3, 0x2

    .line 722
    .line 723
    sub-int/2addr v3, v1

    .line 724
    sub-int/2addr v2, v3

    .line 725
    iput v2, v0, Lcom/contrarywind/view/WheelView;->F:I

    .line 726
    .line 727
    goto/16 :goto_9

    .line 728
    .line 729
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 730
    .line 731
    .line 732
    iget v8, v0, Lcom/contrarywind/view/WheelView;->K:I

    .line 733
    .line 734
    iget v9, v0, Lcom/contrarywind/view/WheelView;->t:F

    .line 735
    .line 736
    float-to-int v9, v9

    .line 737
    const/4 v12, 0x0

    .line 738
    invoke-virtual {v7, v12, v12, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 739
    .line 740
    .line 741
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 742
    .line 743
    .line 744
    move-result-wide v2

    .line 745
    double-to-float v2, v2

    .line 746
    mul-float/2addr v2, v13

    .line 747
    invoke-virtual {v7, v13, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 748
    .line 749
    .line 750
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 751
    .line 752
    iget v3, v0, Lcom/contrarywind/view/WheelView;->s:I

    .line 753
    .line 754
    const/4 v8, -0x1

    .line 755
    if-nez v3, :cond_14

    .line 756
    .line 757
    move v9, v12

    .line 758
    :goto_a
    const/4 v3, 0x0

    .line 759
    goto :goto_b

    .line 760
    :cond_14
    if-lez v3, :cond_15

    .line 761
    .line 762
    const/4 v3, 0x0

    .line 763
    const/4 v9, 0x1

    .line 764
    goto :goto_b

    .line 765
    :cond_15
    move v9, v8

    .line 766
    goto :goto_a

    .line 767
    :goto_b
    cmpl-float v4, v4, v3

    .line 768
    .line 769
    if-lez v4, :cond_16

    .line 770
    .line 771
    goto :goto_c

    .line 772
    :cond_16
    const/4 v8, 0x1

    .line 773
    :goto_c
    mul-int/2addr v9, v8

    .line 774
    int-to-float v4, v9

    .line 775
    const/high16 v8, 0x3f000000    # 0.5f

    .line 776
    .line 777
    mul-float/2addr v4, v8

    .line 778
    mul-float/2addr v4, v5

    .line 779
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 780
    .line 781
    .line 782
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 783
    .line 784
    sub-float/2addr v13, v5

    .line 785
    const/high16 v4, 0x437f0000    # 255.0f

    .line 786
    .line 787
    mul-float/2addr v13, v4

    .line 788
    float-to-int v4, v13

    .line 789
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 790
    .line 791
    .line 792
    iget v2, v0, Lcom/contrarywind/view/WheelView;->S:I

    .line 793
    .line 794
    int-to-float v2, v2

    .line 795
    iget v4, v0, Lcom/contrarywind/view/WheelView;->s:I

    .line 796
    .line 797
    int-to-float v4, v4

    .line 798
    mul-float/2addr v4, v5

    .line 799
    add-float/2addr v2, v4

    .line 800
    iget v4, v0, Lcom/contrarywind/view/WheelView;->r:I

    .line 801
    .line 802
    int-to-float v4, v4

    .line 803
    iget-object v5, v0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 804
    .line 805
    invoke-virtual {v7, v6, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 809
    .line 810
    .line 811
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    .line 813
    .line 814
    iget-object v2, v0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 815
    .line 816
    iget v4, v0, Lcom/contrarywind/view/WheelView;->p:I

    .line 817
    .line 818
    int-to-float v4, v4

    .line 819
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 820
    .line 821
    .line 822
    goto :goto_f

    .line 823
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 824
    .line 825
    .line 826
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 827
    .line 828
    move v8, v12

    .line 829
    const/4 v9, 0x1

    .line 830
    move v12, v3

    .line 831
    goto/16 :goto_7

    .line 832
    .line 833
    :cond_17
    return-void
.end method

.method public final onItemSelected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->e:Lp7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/contrarywind/view/WheelView$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/contrarywind/view/WheelView$1;-><init>(Lcom/contrarywind/view/WheelView;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0xc8

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->P:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->m()V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/contrarywind/view/WheelView;->K:I

    .line 7
    .line 8
    iget p2, p0, Lcom/contrarywind/view/WheelView;->J:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->d:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 8
    .line 9
    neg-int v1, v1

    .line 10
    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 12
    .line 13
    mul-float/2addr v1, v2

    .line 14
    iget-object v2, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 15
    .line 16
    invoke-interface {v2}, Lo7/a;->a()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v4, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 23
    .line 24
    sub-int/2addr v2, v4

    .line 25
    int-to-float v2, v2

    .line 26
    iget v4, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 27
    .line 28
    mul-float/2addr v2, v4

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq v4, v5, :cond_1

    .line 37
    .line 38
    if-nez v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p0, Lcom/contrarywind/view/WheelView;->L:I

    .line 45
    .line 46
    int-to-float v2, v1

    .line 47
    sub-float/2addr v2, v0

    .line 48
    int-to-float v0, v1

    .line 49
    div-float/2addr v2, v0

    .line 50
    float-to-double v0, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget v2, p0, Lcom/contrarywind/view/WheelView;->L:I

    .line 56
    .line 57
    int-to-double v6, v2

    .line 58
    mul-double/2addr v0, v6

    .line 59
    iget v2, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 60
    .line 61
    const/high16 v4, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float v4, v2, v4

    .line 64
    .line 65
    float-to-double v6, v4

    .line 66
    add-double/2addr v0, v6

    .line 67
    float-to-double v6, v2

    .line 68
    div-double/2addr v0, v6

    .line 69
    double-to-int v0, v0

    .line 70
    iget v1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 71
    .line 72
    rem-float/2addr v1, v2

    .line 73
    add-float/2addr v1, v2

    .line 74
    rem-float/2addr v1, v2

    .line 75
    iget v4, p0, Lcom/contrarywind/view/WheelView;->I:I

    .line 76
    .line 77
    div-int/2addr v4, v5

    .line 78
    sub-int/2addr v0, v4

    .line 79
    int-to-float v0, v0

    .line 80
    mul-float/2addr v0, v2

    .line 81
    sub-float/2addr v0, v1

    .line 82
    float-to-int v0, v0

    .line 83
    iput v0, p0, Lcom/contrarywind/view/WheelView;->M:I

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-wide v4, p0, Lcom/contrarywind/view/WheelView;->O:J

    .line 90
    .line 91
    sub-long/2addr v0, v4

    .line 92
    const-wide/16 v4, 0x78

    .line 93
    .line 94
    cmp-long v0, v0, v4

    .line 95
    .line 96
    if-lez v0, :cond_0

    .line 97
    .line 98
    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/contrarywind/view/WheelView;->smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->CLICK:Lcom/contrarywind/view/WheelView$ACTION;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/contrarywind/view/WheelView;->smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lcom/contrarywind/view/WheelView;->N:F

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-float/2addr v0, v4

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iput v4, p0, Lcom/contrarywind/view/WheelView;->N:F

    .line 122
    .line 123
    iget v4, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 124
    .line 125
    add-float/2addr v4, v0

    .line 126
    iput v4, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 127
    .line 128
    iget-boolean v5, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 129
    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    iget v5, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 133
    .line 134
    const/high16 v6, 0x3e800000    # 0.25f

    .line 135
    .line 136
    mul-float v7, v5, v6

    .line 137
    .line 138
    sub-float v7, v4, v7

    .line 139
    .line 140
    cmpg-float v1, v7, v1

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    if-gez v1, :cond_2

    .line 144
    .line 145
    cmpg-float v1, v0, v7

    .line 146
    .line 147
    if-ltz v1, :cond_3

    .line 148
    .line 149
    :cond_2
    mul-float/2addr v5, v6

    .line 150
    add-float/2addr v5, v4

    .line 151
    cmpl-float v1, v5, v2

    .line 152
    .line 153
    if-lez v1, :cond_5

    .line 154
    .line 155
    cmpl-float v1, v0, v7

    .line 156
    .line 157
    if-lez v1, :cond_5

    .line 158
    .line 159
    :cond_3
    sub-float/2addr v4, v0

    .line 160
    iput v4, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    iput-wide v0, p0, Lcom/contrarywind/view/WheelView;->O:J

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, p0, Lcom/contrarywind/view/WheelView;->N:F

    .line 177
    .line 178
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_1
    return v3
.end method

.method public final scrollBy(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    new-instance v1, Lcom/contrarywind/timer/InertiaTimerTask;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/contrarywind/timer/InertiaTimerTask;-><init>(Lcom/contrarywind/view/WheelView;F)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v4, 0x5

    .line 12
    .line 13
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    return-void
.end method

.method public final setAdapter(Lo7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->m:Lo7/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setConvertMonth(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->o:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->F:I

    .line 2
    .line 3
    iput p1, p0, Lcom/contrarywind/view/WheelView;->E:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->x:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->l:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->a:Lcom/contrarywind/view/WheelView$DividerType;

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->Q:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsOptions(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/contrarywind/view/WheelView;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/contrarywind/view/WheelView;->y:F

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/contrarywind/view/WheelView;->h()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lp7/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->e:Lp7/b;

    .line 2
    .line 3
    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->w:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->v:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    mul-float/2addr v0, p1

    .line 19
    float-to-int p1, v0

    .line 20
    iput p1, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget v0, p0, Lcom/contrarywind/view/WheelView;->p:I

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public setTextXOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->s:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setTotalScrollY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->u:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->j:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/contrarywind/view/WheelView;->k:Landroid/graphics/Paint;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->u:Landroid/graphics/Typeface;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->FLING:Lcom/contrarywind/view/WheelView$ACTION;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    .line 9
    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/contrarywind/view/WheelView;->D:F

    .line 13
    .line 14
    iget v0, p0, Lcom/contrarywind/view/WheelView;->t:F

    .line 15
    .line 16
    rem-float/2addr p1, v0

    .line 17
    add-float/2addr p1, v0

    .line 18
    rem-float/2addr p1, v0

    .line 19
    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/contrarywind/view/WheelView;->M:I

    .line 21
    .line 22
    int-to-float v1, p1

    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float v2, v0, v2

    .line 26
    .line 27
    cmpl-float v1, v1, v2

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    sub-float/2addr v0, p1

    .line 33
    float-to-int p1, v0

    .line 34
    iput p1, p0, Lcom/contrarywind/view/WheelView;->M:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    neg-int p1, p1

    .line 38
    iput p1, p0, Lcom/contrarywind/view/WheelView;->M:I

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/contrarywind/view/WheelView;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    .line 42
    new-instance v1, Lcom/contrarywind/timer/SmoothScrollTimerTask;

    .line 43
    .line 44
    iget p1, p0, Lcom/contrarywind/view/WheelView;->M:I

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/contrarywind/timer/SmoothScrollTimerTask;-><init>(Lcom/contrarywind/view/WheelView;I)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v4, 0xa

    .line 50
    .line 51
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/contrarywind/view/WheelView;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 60
    .line 61
    return-void
.end method
