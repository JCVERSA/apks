.class public final Lkg2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg2;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lkg2;->b:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Lkg2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lkg2;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;
    .locals 3

    instance-of v0, p1, Lmk2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lmk2;

    invoke-interface {v0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Log2;->A()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lkg2;->c(Ljava/util/List;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2}, Lkg2;->b(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;

    move-result-object v1

    goto :goto_3

    :cond_2
    move-object v1, v0

    goto :goto_3

    :cond_3
    instance-of v0, p1, Lcom/yandex/div/core/view2/Div2View;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lkg2;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find animator with id \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Leg2;->f(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/view/View;

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1, p2}, Lkg2;->b(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;

    move-result-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method public final c(Ljava/util/List;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAnimator;

    invoke-virtual {v2}, Lcom/yandex/div2/DivAnimator;->b()Ljg2;

    move-result-object v2

    invoke-interface {v2}, Ljg2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    return-object p0

    :cond_3
    invoke-static {v0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimator;

    :cond_4
    return-object p0
.end method

.method public final d()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lkg2;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkg2;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final e(Ljava/lang/String;Landroid/view/View;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)V
    .locals 2

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivActionAnimatorStart;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lkg2;->b(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/div2/DivAnimator;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iget-object v0, p0, Lkg2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkg2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    sget-object v0, Lgu2;->a:Lgu2;

    iget-object v1, p0, Lkg2;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0, v1, p2, p3, p4}, Lgu2;->a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p3, Lkg2$b;

    invoke-direct {p3, p0, p1}, Lkg2$b;-><init>(Lkg2;Lkotlin/Pair;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lkg2$a;

    invoke-direct {p3, p0, p1}, Lkg2$a;-><init>(Lkg2;Lkotlin/Pair;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lkg2;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "scopeId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatorId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkg2;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
