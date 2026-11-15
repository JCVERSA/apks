.class public final Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;
.super Lcom/yandex/div/internal/core/DivTreeVisitor;
.source "SourceFile"

# interfaces
.implements Lqj3;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/yandex/div/internal/core/DivTreeVisitor;-><init>(Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic y(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public B(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->E(Log2;Loj3;)V

    return-void
.end method

.method public final C(Lcom/yandex/div2/DivSize;Loj3;)V
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivFixedSize;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivFixedSize;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    instance-of v0, p1, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder$observe$1;

    invoke-direct {p1, p0, v1}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder$observe$1;-><init>(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/json/expressions/Expression$MutableExpression;)V

    invoke-virtual {v1, p2, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->e(Loj3;Le74;)Lqc2;

    move-result-object p1

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final D(Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/a;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivData$State;

    iget-object v1, v0, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    sget-object v2, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v2, v0}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0}, Lcom/yandex/div/internal/core/DivTreeVisitor;->x(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E(Log2;Loj3;)V
    .locals 1

    invoke-interface {p1}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->C(Lcom/yandex/div2/DivSize;Loj3;)V

    invoke-interface {p1}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->C(Lcom/yandex/div2/DivSize;Loj3;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->B(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->d:Ljava/util/List;

    return-object p0
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
