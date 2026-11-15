.class public Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;,
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$a;
    }
.end annotation


# static fields
.field private static final INSET_STRETCH_PERCENT:F = 0.14f

.field private static final ITEM_AMOUNT_THRESHOLD_SECOND_HOME:F = 2.0f

.field private static final ITEM_AMOUNT_THRESHOLD_STRETCH_PERCENT:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "OSTabLayout"


# instance fields
.field private mBottomLine:Landroid/view/View;

.field private mIsFirstLevelTab:Z

.field private mIsSecondHome:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$a;

.field private mLlIconContainer:Landroid/widget/LinearLayout;

.field private mLlTabIconContainer:Landroid/view/ViewGroup;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOverflowButton:Landroid/widget/ImageView;

.field private mOverflowState:[Z

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/ListPopupWindow;

.field private mShowBottomLine:Z

.field private mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private mTabPaddingStart:I

.field private mTabScrollPaddingStart:I

.field private mTabTextSize:F

.field private mTvLeftMask:Landroid/widget/TextView;

.field private mTvRightMask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_tab_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osShowBottomLine:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    .line 7
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osIsFirstLevelTab:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    .line 8
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osTabLayoutTextSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabTextSize:F

    .line 9
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 11
    sget v2, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osTabLayoutBackground:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    sget p2, Lcom/transsion/widgetslib/R$attr;->tabPaddingStart:I

    filled-new-array {p2}, [I

    move-result-object p2

    .line 17
    sget v0, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_padding_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabPaddingStart:I

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_scroll_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    .line 21
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout_underline:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    .line 22
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_0
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 27
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->bindOSTabLayout(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    .line 28
    sget p1, Lcom/transsion/widgetslib/R$id;->overFlowButton:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    .line 29
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    .line 30
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_left_mask:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    .line 32
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_right_mask:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->isFirstLevelTab(Z)V

    .line 34
    iget p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabTextSize:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 35
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextSize(F)V

    .line 36
    :cond_1
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_tab_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    .line 37
    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->q0(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)[Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Landroid/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->g()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->j(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-lez v0, :cond_4

    if-eqz v4, :cond_4

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    move v0, v3

    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v2, v4, :cond_6

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    :cond_6
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_7

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    return v1
.end method

.method public getLeftMaskView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRightMaskView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTabLayout()Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    return-object p0
.end method

.method public final h(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleInsets()Z
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v5

    :goto_2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space300:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_pad_space250:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_4
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x258

    if-gt v1, v4, :cond_9

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    if-le v1, v7, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_8
    :goto_5
    move v7, v1

    goto/16 :goto_9

    :cond_9
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-ne v1, v5, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    if-le v1, v7, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_three_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    if-le v1, v7, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_6
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    if-le v1, v7, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_start_scrollable_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v7, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    :goto_7
    sub-int/2addr v1, v7

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_start_scrollable:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v7, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    goto :goto_7

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move v10, v7

    move v7, v1

    move v1, v10

    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lolb;->h(Landroid/content/Context;I)I

    move-result v6

    if-le v8, v6, :cond_e

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40400000    # 3.0f

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_e

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v6

    if-ne v6, v5, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v6, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    :goto_a
    move v7, v1

    goto :goto_b

    :cond_e
    iget-boolean v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_sh:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_a

    :cond_f
    :goto_b
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_edge_distance:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_margin_end:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v1, v6

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v6

    if-ne v6, v5, :cond_14

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v6

    if-eq v6, v4, :cond_13

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v4

    if-ne v4, v3, :cond_11

    goto :goto_d

    :cond_11
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_pad_space600:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_pad_space200:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_12
    :goto_c
    move v1, v7

    goto :goto_e

    :cond_13
    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_pad_space900:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_c

    :cond_14
    :goto_e
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_15

    move v3, v5

    goto :goto_f

    :cond_15
    move v3, v2

    :goto_f
    if-eqz v3, :cond_16

    move v4, v1

    goto :goto_10

    :cond_16
    move v4, v2

    :goto_10
    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_11

    :cond_17
    move v3, v1

    :goto_11
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    if-eq v4, v6, :cond_18

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v2, v6, v4, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v0, v5

    :cond_18
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    if-ne v7, v4, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    if-eq v1, v4, :cond_19

    goto :goto_12

    :cond_19
    move v5, v0

    goto :goto_13

    :cond_1a
    :goto_12
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v2, v7, v0, v3, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_13
    return v5
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final j(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsSecondHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->g()Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleInsets()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->g()Z

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setCustomMenuView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOverFlowMenuItem(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->h(Ljava/util/List;)V

    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Llb7;)V

    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$style;->OSTabOverflow:I

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lolb;->y0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public setOverflowButtonVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOverflowImage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOverflowItemState(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    if-eqz p0, :cond_0

    aput-boolean p2, p0, p1

    :cond_0
    return-void
.end method

.method public setShowBottomLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
