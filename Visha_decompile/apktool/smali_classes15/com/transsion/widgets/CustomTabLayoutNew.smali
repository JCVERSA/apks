.class public Lcom/transsion/widgets/CustomTabLayoutNew;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;,
        Lcom/transsion/widgets/CustomTabLayoutNew$Tab;,
        Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayoutNew$TabView;,
        Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;,
        Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;,
        Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;,
        Lcom/transsion/widgets/CustomTabLayoutNew$TabIndicatorGravity;,
        Lcom/transsion/widgets/CustomTabLayoutNew$TabGravity;,
        Lcom/transsion/widgets/CustomTabLayoutNew$LabelVisibility;,
        Lcom/transsion/widgets/CustomTabLayoutNew$Mode;
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
            "Lcom/transsion/widgets/CustomTabLayoutNew$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final contentInsetStart:I

.field private currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customTabDrawable:I

.field private customTabHeight:I

.field private customTabSelectedIconColor:I

.field private customTabSelectedSize:I

.field private final customTabTextColor:Landroid/content/res/ColorStateList;

.field private customTabUnSelectedIconColor:I

.field private customTabUnSelectedSize:I

.field inlineLabel:Z

.field private final mHavePressEffect:Z

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstLevelTab:Z

.field private mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mode:I

.field private pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field redPoint:Z

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private setupViewPagerImplicitly:Z

.field private final showBottomLine:Z

