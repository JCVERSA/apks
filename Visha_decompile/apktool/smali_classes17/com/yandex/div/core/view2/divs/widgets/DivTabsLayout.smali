.class public Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;
.super Lcom/yandex/div/internal/widget/tabs/TabsLayout;
.source "SourceFile"

# interfaces
.implements Lmk2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/div/internal/widget/tabs/TabsLayout;",
        "Lmk2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u001d\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001a\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u000cH\u0096\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u000cH\u0096\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J \u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0096\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u000cH\u0096\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u0010\u0010\u001b\u001a\u00020\u000cH\u0096\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J*\u0010\"\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020 H\u0096\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u0018\u0010$\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020 H\u0096\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u0018\u0010&\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020 H\u0096\u0001\u00a2\u0006\u0004\u0008&\u0010%J/\u0010+\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010/\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J)\u00105\u001a\u0002042\u0006\u0010.\u001a\u00020-2\u0008\u00101\u001a\u0004\u0018\u00010 2\u0006\u00103\u001a\u000202H\u0014\u00a2\u0006\u0004\u00085\u00106R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001e\u0010?\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0014\u0010@\u001a\u0002048\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u001c\u0010E\u001a\u0002048\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010A\"\u0004\u0008C\u0010DR\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\n0F8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010H\u00a8\u0006J"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;",
        "Lcom/yandex/div/internal/widget/tabs/TabsLayout;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$p;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lqc2;",
        "subscription",
        "Lzfb;",
        "addSubscription",
        "(Lqc2;)V",
        "closeAllSubscription",
        "()V",
        "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "getDivBorderDrawer",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "invalidateBorder",
        "",
        "width",
        "height",
        "onBoundsChanged",
        "(II)V",
        "release",
        "releaseBorderDrawer",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Lcom/yandex/div2/DivBorder;",
        "border",
        "Landroid/view/View;",
        "view",
        "setBorder",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V",
        "transitionFinished",
        "(Landroid/view/View;)V",
        "transitionStarted",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "child",
        "",
        "drawingTime",
        "",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "setBindingContext",
        "(Lcom/yandex/div/core/view2/a;)V",
        "getDiv",
        "()Lcom/yandex/div2/Div$p;",
        "setDiv",
        "(Lcom/yandex/div2/Div$p;)V",
        "div",
        "isTransient",
        "()Z",
        "getNeedClipping",
        "setNeedClipping",
        "(Z)V",
        "needClipping",
        "",
        "getSubscriptions",
        "()Ljava/util/List;",
        "subscriptions",
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
.field public final synthetic g:Lnk2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lnk2;

    invoke-direct {p1}, Lnk2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Lqc2;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public closeAllSubscription()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-interface {p0}, Lqj3;->closeAllSubscription()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

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

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/Div$p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div$p;

    return-object p0
.end method

.method public bridge synthetic getDiv()Lcom/yandex/div2/Div;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->getDiv()Lcom/yandex/div2/Div$p;

    move-result-object p0

    return-object p0
.end method

.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->getNeedClipping()Z

    move-result p0

    return p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lqc2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidateBorder()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->invalidateBorder()V

    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->isTransient()Z

    move-result p0

    return p0
.end method

.method public onBoundsChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1, p2}, Lnk2;->onBoundsChanged(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->onBoundsChanged(II)V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->release()V

    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0}, Lnk2;->releaseBorderDrawer()V

    return-void
.end method

.method public setBindingContext(Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1, p2, p3}, Lnk2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void
.end method

.method public setDiv(Lcom/yandex/div2/Div$p;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setDiv(Lcom/yandex/div2/Div;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lcom/yandex/div2/Div;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/div2/Div$p;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->setDiv(Lcom/yandex/div2/Div$p;)V

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setNeedClipping(Z)V

    return-void
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionFinished(Landroid/view/View;)V

    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->g:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionStarted(Landroid/view/View;)V

    return-void
.end method
