.class public final Lqm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvq2;


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Lrg2;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lrg2;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm2;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lqm2;->b:Lrg2;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div2/DivData$State;Ljava/util/List;Loj3;)V
    .locals 8

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqm2;->a:Lcom/yandex/div/core/view2/Div2View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    sget-object v2, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {v2, p2}, Lcom/yandex/div/core/state/DivPathUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {v4}, Lcom/yandex/div/core/state/DivStatePath;->m()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "rootView"

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/core/state/DivStatePath;

    sget-object v5, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p1, v3, p3}, Lcom/yandex/div/core/state/DivPathUtils;->j(Landroid/view/View;Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;Loj3;)Lkotlin/Pair;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/Div$n;

    if-eqz v5, :cond_2

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v6

    :goto_2
    invoke-virtual {v5}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lqm2;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v6}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v6

    :cond_5
    iget-object v7, p0, Lqm2;->b:Lrg2;

    invoke-virtual {v3}, Lcom/yandex/div/core/state/DivStatePath;->n()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    invoke-virtual {v7, v6, v5, v4, v3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lqm2;->b:Lrg2;

    iget-object p3, p0, Lqm2;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p3

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v2, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p1

    invoke-virtual {p2, p3, v0, v1, p1}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    :cond_7
    iget-object p0, p0, Lqm2;->b:Lrg2;

    invoke-virtual {p0}, Lrg2;->a()V

    return-void
.end method
