.class public Lcom/yandex/div/internal/widget/tabs/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/yandex/div/internal/widget/tabs/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b$h;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->d(IF)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final b(IF)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->d(IF)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->shouldRequestLayoutOnScroll(IF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lx90;

    invoke-direct {p2, p0}, Lx90;-><init>(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->b:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object p1, p1, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b$h;->a(I)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->e(Lcom/yandex/div/internal/widget/tabs/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->i(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/div/internal/widget/tabs/b$b;->fixScrollPosition(I)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b;->f(Lcom/yandex/div/internal/widget/tabs/b;Z)Z

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget p3, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->b:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/b$h;->b(IF)V

    :cond_0
    iget-object p3, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p3}, Lcom/yandex/div/internal/widget/tabs/b;->e(Lcom/yandex/div/internal/widget/tabs/b;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->i(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/b$b;->setIntermediateState(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->c:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/b$h;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/b$h;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
