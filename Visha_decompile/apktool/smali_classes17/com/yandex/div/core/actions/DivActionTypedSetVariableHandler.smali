.class public final Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;
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

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$q;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$q;

    invoke-virtual {p0, p2, p3, p4}, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;->b(Lcom/yandex/div2/DivActionTyped$q;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lcom/yandex/div2/DivActionTyped$q;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 3

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivActionSetVariable;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionTyped$q;->c()Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivActionSetVariable;->a:Lcom/yandex/div2/DivTypedValue;

    invoke-static {p1, p3}, Leg2;->d(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lbob;->a:Lbob$a;

    new-instance v2, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;-><init>(Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;Ljava/lang/Object;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v0, p3, v2}, Lbob$a;->c(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div/data/VariableMutationException;

    return-void
.end method
