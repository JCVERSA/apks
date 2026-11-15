.class public final Lnk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmk2;
.implements Lvg2;
.implements Ll7b;


# instance fields
.field public final synthetic b:Lwg2;

.field public final synthetic c:Lcom/yandex/div/internal/widget/TransientViewMixin;

.field public d:Lcom/yandex/div2/Div;

.field public e:Lcom/yandex/div/core/view2/a;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwg2;

    invoke-direct {v0}, Lwg2;-><init>()V

    iput-object v0, p0, Lnk2;->b:Lwg2;

    new-instance v0, Lcom/yandex/div/internal/widget/TransientViewMixin;

    invoke-direct {v0}, Lcom/yandex/div/internal/widget/TransientViewMixin;-><init>()V

    iput-object v0, p0, Lnk2;->c:Lcom/yandex/div/internal/widget/TransientViewMixin;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnk2;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lnk2;->e:Lcom/yandex/div/core/view2/a;

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lnk2;->d:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-virtual {p0}, Lwg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-virtual {p0}, Lwg2;->getNeedClipping()Z

    move-result p0

    return p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnk2;->f:Ljava/util/List;

    return-object p0
.end method

.method public invalidateBorder()V
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-interface {p0}, Lvg2;->invalidateBorder()V

    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget-object p0, p0, Lnk2;->c:Lcom/yandex/div/internal/widget/TransientViewMixin;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/TransientViewMixin;->isTransient()Z

    move-result p0

    return p0
.end method

.method public onBoundsChanged(II)V
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-interface {p0, p1, p2}, Lvg2;->onBoundsChanged(II)V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lqj3;->release()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnk2;->setDiv(Lcom/yandex/div2/Div;)V

    invoke-virtual {p0, v0}, Lnk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p0}, Lnk2;->releaseBorderDrawer()V

    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-interface {p0}, Lvg2;->releaseBorderDrawer()V

    return-void
.end method

.method public setBindingContext(Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lnk2;->e:Lcom/yandex/div/core/view2/a;

    return-void
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-virtual {p0, p1, p2, p3}, Lwg2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void
.end method

.method public setDiv(Lcom/yandex/div2/Div;)V
    .locals 0

    iput-object p1, p0, Lnk2;->d:Lcom/yandex/div2/Div;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lnk2;->b:Lwg2;

    invoke-virtual {p0, p1}, Lwg2;->setNeedClipping(Z)V

    return-void
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lnk2;->c:Lcom/yandex/div/internal/widget/TransientViewMixin;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TransientViewMixin;->transitionFinished(Landroid/view/View;)V

    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lnk2;->c:Lcom/yandex/div/internal/widget/TransientViewMixin;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TransientViewMixin;->transitionStarted(Landroid/view/View;)V

    return-void
.end method
