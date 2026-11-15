.class public abstract Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lorg/json/JSONArray;Le74;)Lorg/json/JSONArray;
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->c(Lorg/json/JSONArray;Le74;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V

    return-void
.end method

.method public static final c(Lorg/json/JSONArray;Le74;)Lorg/json/JSONArray;
    .locals 0

    invoke-static {p0}, Lpc5;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static final d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)V
    .locals 2

    sget-object v0, Lbob;->a:Lbob$a;

    new-instance v1, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;

    invoke-direct {v1, p0, p3}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt$updateVariable$1;-><init>(Lcom/yandex/div/core/view2/Div2View;Le74;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lbob$a;->c(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div/data/VariableMutationException;

    return-void
.end method
