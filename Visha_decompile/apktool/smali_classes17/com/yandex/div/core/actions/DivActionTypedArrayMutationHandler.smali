.class public final Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;
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
    .locals 1

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$c;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$c;->c()Lcom/yandex/div2/DivActionArrayInsertValue;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;->b(Lcom/yandex/div2/DivActionArrayInsertValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$d;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/yandex/div2/DivActionTyped$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$d;->c()Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;->c(Lcom/yandex/div2/DivActionArrayRemoveValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$e;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/yandex/div2/DivActionTyped$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$e;->c()Lcom/yandex/div2/DivActionArraySetValue;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;->d(Lcom/yandex/div2/DivActionArraySetValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Lcom/yandex/div2/DivActionArrayInsertValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 2

    iget-object p0, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->b:Lcom/yandex/div2/DivTypedValue;

    invoke-static {p1, p3}, Leg2;->d(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;

    invoke-direct {v1, v0, p2, p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;-><init>(Ljava/lang/Integer;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p0, p3, v1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V

    return-void
.end method

.method public final c(Lcom/yandex/div2/DivActionArrayRemoveValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 2

    iget-object p0, p1, Lcom/yandex/div2/DivActionArrayRemoveValue;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/div2/DivActionArrayRemoveValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    new-instance v0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$2;-><init>(ILcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)V

    invoke-static {p2, p0, p3, v0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V

    return-void
.end method

.method public final d(Lcom/yandex/div2/DivActionArraySetValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 2

    iget-object p0, p1, Lcom/yandex/div2/DivActionArraySetValue;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/yandex/div2/DivActionArraySetValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object p1, p1, Lcom/yandex/div2/DivActionArraySetValue;->b:Lcom/yandex/div2/DivTypedValue;

    invoke-static {p1, p3}, Leg2;->d(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$3;

    invoke-direct {v1, v0, p2, p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$3;-><init>(ILcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, p0, p3, v1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V

    return-void
.end method
