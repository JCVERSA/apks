.class public final Lcom/yandex/div/core/view2/divs/DivSwitchBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/expression/variables/a;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/expression/variables/a;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->b:Lcom/yandex/div/core/expression/variables/a;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivSwitchBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivSwitchBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    check-cast p3, Lcom/yandex/div2/DivSwitch;

    check-cast p4, Lcom/yandex/div2/DivSwitch;

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final h(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivSwitch;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/SwitchView;->setEnabled(Z)V

    return-void
.end method

.method public final i(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivSwitch;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/SwitchView;->setColorOn(Ljava/lang/Integer;)V

    return-void
.end method

.method public j(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Loj3;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Loj3;)V

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final k(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivSwitch;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivSwitch;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    iget-object p3, p2, Lcom/yandex/div2/DivSwitch;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$bindIsEnabled$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$bindIsEnabled$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSwitchBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSwitch;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div2/DivSwitch;Loj3;)V
    .locals 2

    iget-object v0, p2, Lcom/yandex/div2/DivSwitch;->s:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivSwitch;->s:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    iget-object p3, p2, Lcom/yandex/div2/DivSwitch;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$bindOnColor$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$bindOnColor$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSwitchBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSwitch;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->b:Lcom/yandex/div/core/expression/variables/a;

    iget-object p2, p2, Lcom/yandex/div2/DivSwitch;->p:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, v0, p4}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;->addSubscription(Lqc2;)V

    return-void
.end method
