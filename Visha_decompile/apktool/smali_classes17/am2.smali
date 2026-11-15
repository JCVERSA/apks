.class public final Lam2;
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

    iput-object p1, p0, Lam2;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lam2;->b:Lrg2;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div2/DivData$State;Ljava/util/List;Loj3;)V
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lam2;->a:Lcom/yandex/div/core/view2/Div2View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    sget-object v2, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v2, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lam2;->b(Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->m()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    const-string v4, "rootView"

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p1, p2, p3}, Lcom/yandex/div/core/state/DivPathUtils;->j(Landroid/view/View;Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;Loj3;)Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/Div$n;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    move-object v1, p1

    move-object v0, p3

    :cond_2
    const-string p1, "view"

    invoke-static {v0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lam2;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object p2

    :cond_3
    iget-object p3, p0, Lam2;->b:Lrg2;

    invoke-static {v0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/div/core/state/DivStatePath;->n()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p1

    invoke-virtual {p3, p2, v0, v1, p1}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    iget-object p0, p0, Lam2;->b:Lrg2;

    invoke-virtual {p0}, Lrg2;->a()V

    return-void
.end method

.method public final b(Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/state/DivStatePath;

    check-cast p1, Lcom/yandex/div/core/state/DivStatePath;

    sget-object v1, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/div/core/state/DivStatePath$a;->k(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/yandex/div/core/state/DivStatePath;

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty collection can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p1}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/state/DivStatePath;

    return-object p0

    :cond_4
    return-object p2
.end method
