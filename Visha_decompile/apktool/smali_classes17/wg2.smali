.class public final Lwg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvg2;


# instance fields
.field public b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwg2;->c:Z

    return-void
.end method


# virtual methods
.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-boolean p0, p0, Lwg2;->c:Z

    return p0
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 2

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;-><init>(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;)V

    iput-object v0, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    :cond_0
    iget-object v0, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->r(Lcom/yandex/div2/DivBorder;Loj3;)V

    :cond_1
    iget-object p1, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwg2;->getNeedClipping()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->s(Z)V

    :goto_0
    if-nez p2, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setElevation(F)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setClipToOutline(Z)V

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-interface {p0}, Lvg2;->releaseBorderDrawer()V

    const/4 p1, 0x0

    iput-object p1, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 1

    iget-object v0, p0, Lwg2;->b:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->s(Z)V

    :goto_0
    iput-boolean p1, p0, Lwg2;->c:Z

    return-void
.end method
