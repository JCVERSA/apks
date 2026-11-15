.class public Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;
.super Lcom/yandex/div/internal/widget/tabs/RtlViewPager;
.source "SourceFile"

# interfaces
.implements Lve7;


# instance fields
.field public final i:Lbz6;

.field public j:Landroidx/customview/widget/ViewDragHelper;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/util/Set;

.field public p:Lue7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lbz6;

    invoke-direct {p1, p0}, Lbz6;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->i:Lbz6;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->k:Z

    .line 5
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->l:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->m:Z

    .line 7
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->n:Z

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->m:Z

    return p1
.end method


# virtual methods
.method public final b(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->j:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->m:Z

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->j:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->o:Ljava/util/Set;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->k:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->n:Z

    :cond_3
    iget-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->m:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->n:Z

    if-nez p1, :cond_4

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->k:Z

    if-eqz p0, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->i:Lbz6;

    invoke-virtual {p0, p1}, Lbz6;->c(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public getOnInterceptTouchEventListener()Lue7;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->p:Lue7;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->p:Lue7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lue7;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->i:Lbz6;

    invoke-virtual {p0}, Lbz6;->b()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDisabledScrollPages(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->o:Ljava/util/Set;

    return-void
.end method

.method public setEdgeScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->l:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager$a;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager$a;-><init>(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;)V

    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->j:Landroidx/customview/widget/ViewDragHelper;

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :cond_0
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lue7;)V
    .locals 0
    .param p1    # Lue7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->p:Lue7;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->k:Z

    return-void
.end method