.field final slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;
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
            "Lcom/transsion/widgets/CustomTabLayoutNew$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgets/CustomTabLayoutNew$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unSelectedTabTextSize:F

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPool:Landroidx/core/util/Pools$Pool;

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
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "CustomTabLayout"

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->TAG:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mNames:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mHavePressEffect:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabViewContentBounds:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    .line 10
    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabMaxWidth:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 15
    new-instance v2, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-direct {v2, p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    .line 16
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    invoke-super {p0, v2, v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 18
    sget-object v3, Lcom/transsion/common/R$styleable;->CustomTabLayout:[I

    sget v4, Lcom/transsion/common/R$style;->customTablayout:I

    invoke-virtual {v0, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 19
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorWidth:I

    .line 20
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 21
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setSelectedIndicatorWidth(I)V

    .line 22
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorHeight:I

    .line 23
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 24
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 25
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorColor:I

    .line 26
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 27
    invoke-virtual {v2, p3}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 28
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicator:I

    .line 29
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 30
    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorGravity:I

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 33
    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabIndicatorGravity(I)V

    .line 34
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabIndicatorFullWidth:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTabIndicatorFullWidth(Z)V

    .line 35
    sget p3, Lcom/transsion/common/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingBottom:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingTop:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingEnd:I

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingStart:I

    .line 36
    sget v2, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingStart:I

    .line 37
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingStart:I

    .line 38
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingTop:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingTop:I

    .line 39
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingEnd:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingEnd:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingEnd:I

    .line 40
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabPaddingBottom:I

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingBottom:I

    .line 41
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingBottom:I

    .line 42
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabRippleColor:I

    .line 43
    invoke-static {v0, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/16 p3, 0x12c

    .line 44
    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorAnimationDuration:I

    .line 45
    iput v5, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->requestedTabMinWidth:I

    .line 46
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabMaxWidth:I

    .line 47
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->requestedTabMaxWidth:I

    .line 48
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabBackground:I

    .line 49
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabBackgroundResId:I

    .line 50
    iput v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->contentInsetStart:I

    .line 51
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabMode:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    .line 52
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabGravity:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    .line 53
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabInlineLabel:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->inlineLabel:Z

    .line 54
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_showBadgeViewRedPoint:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->redPoint:Z

    .line 55
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabUnboundedRipple:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->unboundedRipple:Z

    .line 56
    sget p1, Lcom/transsion/common/R$styleable;->CustomTabLayout_showBgBottomLine:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->showBottomLine:Z

    .line 57
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabTextColor:Landroid/content/res/ColorStateList;

    .line 58
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabSelectedIconColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabSelectedIconColor:I

    .line 59
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabUnSelectedIconColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabUnSelectedIconColor:I

    .line 60
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabSelectedBackgroundDrawable:I

    sget v1, Lcom/transsion/common/R$drawable;->bg_tab:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabDrawable:I

    .line 61
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabSelectedSize:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabSelectedSize:I

    .line 62
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabUnSelectedSize:I

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabUnSelectedSize:I

    .line 63
    sget p3, Lcom/transsion/common/R$styleable;->CustomTabLayout_customTabHeight:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabHeight:I

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/common/R$dimen;->os_tab_second_level_title_size_new:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextSize:F

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 67
    sget p3, Lcom/transsion/common/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollableTabMinWidth:I

    if-eqz p1, :cond_0

    .line 68
    sget p1, Lcom/transsion/common/R$drawable;->tablayout_divider_bg:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->applyModeAndGravity()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabDrawable:I

    return p0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->newTab()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setCustomView(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setSelected(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->calculateScrollXForTab(IF)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->ensureScrollAnimator()V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setScrollPosition(IFZ)V

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
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

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
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->contentInsetStart:I

    iget v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v0, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    if-ne v0, v1, :cond_3

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->applyGravityForModeScrollable(I)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateTabViews(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabHeight:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabSelectedIconColor:I

    return p0
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

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

.method private configureTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;I)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setPosition(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setPosition(I)V

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

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Lcom/transsion/widgets/CustomTabLayoutNew$TabView;
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew;Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->c(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setupInitialState()V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabSelectedSize:I

    return p0
.end method

.method private dispatchTabReselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;->onTabReselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;->onTabSelected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;->onTabUnselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/CustomTabLayoutNew;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private ensureScrollAnimator()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgets/CustomTabLayoutNew$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$1;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabUnSelectedIconColor:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/CustomTabLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabUnSelectedSize:I

    return p0
.end method

.method private getDefaultHeight()I
    .locals 4
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->inlineLabel:Z

    if-nez v0, :cond_1

    const/16 p0, 0x48

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIsFirstLevelTab:Z

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

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollableTabMinWidth:I

    :goto_1
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

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

.method public static bridge synthetic h(Lcom/transsion/widgets/CustomTabLayoutNew;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgets/CustomTabLayoutNew;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->reset()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

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

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIsFirstLevelTab:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_second_level_title_size_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextMultiLineSize:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_second_level_title_size_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/common/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextMultiLineSize:F

    :goto_0
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    .line 8
    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    :cond_1
    if-eqz p1, :cond_4

    .line 9
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;->reset()V

    .line 13
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 14
    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->currentVpSelectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    .line 15
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    .line 16
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew;->setPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 19
    :cond_4
    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 21
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

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

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

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
.method public addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;I)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;IZ)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-ne v0, p0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomTabLayoutNew;->configureTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTabView(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->select()V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;Z)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createTabFromPool()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 0

    sget-object p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

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

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    return p0
.end method

.method public getTabIndicatorGravity()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorGravity:I

    return p0
.end method

.method public getTabMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabMaxWidth:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public hasUnboundedRipple()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->unboundedRipple:Z

    return p0
.end method

.method public isFirstLevelTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIsFirstLevelTab:Z

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTextAppearance()V

    return-void
.end method

.method public isInlineLabel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->inlineLabel:Z

    return p0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorFullWidth:Z

    return p0
.end method

.method public newTab()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->createTabFromPool()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object v0

    iput-object p0, v0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->createTabView(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;ZZ)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->setupViewPagerImplicitly:Z

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
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {v1, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->c(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;Landroid/graphics/Canvas;)V

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

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabCount()I

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getDefaultHeight()I

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

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->requestedTabMaxWidth:I

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
    iput v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabMaxWidth:I

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

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

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeAllTabs()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->newTab()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_0
    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setIcon(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :cond_1
    invoke-virtual {v3, v2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setPosition(I)V

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    :cond_3
    return-void
.end method

.method public releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Z
    .locals 0

    sget-object p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllTabs()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->reset()V

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeTabAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeTabViewAt(I)V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->reset()V

    invoke-virtual {p0, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->releaseFromTabPool(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Z

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {v4, v3}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    :cond_4
    return-void
.end method

.method public selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;Z)V
    .locals 4
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->dispatchTabReselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    .line 4
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v2, p2, v3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 9
    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabView(I)V

    .line 10
    :cond_4
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedTab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v0, :cond_5

    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->dispatchTabUnselected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->dispatchTabSelected(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setCustomTabDrawable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabDrawable:I

    return-void
.end method

.method public setCustomTabSelectedIconColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabSelectedIconColor:I

    return-void
.end method

.method public setCustomTabUnSelectedIconColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->customTabUnSelectedIconColor:I

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

.method public setIcons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mIcons:Ljava/util/List;

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->inlineLabel:Z

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateOrientation()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->applyModeAndGravity()V

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

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setInlineLabel(Z)V

    return-void
.end method

.method public setNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mNames:Ljava/util/List;

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->removeOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->selectedListener:Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$OnTabSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayoutNew$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public setPageChangeListener(Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pageChangeListener:Lcom/transsion/widgets/CustomTabLayoutNew$TabLayoutOnPageChangeListener;

    return-void
.end method

.method public setPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    if-nez p2, :cond_1

    new-instance p2, Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$PagerAdapterObserver;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew;)V

    iput-object p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->populateFromPagerAdapter()V

    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->ensureScrollAnimator()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_5

    .line 3
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    iget-object p4, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomTabLayoutNew;->calculateScrollXForTab(IF)I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gez p1, :cond_3

    move p1, p4

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_4

    move p1, p2

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p4}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabView(I)V

    :cond_5
    :goto_1
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
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

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
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

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

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorGravity:I

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabChildEnable(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

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

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

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

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabIndicatorFullWidth:Z

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/transsion/widgets/CustomTabLayoutNew;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextSize:F

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextMultiLineSize:F

    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method public setUnselectedTabTextSize(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->unSelectedTabTextSize:F

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabScrollRange()I

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
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setShowBadgeView(Z)V

    return-void
.end method

.method public showBadgeView(IZI)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setShowBadgeView(ZI)V

    return-void
.end method

.method public updateBadgeView(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setShowBadgeView(Z)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setBadgeViewNum(I)V

    return-void
.end method

.method public updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew;->slidingTabIndicator:Lcom/transsion/widgets/CustomTabLayoutNew$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
