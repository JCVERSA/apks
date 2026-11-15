.class public Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;
.super Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;,
        Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ACTION:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;",
        "Lcom/yandex/div/internal/widget/tabs/b$b;"
    }
.end annotation


# instance fields
.field public J:Lcom/yandex/div/internal/widget/tabs/b$b$a;

.field public K:Ljava/util/List;

.field public final L:Lgk8;

.field public M:Lcdc;

.field public N:Ljava/lang/String;

.field public O:Lcom/yandex/div2/DivTabs$TabTitleStyle;

.field public P:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;

.field public Q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->Q:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabMode(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabIndicatorHeight(I)V

    .line 7
    new-instance p2, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;

    invoke-direct {p2, p0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$a;-><init>(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)V

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setOnTabSelectedListener(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$b;)V

    .line 8
    new-instance p2, Lgk8;

    invoke-direct {p2}, Lgk8;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->L:Lgk8;

    .line 9
    new-instance p3, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;-><init>(Landroid/content/Context;)V

    const-string v0, "TabTitlesLayoutView.TAB_HEADER"

    invoke-virtual {p2, v0, p3, p1}, Lgk8;->c(Ljava/lang/String;Lhcc;I)V

    .line 10
    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->M:Lcdc;

    .line 11
    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->N:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Lcom/yandex/div/internal/widget/tabs/b$b$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->J:Lcom/yandex/div/internal/widget/tabs/b$b$a;

    return-object p0
.end method

.method public static synthetic F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->K:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final G(Lcom/yandex/div/internal/widget/tabs/TabView;Loj3;Lqj3;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->O:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0, p2, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->g(Lcom/yandex/div/internal/widget/tabs/TabView;Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lqj3;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->Q:Z

    :cond_0
    return v0
.end method

.method public fixScrollPosition(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->selectTab(I)V

    return-void
.end method

.method public getCustomPageChangeListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->getPageChangeListener()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$TabLayoutOnPageChangeListener;->a()V

    return-object p0
.end method

.method public manuallyScroll(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->selectTab(I)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->P:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->Q:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->Q:Z

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;)Lcom/yandex/div/internal/widget/tabs/TabView;
    .locals 0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->M:Lcdc;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->N:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcdc;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/widget/tabs/TabView;

    return-object p0
.end method

.method public resetScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->manuallyScroll(I)V

    return-void
.end method

.method public setData(Ljava/util/List;ILoj3;Lqj3;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Loj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lqj3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/div/internal/widget/tabs/b$g$a;",
            ">;I",
            "Loj3;",
            "Lqj3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->K:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->removeAllTabs()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->newTab()Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div/internal/widget/tabs/b$g$a;

    invoke-interface {v4}, Lcom/yandex/div/internal/widget/tabs/b$g$a;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->l(Ljava/lang/CharSequence;)Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->g()Lcom/yandex/div/internal/widget/tabs/TabView;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p4}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->G(Lcom/yandex/div/internal/widget/tabs/TabView;Loj3;Lqj3;)V

    if-ne v2, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual {p0, v3, v4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->addTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setHost(Lcom/yandex/div/internal/widget/tabs/b$b$a;)V
    .locals 0
    .param p1    # Lcom/yandex/div/internal/widget/tabs/b$b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/internal/widget/tabs/b$b$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->J:Lcom/yandex/div/internal/widget/tabs/b$b$a;

    return-void
.end method

.method public setIntermediateState(IF)V
    .locals 0

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;)V
    .locals 0
    .param p1    # Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->P:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;

    return-void
.end method

.method public setTabColors(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p3, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabTextColors(II)V

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setSelectedTabIndicatorColor(I)V

    invoke-virtual {p0, p4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabBackgroundColor(I)V

    return-void
.end method

.method public setTabTitleStyle(Lcom/yandex/div2/DivTabs$TabTitleStyle;)V
    .locals 0
    .param p1    # Lcom/yandex/div2/DivTabs$TabTitleStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->O:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    return-void
.end method

.method public setTypefaceProvider(Lbu2;)V
    .locals 0
    .param p1    # Lbu2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->bindTypefaceProvider(Lbu2;)V

    return-void
.end method

.method public setViewPool(Lcdc;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcdc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->M:Lcdc;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->N:Ljava/lang/String;

    return-void
.end method
