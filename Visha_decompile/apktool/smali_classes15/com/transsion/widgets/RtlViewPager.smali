.class public Lcom/transsion/widgets/RtlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;,
        Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;,
        Lcom/transsion/widgets/RtlViewPager$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtlViewPager"


# instance fields
.field private canScroll:Z

.field private isScrollEnable:Z

.field private mLastUnspecifiedChildCount:I

.field private mLastUnspecifiedComputedHeight:I

.field private mLastUnspecifiedCurrentItem:I

.field private mLastUnspecifiedWidthSpec:I

.field private mLayoutDirection:I

.field private final mPageChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            "Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedWidthSpec:I

    .line 6
    iput v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedChildCount:I

    .line 7
    iput v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedCurrentItem:I

    .line 8
    iput p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    .line 9
    iput-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->isScrollEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedWidthSpec:I

    .line 15
    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedChildCount:I

    .line 16
    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedCurrentItem:I

    .line 17
    iput p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    .line 18
    iput-boolean p2, p0, Lcom/transsion/widgets/RtlViewPager;->isScrollEnable:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/RtlViewPager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->isRtl()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$001(Lcom/transsion/widgets/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$101(Lcom/transsion/widgets/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private computeUnspecifiedHeight(I)I
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v3, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private hasLayoutRequestedChild()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateUnspecifiedHeightCache()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedWidthSpec:I

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedChildCount:I

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedCurrentItem:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    return-void
.end method

.method private isRtl()Z
    .locals 1

    iget p0, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/transsion/widgets/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/transsion/widgets/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    iget-object p0, p0, Lcom/transsion/widgets/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->getDelegate()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentItem()I
    .locals 2

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 v0, p0, -0x1

    :cond_0
    return v0
.end method

.method public isCanScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->isScrollEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RtlViewPager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedWidthSpec:I

    if-ne p1, v1, :cond_0

    iget v2, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedChildCount:I

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedCurrentItem:I

    if-ne v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->hasLayoutRequestedChild()Z

    move-result v1

    if-nez v1, :cond_0

    iget p2, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/RtlViewPager;->computeUnspecifiedHeight(I)I

    move-result v1

    if-gtz v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->invalidateUnspecifiedHeightCache()V

    goto :goto_1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedWidthSpec:I

    iput p2, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedChildCount:I

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedCurrentItem:I

    iput v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLastUnspecifiedComputedHeight:I

    :goto_1
    move p2, v1

    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/widgets/RtlViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/transsion/widgets/RtlViewPager$SavedState;

    invoke-static {p1}, Lcom/transsion/widgets/RtlViewPager$SavedState;->a(Lcom/transsion/widgets/RtlViewPager$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    invoke-static {p1}, Lcom/transsion/widgets/RtlViewPager$SavedState;->b(Lcom/transsion/widgets/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget p1, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    if-eq v1, p1, :cond_2

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    :cond_1
    iput v1, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgets/RtlViewPager$SavedState;

    iget p0, p0, Lcom/transsion/widgets/RtlViewPager;->mLayoutDirection:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/transsion/widgets/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILpw8;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->isScrollEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->invalidateUnspecifiedHeightCache()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgets/RtlViewPager$ReversingAdapter;-><init>(Lcom/transsion/widgets/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/RtlViewPager;->canScroll:Z

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 5
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/transsion/widgets/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgets/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/transsion/widgets/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/RtlViewPager;->isScrollEnable:Z

    return-void
.end method
