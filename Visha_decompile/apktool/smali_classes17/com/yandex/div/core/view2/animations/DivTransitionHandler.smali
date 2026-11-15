.class public final Lcom/yandex/div/core/view2/animations/DivTransitionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a;,
        Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->h(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;Landroid/view/ViewGroup;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->a:Lcom/yandex/div/core/view2/Div2View;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static final h(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0, v2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;Landroid/view/ViewGroup;ZILjava/lang/Object;)V

    :cond_0
    iput-boolean v1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/ViewGroup;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_0
    new-instance p2, Landroidx/transition/TransitionSet;

    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->d()Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;

    invoke-direct {v0, p2, p0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;-><init>(Landroidx/transition/Transition;Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V

    invoke-virtual {p2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c:Ljava/util/List;

    iget-object p2, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final e(Ljava/util/List;Landroid/view/View;)Ljava/util/List;
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->c()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final f(Landroid/view/View;)Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->e(Ljava/util/List;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->e(Ljava/util/List;Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d:Z

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance v1, Lvt2;

    invoke-direct {v1, p0}, Lvt2;-><init>(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i(Landroidx/transition/Transition;Landroid/view/View;Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;)V
    .locals 3

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b:Ljava/util/List;

    new-instance v1, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;

    filled-new-array {p3}, [Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    move-result-object p3

    invoke-static {p3}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$b;-><init>(Landroidx/transition/Transition;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->g()V

    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Z)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
