.class public final Llg2;
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
    .locals 2

    const-string p0, "action"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lcom/yandex/div2/DivActionTyped$a;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3, p1}, Locc;->c(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->j()Lkg2;

    move-result-object p3

    check-cast p2, Lcom/yandex/div2/DivActionTyped$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$a;->c()Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p2

    invoke-virtual {p3, p1, p0, p2, p4}, Lkg2;->e(Ljava/lang/String;Landroid/view/View;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)V

    goto :goto_0

    :cond_2
    instance-of p0, p2, Lcom/yandex/div2/DivActionTyped$b;

    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->j()Lkg2;

    move-result-object p0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$b;->c()Lcom/yandex/div2/DivActionAnimatorStop;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/div2/DivActionAnimatorStop;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkg2;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
