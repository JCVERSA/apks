.class public Lcom/zhpan/indicator/base/BaseIndicatorView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/zhpan/indicator/base/IIndicator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u00085\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0008\u0006*\u0001_\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\r\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u0017\u0010 \u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008 \u0010\u001dJ\u0015\u0010\"\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\"\u0010\u0014J\r\u0010#\u001a\u00020\u0007\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008%\u0010\u001aJ\u0015\u0010\'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\'\u0010\u001dJ\u0017\u0010)\u001a\u00020\u000e2\u0008\u0008\u0001\u0010(\u001a\u00020\u0007\u00a2\u0006\u0004\u0008)\u0010\u0014J\r\u0010*\u001a\u00020\u0007\u00a2\u0006\u0004\u0008*\u0010$J\u0017\u0010+\u001a\u00020\u000e2\u0008\u0008\u0001\u0010(\u001a\u00020\u0007\u00a2\u0006\u0004\u0008+\u0010\u0014J\r\u0010,\u001a\u00020\u000c\u00a2\u0006\u0004\u0008,\u0010\u001aJ\u0015\u0010.\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000c\u00a2\u0006\u0004\u0008.\u0010\u001dJ\r\u0010/\u001a\u00020\u0007\u00a2\u0006\u0004\u0008/\u0010$J\u0015\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0007\u00a2\u0006\u0004\u00081\u00102J!\u00104\u001a\u00020\u00002\u0008\u0008\u0001\u0010(\u001a\u00020\u00072\u0008\u0008\u0001\u00103\u001a\u00020\u0007\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u00020\u00002\u0008\u0008\u0001\u00106\u001a\u00020\u000c\u00a2\u0006\u0004\u00087\u00108J!\u00107\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u000c2\u0008\u0008\u0001\u00109\u001a\u00020\u000c\u00a2\u0006\u0004\u00087\u0010:J\u0015\u0010<\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u000c\u00a2\u0006\u0004\u0008<\u00108J\r\u0010=\u001a\u00020\u0007\u00a2\u0006\u0004\u0008=\u0010$J\u0015\u0010?\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0007\u00a2\u0006\u0004\u0008?\u00102J\u0015\u0010A\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0007\u00a2\u0006\u0004\u0008A\u00102J\u0015\u0010C\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u000c\u00a2\u0006\u0004\u0008C\u00108J\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020H\u00a2\u0006\u0004\u0008F\u0010JJ\u0015\u0010L\u001a\u00020\u000e2\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008O\u0010\u0014J\u0017\u0010R\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008R\u0010SR\"\u0010X\u001a\u00020P8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010SR\u0018\u0010[\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0014\u0010b\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0011\u0010\u001f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u001a\u00a8\u0006d"
    }
    d2 = {
        "Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "Landroid/view/View;",
        "Lcom/zhpan/indicator/base/IIndicator;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "position",
        "",
        "positionOffset",
        "Lzfb;",
        "a",
        "(IF)V",
        "b",
        "()V",
        "onPageSelected",
        "(I)V",
        "positionOffsetPixels",
        "onPageScrolled",
        "(IFI)V",
        "notifyDataChanged",
        "getNormalSlideWidth",
        "()F",
        "normalSliderWidth",
        "setNormalSlideWidth",
        "(F)V",
        "getCheckedSlideWidth",
        "checkedSliderWidth",
        "setCheckedSlideWidth",
        "currentPosition",
        "setCurrentPosition",
        "getCurrentPosition",
        "()I",
        "getIndicatorGap",
        "indicatorGap",
        "setIndicatorGap",
        "normalColor",
        "setCheckedColor",
        "getCheckedColor",
        "setNormalColor",
        "getSlideProgress",
        "slideProgress",
        "setSlideProgress",
        "getPageSize",
        "pageSize",
        "setPageSize",
        "(I)Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "selectedColor",
        "setSliderColor",
        "(II)Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "sliderWidth",
        "setSliderWidth",
        "(F)Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "selectedSliderWidth",
        "(FF)Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "sliderGap",
        "setSliderGap",
        "getSlideMode",
        "slideMode",
        "setSlideMode",
        "indicatorStyle",
        "setIndicatorStyle",
        "sliderHeight",
        "setSliderHeight",
        "Landroidx/viewpager/widget/ViewPager;",
        "viewPager",
        "setupWithViewPager",
        "(Landroidx/viewpager/widget/ViewPager;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager2",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
        "",
        "showIndicatorWhenOneItem",
        "(Z)V",
        "state",
        "onPageScrollStateChanged",
        "Lrz4;",
        "options",
        "setIndicatorOptions",
        "(Lrz4;)V",
        "Lrz4;",
        "getMIndicatorOptions",
        "()Lrz4;",
        "setMIndicatorOptions",
        "mIndicatorOptions",
        "c",
        "Landroidx/viewpager/widget/ViewPager;",
        "mViewPager",
        "d",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "mViewPager2",
        "com/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1",
        "e",
        "Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;",
        "mOnPageChangeCallback",
        "getCheckedSliderWidth",
        "indicator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public b:Lrz4;

.field public c:Landroidx/viewpager/widget/ViewPager;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public final e:Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;-><init>(Lcom/zhpan/indicator/base/BaseIndicatorView;)V

    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->e:Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;

    new-instance p1, Lrz4;

    invoke-direct {p1}, Lrz4;-><init>()V

    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 4

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0}, Lrz4;->j()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0}, Lrz4;->j()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getPageSize()I

    move-result v0

    rem-int v0, p1, v0

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getPageSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v0, v2

    const/4 v0, 0x0

    if-gez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setCurrentPosition(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setSlideProgress(F)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setCurrentPosition(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setSlideProgress(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setCurrentPosition(I)V

    invoke-virtual {p0, p2}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setSlideProgress(F)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setCurrentPosition(I)V

    invoke-virtual {p0, p2}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setSlideProgress(F)V

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->c:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->c:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_2

    invoke-static {}, Ly45;->v()V

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Ly45;->v()V

    :cond_3
    const-string v1, "mViewPager!!.adapter!!"

    invoke-static {v0, v1}, Ly45;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setPageSize(I)Lcom/zhpan/indicator/base/BaseIndicatorView;

    :cond_4
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->e:Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_5
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->e:Lcom/zhpan/indicator/base/BaseIndicatorView$mOnPageChangeCallback$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_6
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->d:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_7

    invoke-static {}, Ly45;->v()V

    :cond_7
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Ly45;->v()V

    :cond_8
    const-string v1, "mViewPager2!!.adapter!!"

    invoke-static {v0, v1}, Ly45;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setPageSize(I)Lcom/zhpan/indicator/base/BaseIndicatorView;

    :cond_9
    return-void
.end method

.method public final getCheckedColor()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->a()I

    move-result p0

    return p0
.end method

.method public final getCheckedSlideWidth()F
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->b()F

    move-result p0

    return p0
.end method

.method public final getCheckedSliderWidth()F
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->b()F

    move-result p0

    return p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->c()I

    move-result p0

    return p0
.end method

.method public final getIndicatorGap()F
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->l()F

    move-result p0

    return p0
.end method

.method public final getMIndicatorOptions()Lrz4;
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    return-object p0
.end method

.method public final getNormalSlideWidth()F
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->f()F

    move-result p0

    return p0
.end method

.method public final getPageSize()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->h()I

    move-result p0

    return p0
.end method

.method public final getSlideMode()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->j()I

    move-result p0

    return p0
.end method

.method public final getSlideProgress()F
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0}, Lrz4;->k()F

    move-result p0

    return p0
.end method

.method public notifyDataChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->b()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getSlideMode()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getPageSize()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zhpan/indicator/base/BaseIndicatorView;->a(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getSlideMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setCurrentPosition(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setSlideProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCheckedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->o(I)V

    return-void
.end method

.method public final setCheckedSlideWidth(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->p(F)V

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->q(I)V

    return-void
.end method

.method public final setIndicatorGap(F)V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->A(F)V

    return-void
.end method

.method public setIndicatorOptions(Lrz4;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    return-void
.end method

.method public final setIndicatorStyle(I)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->r(I)V

    return-object p0
.end method

.method public final setMIndicatorOptions(Lrz4;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    return-void
.end method

.method public final setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->s(I)V

    return-void
.end method

.method public final setNormalSlideWidth(F)V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->t(F)V

    return-void
.end method

.method public final setPageSize(I)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->v(I)V

    return-object p0
.end method

.method public final setSlideMode(I)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->x(I)V

    return-object p0
.end method

.method public final setSlideProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->y(F)V

    return-void
.end method

.method public final setSliderColor(II)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1, p2}, Lrz4;->z(II)V

    return-object p0
.end method

.method public final setSliderGap(F)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->A(F)V

    return-object p0
.end method

.method public final setSliderHeight(F)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->B(F)V

    return-object p0
.end method

.method public final setSliderWidth(F)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1}, Lrz4;->C(F)V

    return-object p0
.end method

.method public final setSliderWidth(FF)Lcom/zhpan/indicator/base/BaseIndicatorView;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {v0, p1, p2}, Lrz4;->D(FF)V

    return-object p0
.end method

.method public final setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->c:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->notifyDataChanged()V

    return-void
.end method

.method public final setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "viewPager2"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->notifyDataChanged()V

    return-void
.end method

.method public final showIndicatorWhenOneItem(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/indicator/base/BaseIndicatorView;->b:Lrz4;

    invoke-virtual {p0, p1}, Lrz4;->w(Z)V

    return-void
.end method
