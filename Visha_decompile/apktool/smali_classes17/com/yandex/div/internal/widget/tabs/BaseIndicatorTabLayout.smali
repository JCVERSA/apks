.class public Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;,
        Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$d;
    }
.end annotation


# static fields
.field public static final H:Landroid/animation/TimeInterpolator;

.field public static final I:Landroidx/core/util/Pools$Pool;

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final UNDEFINED_COLOR:I = -0x1

.field public static final UNDEFINED_RADIUS:F = -1.0f


# instance fields
.field public A:Landroidx/viewpager/widget/ViewPager;

.field public B:Landroidx/viewpager/widget/PagerAdapter;

.field public C:Landroid/database/DataSetObserver;

.field public D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

.field public final E:Lcom/yandex/div/internal/widget/tabs/g;

.field public F:La15;

.field public final G:Landroidx/core/util/Pools$Pool;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

.field public final d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Lbu2;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Z

.field public n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:I

.field public final u:Lbz6;

.field public v:I

.field public w:I

.field public x:I

.field public y:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;

.field public z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->H:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->I:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x12c

    .line 5
    iput-wide v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i:J

    .line 6
    sget-object v0, Lbu2;->b:Lbu2;

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->k:Lbu2;

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->n:I

    .line 8
    new-instance v0, Lbz6;

    invoke-direct {v0, p0}, Lbz6;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->u:Lbz6;

    .line 9
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->G:Landroidx/core/util/Pools$Pool;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 11
    sget-object v1, Lcom/yandex/div/R$styleable;->TabLayout:[I

    sget v2, Lcom/yandex/div/R$style;->Div_Tabs_IndicatorTabLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 12
    sget-object v1, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget v1, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabIndicatorPaddingTop:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 14
    sget v2, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabIndicatorPaddingBottom:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 15
    sget v3, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabTextBoldOnSelection:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->m:Z

    .line 16
    sget v3, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabContentEnd:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->w:I

    .line 17
    sget v3, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabEllipsizeEnabled:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->r:Z

    .line 18
    sget v3, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabScrollPaddingEnabled:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->s:Z

    .line 19
    sget v3, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout_tabScrollPadding:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->t:I

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance p2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    const/4 v3, 0x0

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;-><init>(Landroid/content/Context;IILcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p2, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 23
    sget v1, Lcom/yandex/div/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 24
    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 25
    invoke-virtual {p2, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v(I)V

    .line 26
    sget v1, Lcom/yandex/div/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->y(I)V

    .line 27
    sget v1, Lcom/yandex/div/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t(I)V

    .line 28
    new-instance v1, Lcom/yandex/div/internal/widget/tabs/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/yandex/div/internal/widget/tabs/g;-><init>(Landroid/content/Context;Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V

    iput-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->E:Lcom/yandex/div/internal/widget/tabs/g;

    .line 29
    sget p2, Lcom/yandex/div/R$styleable;->TabLayout_tabPadding:I

    .line 30
    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e:I

    .line 31
    sget v1, Lcom/yandex/div/R$styleable;->TabLayout_tabPaddingStart:I

    invoke-virtual {p3, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e:I

    .line 32
    sget p2, Lcom/yandex/div/R$styleable;->TabLayout_tabPaddingTop:I

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f:I

    .line 33
    sget p2, Lcom/yandex/div/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    .line 34
    sget p2, Lcom/yandex/div/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h:I

    .line 35
    sget p2, Lcom/yandex/div/R$styleable;->TabLayout_tabTextAppearance:I

    sget v1, Lcom/yandex/div/R$style;->Div_Tabs_IndicatorTabLayout_Text:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->j:I

    .line 36
    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    .line 41
    :cond_0
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 43
    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->o(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    .line 44
    :cond_1
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->o:I

    .line 45
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->p:I

    .line 46
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->v:I

    .line 47
    sget p1, Lcom/yandex/div/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    .line 48
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    sget p2, Lcom/yandex/div/R$dimen;->tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->q:I

    .line 51
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->k()V

    return-void

    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    throw p0
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->s(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)I
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabMaxWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;IFZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A(IFZZ)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->v()V

    return-void
.end method

.method public static synthetic e()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->H:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private getTabMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->n:I

    return p0
.end method

.method private getTabMinWidth()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->q:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static o(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private setSelectedTabView(I)V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {v1, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;I)I

    move-result p1

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p4, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->A(IF)V

    :cond_1
    iget-object p4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_3

    invoke-direct {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method public final C(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    const/4 p0, -0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public final D(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div/internal/widget/tabs/TabView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1
    .param p1    # Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V

    return-void
.end method

.method public addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;I)V
    .locals 1
    .param p1    # Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;IZ)V

    return-void
.end method

.method public addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;IZ)V
    .locals 1
    .param p1    # Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;IZ)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->m(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;I)V

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->j()V

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V
    .locals 1
    .param p1    # Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V

    .line 5
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->m(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;I)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->j()V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public bindTypefaceProvider(Lbu2;)V
    .locals 0
    .param p1    # Lbu2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->k:Lbu2;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->u:Lbz6;

    invoke-virtual {p0, p1}, Lbz6;->c(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public final f(Lcom/yandex/div/internal/widget/tabs/TabItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->newTab()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/div/internal/widget/tabs/TabItem;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->l(Ljava/lang/CharSequence;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    return-void
.end method

.method public final g(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;IZ)V
    .locals 2

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {v0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;I)I

    move-result p2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->p()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->E:Lcom/yandex/div/internal/widget/tabs/g;

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/tabs/g;->e(I)V

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getPageChangeListener()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSelectedTabTextColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method public getTabAt(I)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabMode()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final h(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V
    .locals 2

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->p()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->E:Lcom/yandex/div/internal/widget/tabs/g;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/widget/tabs/g;->e(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Lcom/yandex/div/internal/widget/tabs/TabView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/div/internal/widget/tabs/TabItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div/internal/widget/tabs/TabItem;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f(Lcom/yandex/div/internal/widget/tabs/TabItem;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p1, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l(IF)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->H:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    iget-wide v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    new-instance v3, Lpa0;

    invoke-direct {v3, p0}, Lpa0;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    iget-wide v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f(IJ)V

    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->v:I

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->w:I

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {v3, v0, v1, v2, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D(Z)V

    return-void
.end method

.method public final l(IF)I
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->s:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->t:I

    :goto_0
    sub-int/2addr p1, p0

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final m(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->k(I)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-virtual {v0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->k(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lcom/yandex/div/internal/widget/tabs/TabView;)V
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e:I

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f:I

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTabPadding(IIII)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->k:Lbu2;

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/div/internal/widget/tabs/TabView;->g(Lbu2;I)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->F:La15;

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setInputFocusTracker(La15;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTextColorList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->m:Z

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setBoldTextOnSelection(Z)V

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->r:Z

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setEllipsizeEnabled(Z)V

    new-instance v0, Lqa0;

    invoke-direct {v0, p0}, Lqa0;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setMaxWidthProvider(Lcom/yandex/div/internal/widget/tabs/TabView$a;)V

    new-instance v0, Lra0;

    invoke-direct {v0, p0}, Lra0;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setOnUpdateListener(Lcom/yandex/div/internal/widget/tabs/TabView$b;)V

    return-void
.end method

.method public newTab()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->I:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;)V

    :cond_0
    invoke-static {v0, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->r(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->d(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Lcom/yandex/div/internal/widget/tabs/TabView;)Lcom/yandex/div/internal/widget/tabs/TabView;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 4

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->p:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->n:I

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    if-eq v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_5

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onOverScrolled(IIZZ)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->u:Lbz6;

    invoke-virtual {p0, p3}, Lbz6;->a(Z)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->u:Lbz6;

    invoke-virtual {p0}, Lbz6;->b()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    if-eqz p3, :cond_0

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->B()V

    :cond_0
    return-void
.end method

.method public final p()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method public q(Landroid/content/Context;)Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 0

    new-instance p0, Lcom/yandex/div/internal/widget/tabs/TabView;

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/tabs/TabView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final r(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->G:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/TabView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->q(Landroid/content/Context;)Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->n(Lcom/yandex/div/internal/widget/tabs/TabView;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->t(Landroid/widget/TextView;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumWidth(I)V

    return-object v0
.end method

.method public removeAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->w(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->e(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    sget-object v2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->I:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    return-void
.end method

.method public removeTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->removeTabAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->w(I)V

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->e(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    sget-object v3, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->I:Landroidx/core/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-virtual {v4, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->k(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    :cond_4
    return-void
.end method

.method public final synthetic s(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public selectTab(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabAt(I)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->j()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->i:J

    return-void
.end method

.method public setAnimationType(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->r(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;)V

    return-void
.end method

.method public setFocusTracker(La15;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->F:La15;

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->y:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A(IFZZ)V

    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->y(I)V

    return-void
.end method

.method public setTabBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t(I)V

    return-void
.end method

.method public setTabDelimiter(Landroid/graphics/Bitmap;II)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->E:Lcom/yandex/div/internal/widget/tabs/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/g;->g(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setTabIndicatorCornersRadii([F)V
    .locals 0
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u([F)V

    return-void
.end method

.method public setTabIndicatorHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v(I)V

    return-void
.end method

.method public setTabItemSpacing(I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w(I)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->k()V

    :cond_0
    return-void
.end method

.method public setTabPaddings(IIII)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->f:I

    iput p3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->g:I

    iput p4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->h:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->o(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    .line 3
    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->g()Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTextColorList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabsEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/div/internal/widget/tabs/TabView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v2, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V

    iput-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    :cond_1
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;->a()V

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->D:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;

    invoke-direct {v2, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$f;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setOnTabSelectedListener(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;)V

    invoke-virtual {p0, v1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z(Landroidx/viewpager/widget/PagerAdapter;Z)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setOnTabSelectedListener(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->z(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :goto_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public u(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 5

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->B:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->newTab()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->B:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->l(Ljava/lang/CharSequence;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->A:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getTabAt(I)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->x(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->removeAllTabs()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final w(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/TabView;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {v1, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;I)I

    move-result p1

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->d:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->E:Lcom/yandex/div/internal/widget/tabs/g;

    invoke-virtual {v1, p1}, Lcom/yandex/div/internal/widget/tabs/g;->f(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->f()V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->G:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public x(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->y(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V

    return-void
.end method

.method public y(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->y:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->j(I)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_6

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    if-eq v0, p2, :cond_3

    invoke-direct {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setSelectedTabView(I)V

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->f()I

    move-result v1

    if-ne v1, p2, :cond_5

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->j(I)V

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->y:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;->b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    :cond_7
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->y:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;

    if-eqz p0, :cond_8

    invoke-interface {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;->c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final z(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->B:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->B:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    new-instance p2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$d;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C:Landroid/database/DataSetObserver;

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->C:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->v()V

    return-void
.end method
