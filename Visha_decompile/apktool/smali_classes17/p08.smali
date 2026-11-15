.class public final Lp08;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/view2/a;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/a;Ljava/util/List;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lp08;->b:Lcom/yandex/div/core/view2/a;

    iput-object p2, p0, Lp08;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/core/view2/divs/DivActionBinder;
    .locals 1

    iget-object p0, p0, Lp08;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object p0

    const-string v0, "bindingContext.divView.div2Component.actionBinder"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lp08;->c:Ljava/util/List;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp08;->a()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v0

    iget-object v1, p0, Lp08;->b:Lcom/yandex/div/core/view2/a;

    iget-object p0, p0, Lp08;->c:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->L(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const-string p0, "paint"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
