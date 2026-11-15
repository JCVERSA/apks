.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$i;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$d;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$e;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;
    }
.end annotation


# static fields
.field public static final DEFAULT_ITEM_SCROLLER_DURATION:I = 0x2bc

.field public static final DEFAULT_SCROLLER_DURATION:I = 0x15e

.field public static EXECUTEANIMATION:Z = false

.field public static final OUTLINE_CORNER_SIZE:I = 0x8

.field public static k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

.field public static l0:Z

.field public static m0:I


# instance fields
.field public A:Lvj5;

.field public B:Lhv8;

.field public C:Lwr4;

.field public D:Lvt7;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Landroid/animation/AnimatorSet;

.field public J:Z

.field public K:Z

.field public L:I

.field public M:I

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:Z

.field public a0:I

.field public b:I

.field public b0:I

.field public c:I

.field public c0:I

.field public d:I

.field public d0:Landroid/graphics/Rect;

.field public e:I

.field public e0:Landroid/graphics/Rect;

.field public f:I

.field public f0:[F

.field public g:Landroid/view/View;

.field public g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

.field public h:Landroid/graphics/PointF;

.field public h0:I

.field public i:Z

.field public i0:I

.field public j:Landroid/graphics/PointF;

.field public j0:I

.field public k:Landroid/graphics/PointF;

.field public l:Z

.field public m:Landroid/graphics/Paint;

.field public mIsExecuteAnimation:Z

.field public n:Landroid/graphics/Paint;

.field public o:Landroid/graphics/Paint;

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/view/VelocityTracker;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lp7a;

.field public x:I

.field public y:I

.field public z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i:Z

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    .line 7
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    .line 9
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u:Z

    const/16 v1, 0x52

    .line 10
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->x:I

    const/16 v1, 0x40

    .line 11
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->y:I

    const/16 v1, 0x15e

    .line 12
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    const/16 v1, 0xff

    .line 13
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->T:I

    .line 14
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->U:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->V:F

    .line 16
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->W:Z

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->o(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->o:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->T:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->V:F

    return-void
.end method

.method public static closeMenu()V
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d()V

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public static getViewCache()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-object v0
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    invoke-static {p1}, Lolb;->H(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->x:I

    invoke-static {v2, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->x:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->y:I

    invoke-static {v2, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->y:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b0:I

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->c0:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lolb;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a0:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v6, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout:[I

    invoke-virtual {v4, p2, v6, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    move v4, v5

    :goto_0
    if-ge v4, p3, :cond_5

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    sget v7, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutSwipeEnable:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    goto :goto_1

    :cond_0
    sget v7, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutLeftSwipe:I

    if-ne v6, v7, :cond_1

    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    goto :goto_1

    :cond_1
    sget v7, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutIsHios:I

    if-ne v6, v7, :cond_2

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    goto :goto_1

    :cond_2
    sget v7, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutAutoClipCorner:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->W:Z

    goto :goto_1

    :cond_3
    sget v7, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutCornerSize:I

    if-ne v6, v7, :cond_4

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a0:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a0:I

    :cond_4
    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    :cond_5
    invoke-static {}, Lolb;->l0()Z

    move-result p3

    xor-int/2addr p3, v2

    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lp7a;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    invoke-direct {p2, p3, v4}, Lp7a;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->F:I

    new-instance p2, Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lvt7;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->n:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->n:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m:Landroid/graphics/Paint;

    const/high16 p3, -0x10000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->o:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->p:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    sget p3, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m0:I

    if-eq p3, p2, :cond_6

    sput p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lu7a;->c(Landroid/content/Context;)V

    :cond_6
    sget p2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->S:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->O:I

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->P:I

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->Q:I

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    sget p3, Lcom/transsion/widgetslib/R$color;->os_gray_solid_tertiary_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->R:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d0:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->e0:Landroid/graphics/Rect;

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    if-eqz p2, :cond_7

    sget p2, Lcom/transsion/widgetslib/R$color;->os_fill_icon_toggle_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    const/16 p2, 0x14

    new-array p2, p2, [F

    aput v1, p2, v5

    aput v1, p2, v2

    const/4 p3, 0x2

    aput v1, p2, p3

    const/4 p3, 0x3

    aput v1, p2, p3

    const/4 p3, 0x4

    aput v0, p2, p3

    const/4 p3, 0x5

    aput v1, p2, p3

    const/4 p3, 0x6

    aput v1, p2, p3

    const/4 p3, 0x7

    aput v1, p2, p3

    aput v1, p2, v3

    const/16 p3, 0x9

    aput v0, p2, p3

    const/16 p3, 0xa

    aput v1, p2, p3

    const/16 p3, 0xb

    aput v1, p2, p3

    const/16 p3, 0xc

    aput v1, p2, p3

    const/16 p3, 0xd

    aput v1, p2, p3

    const/16 p3, 0xe

    aput v0, p2, p3

    const/16 p3, 0xf

    aput v1, p2, p3

    const/16 p3, 0x10

    aput v1, p2, p3

    const/16 p3, 0x11

    aput v1, p2, p3

    const/16 p3, 0x12

    aput p1, p2, p3

    const/16 p1, 0x13

    aput v1, p2, p1

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f0:[F

    :cond_7
    new-instance p1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    return-void
.end method

.method public static release()V
    .locals 1

    invoke-static {}, Lu7a;->b()V

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v0}, Lvt7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->p()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Lvt7;->a()V

    return-void
.end method

.method public decorateContentRoundCorner(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateContentRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$b;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public decorateOutlineRoundCorner(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateOutlineRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    if-eqz v3, :cond_24

    if-nez v0, :cond_24

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->e(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_21

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v0}, Lvt7;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v3}, Lwr4;->j(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->m(Landroid/view/MotionEvent;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v3}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->J:Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l:Z

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->F:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->c:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-nez v3, :cond_8

    if-ltz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    if-gtz v0, :cond_7

    :goto_2
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u(I)Z

    move-result v3

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->n(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    if-lt v5, v6, :cond_a

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v7, :cond_9

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    if-gt v5, v7, :cond_c

    if-eqz v1, :cond_b

    if-nez v3, :cond_c

    :cond_b
    :goto_3
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u:Z

    if-nez v1, :cond_c

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    invoke-virtual {v0, v5, v1, v6}, Lvt7;->g(III)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l()V

    goto/16 :goto_4

    :cond_c
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0, v4, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r(II)V

    goto/16 :goto_4

    :cond_d
    if-gez v0, :cond_12

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v1, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w(I)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    goto/16 :goto_4

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f:I

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_4

    :cond_12
    if-lez v0, :cond_17

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v1, :cond_15

    if-eqz v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f:I

    if-le v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_4

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w(I)V

    goto/16 :goto_4

    :cond_16
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j(I)V

    goto/16 :goto_4

    :cond_18
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_4

    :cond_19
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->J:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j(I)V

    goto :goto_4

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v1, :cond_1b

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    invoke-virtual {v0, v1, v3, v4}, Lvt7;->g(III)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_4

    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v1, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_4

    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->J:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j(I)V

    goto :goto_4

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v1, :cond_1f

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    invoke-virtual {v0, v1, v3, v4}, Lvt7;->g(III)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_20
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q()V

    sput-boolean v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l0:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->J:Z

    goto :goto_5

    :cond_21
    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l0:Z

    if-eqz v0, :cond_22

    return v2

    :cond_22
    sput-boolean v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l0:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v0}, Lvt7;->d()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d()V

    :cond_23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->c:I

    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_24
    :goto_6
    sput-boolean v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V

    return-void
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V

    return-void
.end method

.method public doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v3}, Lwr4;->j(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v3}, Lp7a;->getMenuTotalWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v4}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v3}, Lp7a;->getMenuTotalWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v4}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    sub-int/2addr p1, v3

    neg-int p1, p1

    :goto_0
    filled-new-array {v2, p1}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lk57;

    invoke-direct {v4}, Lk57;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$d;

    invoke-direct {v4, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$d;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v6, 0x0

    new-array v7, v0, [F

    aput p1, v7, v2

    aput v6, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v6, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$e;

    invoke-direct {v6, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$e;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lk57;

    invoke-direct {v6}, Lk57;-><init>()V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$c;

    invoke-direct {v5, p0, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$c;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    new-array p3, v0, [Landroid/animation/Animator;

    aput-object v3, p3, v2

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    if-eqz p1, :cond_3

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$f;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    sput-boolean v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final f()V
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    iget-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->K:Z

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d()V

    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i0:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getOnMenuItemClickListener()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$i;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSwipeCurrentHorizontal()Lwr4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i(I)V
    .locals 2

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v0, v1}, Lut7;->a(FFI)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j0:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j0:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    invoke-static {p1, v0, v1}, Lelb;->a(III)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j0:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public isCompleteOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

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

.method public isLeftCompleteOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lwr4;->i(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lvj5;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lvj5;->k(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpen()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isMenuOpenNotEqual()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpenNotEqual()Z

    move-result p0

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

.method public isRightCompleteOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lwr4;->i(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lhv8;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpenNotEqual()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lhv8;->k(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRtlSwipe()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    return p0
.end method

.method public isSwipeEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    return p0
.end method

.method public final j(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->f:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    :goto_0
    return-void
.end method

.method public k(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->a()V

    return-void
.end method

.method public m(Landroid/view/MotionEvent;)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    invoke-virtual {v0, v1, v2, p1, p0}, Lwr4;->h(IFLandroid/view/MotionEvent;Z)I

    move-result p0

    return p0
.end method

.method public final n(Landroid/view/MotionEvent;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    invoke-virtual {v0}, Lwr4;->getMenuWidth()I

    move-result v0

    :goto_0
    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_1

    int-to-float p1, p2

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x2bc

    goto :goto_2

    :cond_2
    const/16 p0, 0x15e

    :goto_2
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetAnimation()V

    invoke-static {}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->release()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-lez v0, :cond_3

    goto :goto_0

    :cond_1
    if-gez v0, :cond_3

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v1}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    if-lez v1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v2

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v1}, Lp7a;->getMenuTotalWidth()I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v1}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    if-lez v0, :cond_5

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->W:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a0:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateOutlineRoundCorner(I)V

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->a0:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateContentRoundCorner(I)V

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p4, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p2, p4

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d:I

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->e:I

    iput-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v1

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->M:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->M:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_4

    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i:Z

    :cond_4
    float-to-int v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollBy(II)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return v2

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v1}, Lvt7;->getCurrPos()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v0}, Lvt7;->getCurrPos()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public performLongClick()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b:I

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->q:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public final r(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, -0xa

    if-gt p2, v0, :cond_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_distance_limit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-le v3, v4, :cond_2

    move v1, v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocityX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ;getScrollX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removeOrRestoreItem"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothRemoveItem(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothRestoreItem(I)V

    :goto_2
    return-void
.end method

.method public resetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->I:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public reuseItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->p:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->U:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->T:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->V:F

    return-void
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    const-string v1, "OSSwipeMenuLayout"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-nez v0, :cond_0

    new-instance v0, Lvj5;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-direct {v0, v2}, Lvj5;-><init>(Lp7a;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    invoke-virtual {v0, v2}, Lwr4;->setScreenWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    const-string v0, "resetCurrentSwipeController: mSwipeLeftHorizontal"

    invoke-static {v1, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-nez v0, :cond_1

    new-instance v0, Lhv8;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-direct {v0, v2}, Lhv8;-><init>(Lp7a;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    invoke-virtual {v0, v2}, Lwr4;->setScreenWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    const-string p0, "resetCurrentSwipeController: mSwipeRightHorizontal"

    invoke-static {v1, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {v0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->K:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    if-le v0, v4, :cond_3

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    if-ge v0, v4, :cond_3

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_6

    iget v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    if-ge v0, v5, :cond_5

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    if-le v0, v5, :cond_5

    goto :goto_2

    :goto_3
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    if-eqz v6, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-gez v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-lez v1, :cond_7

    :goto_4
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u:Z

    :cond_9
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->u:Z

    if-eqz v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_7

    :cond_a
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {v1}, Lvt7;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_7

    :cond_b
    if-eqz v5, :cond_d

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    goto :goto_5

    :cond_c
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    :goto_5
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i(I)V

    goto :goto_7

    :cond_d
    if-eqz v4, :cond_f

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-nez p1, :cond_e

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    goto :goto_6

    :cond_e
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    :goto_6
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->i(I)V

    goto :goto_7

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :goto_7
    iput v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->L:I

    return-void
.end method

.method public setFlashCall(Z)Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->t:Z

    return-object p0
.end method

.method public setFlashCallCallBack(Lav4;)V
    .locals 0

    return-void
.end method

.method public setHandHoldAnim(Lcom/airbnb/lottie/LottieAnimationView;F)V
    .locals 11

    if-nez p1, :cond_0

    const-string p0, "OSSwipeMenuLayout"

    const-string p1, "setHandHoldAnim animationView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_distance_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_flash_call_lottie_text_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v3

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    const/4 v5, 0x0

    cmpg-float v7, v2, v5

    if-gez v7, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    cmpl-float v7, v2, v6

    if-lez v7, :cond_4

    move v2, v6

    :cond_4
    :goto_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Lolb;->l0()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Landroid/graphics/PointF;

    iget v9, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v1, v10

    add-float/2addr v9, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v8, v9, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_5
    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, -0x40000000    # -2.0f

    mul-float/2addr v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v8, v1, v9}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    iget v1, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v4, v1, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p1, v7}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    int-to-float v1, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    add-float/2addr v3, v0

    sub-float/2addr v6, v4

    mul-float/2addr v3, v6

    sub-float v5, v1, v3

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h0:I

    int-to-float p2, p2

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v3, v0

    sub-float/2addr v6, v4

    mul-float/2addr v3, v6

    add-float/2addr p2, v3

    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, v5

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setMenuCreator(Ls7a;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->w:Lp7a;

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnMenuItemClickListener(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$i;)V
    .locals 0

    return-void
.end method

.method public setRtl(Z)Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s()V

    return-object p0
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->r:Z

    return-void
.end method

.method public smoothCloseLeftMenu()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method public smoothCloseMenu(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lwr4;->a(Lvt7;II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->y()V

    return-void
.end method

.method public smoothCloseMenuFling(I)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lwr4;->b(Lvt7;IIIII)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p1}, Lvt7;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p1}, Lvt7;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    if-ge p1, v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    const/4 p1, 0x0

    sput-object p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->y()V

    return-void
.end method

.method public smoothCloseRightMenu()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenLeftMenu(I)V

    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->A:Lvj5;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    :cond_0
    return-void
.end method

.method public smoothOpenMenu()V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    return-void
.end method

.method public smoothOpenRightMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->E:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenRightMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->B:Lhv8;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->v(I)V

    :cond_0
    return-void
.end method

.method public smoothRemoveItem(II)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    if-nez v0, :cond_1

    new-instance v0, Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lvt7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2, p1}, Lwr4;->e(Lvt7;III)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public smoothRestoreItem(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    if-nez v0, :cond_1

    new-instance v0, Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lvt7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lwr4;->f(Lvt7;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public switchMotionEventType(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->j0:I

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->K:Z

    return-void
.end method

.method public u(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->b0:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v(I)V
    .locals 3

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lwr4;->c(Lvt7;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l()V

    return-void
.end method

.method public final w(I)V
    .locals 9

    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->k0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->C:Lwr4;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lwr4;->d(Lvt7;IIIII)V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p1}, Lvt7;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p1}, Lvt7;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    if-le p1, v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->x()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->l()V

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->D:Lvt7;

    invoke-virtual {p0}, Lvt7;->f()V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g0:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->g()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public z()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->G:I

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->g()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->h()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->H:I

    :goto_1
    return-void
.end method
