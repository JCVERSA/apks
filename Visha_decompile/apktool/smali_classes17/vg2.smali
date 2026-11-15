.class public interface abstract Lvg2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
.end method

.method public abstract getNeedClipping()Z
.end method

.method public invalidateBorder()V
    .locals 0

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m()V

    :cond_0
    return-void
.end method

.method public onBoundsChanged(II)V
    .locals 0

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->q(II)V

    :cond_0
    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lqj3;->release()V

    :cond_0
    return-void
.end method

.method public abstract setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
.end method

.method public abstract setNeedClipping(Z)V
.end method
