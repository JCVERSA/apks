.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;
.super Lcom/yandex/div/core/widget/DivViewWrapper;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;",
        "Lcom/yandex/div/core/widget/DivViewWrapper;",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function0;",
        "",
        "isHorizontal",
        "<init>",
        "(Landroid/content/Context;Lc74;)V",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Lzfb;",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/view/View;",
        "child",
        "",
        "drawingTime",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "parentSpec",
        "p",
        "(I)I",
        "size",
        "alongScrollAxis",
        "q",
        "(IIZ)I",
        "n",
        "Lc74;",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final n:Lc74;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc74;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHorizontal"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/widget/DivViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->n:Lc74;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->N(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic invalidateBorder()V
    .locals 0

    invoke-super {p0}, Lvg2;->invalidateBorder()V

    return-void
.end method

.method public bridge synthetic onBoundsChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lvg2;->onBoundsChanged(II)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->n:Lc74;

    invoke-interface {v1}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->p(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->p(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->q(IIZ)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;->q(IIZ)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/FrameContainerLayout;->onMeasure(II)V

    return-void
.end method

.method public final p(I)I
    .locals 0

    invoke-static {p1}, Lodc;->f(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final q(IIZ)I
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x3

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lodc;->i()I

    move-result p2

    :goto_0
    return p2
.end method

.method public bridge synthetic releaseBorderDrawer()V
    .locals 0

    invoke-super {p0}, Lvg2;->releaseBorderDrawer()V

    return-void
.end method
