.class public Lcom/transsion/widgetslib/widget/FootOperationBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/FootOperationBar$m;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$l;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$n;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x96

.field private static final DEFAULT_MAX_VISIBLE_TAB_COUNT:I = 0x5

.field private static final DEFAULT_MIN_VISIBLE_TAB_COUNT:I = 0x3

.field private static final MAX_LETTER_SPACING:F = 0.0f

.field private static final MIN_LETTER_SPACING:F = -0.05f

.field private static final PRESS_TIME:Ljava/lang/String; = "PRESS_TIME"

.field private static final TAG:Ljava/lang/String; = "FootOperationBar"


# instance fields
.field private final PRESS_ANIMATION_DURATION:I

.field private final PRESS_RESPONSE_TIME:I

.field private isFootActionBar:Z

.field private isOnlyScreenPortrait:Z

.field private mAnim:Z

.field private mBgColor:I

.field private mBlurAlp:F

.field private mClickImageTintColor:I

.field private mClickInterval:J

.field private mClickTextColor:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentItemCount:I

.field private mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

.field private mFootItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveClickImageTintColor:Z

.field private mHaveNormalImageTintColor:Z

.field private mHaveTextColor:Z

.field private mImmersive:Z

.field private mInitShow:Z

.field private mIsLandscape:Z

.field private mItemBackgroundRes:I

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

.field private mLastClickTime:J

.field private mMaxVisibleTabCount:I

