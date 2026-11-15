.class public Lcom/transsion/widgets/CustomTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;,
        Lcom/transsion/widgets/CustomTabLayout$Tab;,
        Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayout$TabView;,
        Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;,
        Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;,
        Lcom/transsion/widgets/CustomTabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayout$PagerAdapterObserver;,
        Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayout$TabIndicatorGravity;,
        Lcom/transsion/widgets/CustomTabLayout$TabGravity;,
        Lcom/transsion/widgets/CustomTabLayout$LabelVisibility;,
        Lcom/transsion/widgets/CustomTabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x38
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT_SECOND_PAGE:I = 0x36
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field private static final MIN_INDICATOR_WIDTH:I = 0x18
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgets/CustomTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

.field private final contentInsetStart:I

.field private currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customTabSelectedTextColor:I

.field private final customTabTextColor:Landroid/content/res/ColorStateList;

.field inlineLabel:Z

.field private final mHavePressEffect:Z

.field private mIsFirstLevelTab:Z

.field mode:I

.field private pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field redPoint:Z

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private setupViewPagerImplicitly:Z

.field private final showBottomLine:Z

.field public final slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgets/CustomTabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgets/CustomTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unSelectedTabTextSize:F

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/widgets/CustomTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "CustomTabLayout"

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->mHavePressEffect:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabMaxWidth:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    new-instance v2, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-direct {v2, p0, v0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;-><init>(Lcom/transsion/widgets/CustomTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    .line 14
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    invoke-super {p0, v2, v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    sget-object v3, Lcom/transsion/common/R$styleable;->CustomTabLayout:[I

    sget v4, Lcom/transsion/common/R$style;->customTablayout:I

    invoke-virtual {v0, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorWidth:I

    .line 18
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 19
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorWidth(I)V

    .line 20
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorHeight:I

    .line 21
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 22
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 23
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorColor:I

    .line 24
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 25
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 26
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicator:I

    .line 27
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 28
    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 29
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorGravity:I

    .line 30
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 31
    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 32
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorFullWidth:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayout;->setTabIndicatorFullWidth(Z)V

    .line 33
    sget p3, Lcom/transsion/common/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingBottom:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingTop:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingEnd:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingStart:I

    .line 34
    sget v2, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingStart:I

    .line 35
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingStart:I

    .line 36
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingTop:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingTop:I

    .line 37
    sget p3, Lcom/transsion/common/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingEnd:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingEnd:I

    .line 38
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingBottom:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingBottom:I

    .line 39
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingBottom:I

    .line 40
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabRippleColor:I

    .line 41
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/16 p3, 0x12c

    .line 42
    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorAnimationDuration:I

    .line 43
    iput v5, p0, Lcom/transsion/widgets/CustomTabLayout;->requestedTabMinWidth:I

    .line 44
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabMaxWidth:I

    .line 45
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->requestedTabMaxWidth:I

    .line 46
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabBackground:I

    .line 47
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabBackgroundResId:I

    .line 48
    iput v1, p0, Lcom/transsion/widgets/CustomTabLayout;->contentInsetStart:I

    .line 49
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabMode:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    .line 50
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabGravity:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    .line 51
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabInlineLabel:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->inlineLabel:Z

    .line 52
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_showBadgeViewRedPoint:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->redPoint:Z

    .line 53
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabUnboundedRipple:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->unboundedRipple:Z

    .line 54
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_showBgBottomLine:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->showBottomLine:Z

    .line 55
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgets/CustomTabLayout;->customTabTextColor:Landroid/content/res/ColorStateList;

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/common/R$dimen;->os_tab_second_level_title_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextSize:F

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 59
    sget p3, Lcom/transsion/common/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollableTabMinWidth:I

    if-eqz p1, :cond_0

    .line 60
    sget p1, Lcom/transsion/common/R$drawable;->tablayout_divider_bg:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->applyModeAndGravity()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomTabLayout;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->customTabTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayout$Tab;

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomTabLayout$Tab;

    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setCustomView(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayout$Tab;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayout$Tab;->view:Lcom/transsion/widgets/CustomTabLayout$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setSelected(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v1}, Lcom/transsion/widgets/CustomTabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->ensureScrollAnimator()V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgets/CustomTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->contentInsetStart:I

    iget v3, p0, Lcom/transsion/widgets/CustomTabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v0, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    if-ne v0, v1, :cond_3

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->applyGravityForModeScrollable(I)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->updateTabViews(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_5

    add-int/2addr p1, p2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method

.method private configureTab(Lcom/transsion/widgets/CustomTabLayout$Tab;I)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/widgets/CustomTabLayout$Tab;)Lcom/transsion/widgets/CustomTabLayout$TabView;
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgets/CustomTabLayout$TabView;-><init>(Lcom/transsion/widgets/CustomTabLayout;Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->a(Lcom/transsion/widgets/CustomTabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->c(Lcom/transsion/widgets/CustomTabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->a(Lcom/transsion/widgets/CustomTabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgets/CustomTabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/CustomTabLayout$1;-><init>(Lcom/transsion/widgets/CustomTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 4
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayout;->inlineLabel:Z

    if-nez v0, :cond_1

    const/16 p0, 0x48

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayout;->mIsFirstLevelTab:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x38

    goto :goto_1

    :cond_2
    const/16 p0, 0x36

    :goto_1
    return p0
.end method

.method private getTabMinWidth()I
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollableTabMinWidth:I

    :goto_1
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

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

.method private removeTabViewAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->reset()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTextAppearance()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mIsFirstLevelTab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextMultiLineSize:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextMultiLineSize:F

    :goto_0
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    .line 10
    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 11
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/transsion/widgets/CustomTabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 15
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 16
    new-instance v0, Lcom/transsion/widgets/CustomTabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/transsion/widgets/CustomTabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    .line 17
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    .line 18
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgets/CustomTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;-><init>(Lcom/transsion/widgets/CustomTabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 23
    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayout;->adapterChangeListener:Lcom/transsion/widgets/CustomTabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 24
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 25
    :cond_6
    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgets/CustomTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 27
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/widgets/CustomTabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayout$Tab;

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;I)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;IZ)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayout$Tab;->parent:Lcom/transsion/widgets/CustomTabLayout;

    if-ne v0, p0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomTabLayout;->configureTab(Lcom/transsion/widgets/CustomTabLayout$Tab;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addTabView(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;Z)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createTabFromPool()Lcom/transsion/widgets/CustomTabLayout$Tab;
    .locals 0

    sget-object p0, Lcom/transsion/widgets/CustomTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/widgets/CustomTabLayout$Tab;

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout$Tab;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

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

.method public getLeftFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/widgets/CustomTabLayout$Tab;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    return p0
.end method

.method public getTabIndicatorGravity()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorGravity:I

    return p0
.end method

.method public getTabMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabMaxWidth:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public hasUnboundedRipple()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayout;->unboundedRipple:Z

    return p0
.end method

.method public isFirstLevelTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->mIsFirstLevelTab:Z

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->setTextAppearance()V

    return-void
.end method

.method public isInlineLabel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayout;->inlineLabel:Z

    return p0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorFullWidth:Z

    return p0
.end method

.method public newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->createTabFromPool()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v0

    iput-object p0, v0, Lcom/transsion/widgets/CustomTabLayout$Tab;->parent:Lcom/transsion/widgets/CustomTabLayout;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->createTabView(Lcom/transsion/widgets/CustomTabLayout$Tab;)Lcom/transsion/widgets/CustomTabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/widgets/CustomTabLayout$Tab;->view:Lcom/transsion/widgets/CustomTabLayout$TabView;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayout;->setupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/widgets/CustomTabLayout$TabView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-static {v1, p1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->c(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabCount()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_1
    iput v1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabMaxWidth:I

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

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

    invoke-static {p0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_7
    :goto_3
    return-void
.end method

.method public populateFromPagerAdapter()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method public releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayout$Tab;)Z
    .locals 0

    sget-object p0, Lcom/transsion/widgets/CustomTabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllTabs()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$Tab;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->reset()V

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomTabLayout;->releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayout$Tab;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayout$Tab;->parent:Lcom/transsion/widgets/CustomTabLayout;

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->removeTabAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->removeTabViewAt(I)V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->reset()V

    invoke-virtual {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayout$Tab;)Z

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/CustomTabLayout$Tab;

    invoke-virtual {v4, v3}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomTabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method public selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayout;->selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;Z)V
    .locals 4
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->dispatchTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    .line 4
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v2, p2, v3}, Lcom/transsion/widgets/CustomTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 9
    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabView(I)V

    .line 10
    :cond_4
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedTab:Lcom/transsion/widgets/CustomTabLayout$Tab;

    if-eqz v0, :cond_5

    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->dispatchTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->dispatchTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->inlineLabel:Z

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->updateOrientation()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->applyModeAndGravity()V

    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->selectedListener:Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public setPageChangeListener(Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayout$TabLayoutOnPageChangeListener;

    return-void
.end method

.method public setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    new-instance p2, Lcom/transsion/widgets/CustomTabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/CustomTabLayout$PagerAdapterObserver;-><init>(Lcom/transsion/widgets/CustomTabLayout;)V

    iput-object p2, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->ensureScrollAnimator()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgets/CustomTabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorGravity:I

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabChildEnable(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorFullWidth:Z

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/transsion/widgets/CustomTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextSize:F

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabTextMultiLineSize:F

    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setUnselectedTabTextSize(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout;->unSelectedTabTextSize:F

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showBadgeView(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setShowBadgeView(Z)V

    return-void
.end method

.method public showBadgeView(IZI)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setShowBadgeView(ZI)V

    return-void
.end method

.method public updateBadgeView(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setShowBadgeView(Z)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setBadgeViewNum(I)V

    return-void
.end method

.method public updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayout;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
