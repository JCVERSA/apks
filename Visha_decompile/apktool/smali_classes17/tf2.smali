.class public final Ltf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$k;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$k;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$k;->c()Lcom/yandex/div2/DivActionFocusElement;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Ltf2;->b(Lcom/yandex/div2/DivActionFocusElement;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lcom/yandex/div2/DivActionFocusElement;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 0

    iget-object p0, p1, Lcom/yandex/div2/DivActionFocusElement;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->b()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->m(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->V(Landroid/view/View;)V

    instance-of p0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-static {p1}, Leg2;->h(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;)V

    :cond_1
    return-void
.end method