.field private mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuEnables:[Z

.field private mMoreIconRes:I

.field private mMoreView:Landroid/view/View;

.field private final mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$m;

.field private mNormalImageTintColor:I

.field private mOrientation:I

.field private mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMaxHeight:I

.field mPressAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedIndex:I

.field private mShow:Z

.field private final mTabHitDelegateExpend:I

.field private final mTabParentHitDelegateInsert:I

.field private mTextColor:I

.field private mTintColor:I

.field private mVisibleTabCount:I

.field private needChangeImgColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    const/16 v3, 0x64

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->PRESS_RESPONSE_TIME:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->PRESS_ANIMATION_DURATION:I

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_root:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_container:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootActionBar:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootBarOnlyPortrait:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isOnlyScreenPortrait:Z

    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_need_change_img_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_background:I

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_foot_option_bar_item_bg:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemBackgroundRes:I

    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_icon_tint:I

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_icon_secondary:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_icon_secondary_hios:I

    invoke-static {v4, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_foot_more:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v7, Lcom/transsion/widgetslib/R$drawable;->os_ic_foot_more_hios:I

    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x33

    invoke-static {v7, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_text_primary:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_text_primary_hios:I

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v7, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_comp_color_tab_icon:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_comp_color_tab_icon_hios:I

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lolb;->z(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {v3, v5, v6}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    :goto_0
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_image_color:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveClickImageTintColor:Z

    if-eqz v5, :cond_1

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    :cond_1
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_normal_image_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveNormalImageTintColor:Z

    if-eqz v3, :cond_2

    const/high16 v3, -0x10000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    :cond_2
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveTextColor:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    :cond_3
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    :cond_4
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_max_visible_tab_count:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    :cond_5
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_landscape:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->H(Landroid/content/Context;)V

    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_opt_menu:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->inflateMenu(I)V

    :cond_6
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_init_show:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_immersive:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Lolb;->X(Landroid/content/Context;)Z

    move-result p1

    sget-object p2, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FootOperationBar: isGestureNavigationBarOn =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mImmersive=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mImmersive:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    sget p1, Lcom/transsion/widgetslib/R$id;->os_fob_immersive:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/transsion/widgetslib/widget/FootOperationBar$d;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$d;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_7
    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$m;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$m;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$m;

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isOnlyScreenPortrait:Z

    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    new-array p1, v0, [F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPressAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    filled-new-array {p2, v0}, [Landroid/animation/Keyframe;

    move-result-object p2

    const-string v0, "PRESS_TIME"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->J(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->K(Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    return p0
.end method

.method private getPopupHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    if-eqz p0, :cond_0

    array-length p0, p0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/widget/FootOperationBar;)[Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$m;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$m;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslib/widget/FootOperationBar;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->I(I)Z

    move-result p0

    return p0
.end method

.method private setContainerWidth(I)V
    .locals 5

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mCurrentItemCount:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41880000    # 17.0f

    if-eq p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lolb;->w0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_2

    :cond_3
    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding_3:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_7

    const/high16 p1, 0x42400000    # 48.0f

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_9

    const/high16 p1, 0x43520000    # 210.0f

    goto :goto_1

    :cond_9
    const/high16 p1, 0x42c60000    # 99.0f

    :goto_1
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setImageColorStateList(Landroid/widget/ImageView;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [[I

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    const/4 v1, 0x1

    new-array v2, v2, [I

    aput-object v2, v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->z(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->z(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->F(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$e;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$e;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->S(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->z(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    :goto_1
    return-void
.end method

.method private setTextColorStateList(Landroid/widget/TextView;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [[I

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    const/4 v1, 0x1

    new-array v2, v2, [I

    aput-object v2, v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-static {p1}, Lgcc;->l(Landroid/widget/TextView;)V

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->R(IZ)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->U(Landroid/view/View;F)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->V(Landroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A([I[Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->F(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->y(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 9

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lq47;->c(Landroid/content/Context;Ljava/lang/CharSequence;IFFII)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v4, 0x2

    const v6, -0x42b33333    # -0.05f

    invoke-static/range {v2 .. v8}, Lq47;->c(Landroid/content/Context;Ljava/lang/CharSequence;IFFII)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, -0x42b33333    # -0.05f

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final C()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_root_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->B(Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v1, v5, v0}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$b;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final E(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar$15;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final F(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->G(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final G(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgcc;->f(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->x(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgcc;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->x(Landroid/view/View;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$color;->os_gray_fifth_color:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_size_portrait:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$7;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar$7;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {v3, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v4, p0, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_paddingTop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v4, p0, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    return-object v0
.end method

.method public final H(Landroid/content/Context;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_actionbar_bg:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_actionbar_bg_hios:I

    invoke-static {p1, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_tab_bg:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_tab_bg_hios:I

    invoke-static {p1, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    :goto_0
    sget-object p1, Lolb;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_2

    sget p1, Lcom/transsion/widgetslib/R$id;->os_fob_top_line_stub:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lolb;->w0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-eqz p1, :cond_6

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    move v0, v1

    move p1, v3

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    move v6, v0

    move v0, p1

    move p1, v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public final I(I)Z
    .locals 8

    iget-wide v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v0, p1, :cond_1

    iget-wide v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iput-wide v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mLastClickTime:J

    return v1
.end method

.method public final synthetic J(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->U(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->I(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$n;->onItemClick(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->R(IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic K(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->U(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->I(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$n;->onItemClick(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->R(IZ)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$a;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final M()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getPopupHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    if-lez v1, :cond_0

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public final N(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Ls53;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v4}, Ls53;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$c;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final O()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lolb;->X(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$13;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$13;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/graphics/Paint;ILandroid/graphics/drawable/ShapeDrawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 5

    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$l;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Li34;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/transsion/widgetslib/R$style;->OsFootOptPopupEdgeStyle:I

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    invoke-static {v0, v1}, Lolb;->y0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$k;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$k;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$10;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$10;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lolb;->w0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_0_180:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_270:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_90:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->M()V

    return-void
.end method

.method public final R(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/OSMaskImageView;

    if-ne v1, p1, :cond_3

    if-eqz p2, :cond_1

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->animSelected()V

    invoke-static {v2}, Lgcc;->d(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v4, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    if-ne v4, v1, :cond_6

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->animSelected()V

    invoke-static {v2}, Lgcc;->d(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    :cond_8
    return-void
.end method

.method public final S(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 4

    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v3, v0, v3

    aput-boolean v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V

    return-void
.end method

.method public final T([Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v1, p2, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V

    return-void
.end method

.method public final U(Landroid/view/View;F)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p2, v0, p0

    const-string p0, "alpha"

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final V(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_3

    sget p0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public addSingleItemView(III)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->F(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->O()V

    return-void
.end method

.method public changeFootItem(III)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(IILjava/lang/String;)V

    return-void
.end method

.method public changeFootItem(IILjava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public changeFootItem(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeItemEnable(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->V(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->V(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    sub-int/2addr p1, v0

    aput-boolean p2, v1, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeItems([I[I)V
    .locals 4

    .line 1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mSelectedIndex:I

    .line 12
    array-length v0, p1

    .line 13
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 14
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_3

    .line 15
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->A([I[Ljava/lang/String;I)V

    goto :goto_1

    .line 17
    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    .line 18
    invoke-virtual {p0, p1, p2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->A([I[Ljava/lang/String;I)V

    .line 19
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->F(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 22
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/transsion/widgetslib/widget/FootOperationBar$j;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$j;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->T([Ljava/lang/String;I)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->A([I[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public changeItemsEnable([Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changePopAdapter([I[I)V
    .locals 4

    .line 1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changePopAdapter([I[Ljava/lang/String;)V

    return-void
.end method

.method public changePopAdapter([I[Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 9
    array-length p1, p1

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->T([Ljava/lang/String;I)V

    return-void
.end method

.method public closeDynamicBlur()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    :cond_0
    return-void
.end method

.method public closeDynamicBlurWithRestoreBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public closeFootOperationBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->D()V

    :cond_2
    return-void
.end method

.method public enableMore(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->V(Landroid/view/View;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expendTabTouchDelegate()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->E(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/blur/DynamicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lolb;->y(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setEraseColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemImageView(I)Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    :goto_0
    return-object p0
.end method

.method public getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_stub_fpb_red_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getItemTextView(I)Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPopupMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    return p0
.end method

.method public getPopupMenuWindow()Landroid/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method public hasItemRedPoint(I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public inflateMenu(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public initShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->updateFootBarView()V

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$m;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->H(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->C()V

    return-void
.end method

.method public openFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->L()V

    :cond_0
    return-void
.end method

.method public removeItemView(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->O()V

    :cond_0
    return-void
.end method

.method public resetClickListener()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->E(Landroid/view/View;Landroid/view/View;Z)V

    new-instance v4, Lcom/transsion/widgetslib/widget/FootOperationBar$h;

    invoke-direct {v4, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$h;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez v4, :cond_0

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lg34;

    invoke-direct {v4, p0, v2, v1}, Lg34;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V

    new-instance v5, Lcom/transsion/widgetslib/widget/FootOperationBar$i;

    invoke-direct {v5, p0, v4, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar$i;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restoreTabTouchDelegate()V
    .locals 4

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/Rect;

    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v2, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return-void
.end method

.method public setBlurAlp(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setClickImageTintColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setClickInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickInterval:J

    return-void
.end method

.method public setContainerBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->P()V

    :cond_0
    return-void
.end method

.method public setContainerBackgroundNoOverlay(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public setFootOptBarClickTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setFootOptBarTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setFootTextSize(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setImageTintColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemRedPointState(IZII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/BadgeView;->getRedPointType()I

    move-result p1

    if-eq p1, p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    :cond_1
    if-lez p4, :cond_2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setItemSelectState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->R(IZ)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_1
    return-void
.end method

.method public setNormalImageTintColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$n;

    return-void
.end method

.method public setPopupFullScreenMaxHeight(I)V
    .locals 2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupMaxHeight(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupMaxHeight:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->Q()V

    :cond_0
    return-void
.end method

.method public setTextTintColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTopLineVisible(I)V
    .locals 1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_top_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public toggleDynamicBlur(Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lolb;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lolb;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurredView(Landroid/view/View;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public toggleFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    :goto_0
    return-void
.end method

.method public updateFootBarView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateItemRedPointNum(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-gtz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->N(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final x(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_safe_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mCurrentItemCount:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    shl-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->E(Landroid/view/View;Landroid/view/View;Z)V

    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$f;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$f;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_press:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lh34;

    invoke-direct {v2, p0, v1, p2}, Lh34;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V

    new-instance p2, Lcom/transsion/widgetslib/widget/FootOperationBar$g;

    invoke-direct {p2, p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$g;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final z(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->G(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->y(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
