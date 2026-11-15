.class public final Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;
    }
.end annotation


# instance fields
.field public final a:Ly74;

.field public final b:Ly74;

.field public final c:Ljava/util/WeakHashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Ly74;Ly74;)V
    .locals 1

    const-string v0, "onEnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDisable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->a:Ly74;

    iput-object p2, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->b:Ly74;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->c:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->e(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;)Ly74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->b:Ly74;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;)Ly74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->a:Ly74;

    return-object p0
.end method

.method public static final e(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_addSubscriptionIfNeeded"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->g(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->e:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lqj3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lqj3;

    new-instance v1, Lsi9;

    invoke-direct {v1, p0, p1}, Lsi9;-><init>(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->e:Ljava/util/WeakHashMap;

    sget-object v0, Lzfb;->a:Lzfb;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final f(Lwp2;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->a()V

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "actions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwp2;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->f(Lwp2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/Div;Ljava/util/List;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v0, p5

    const-string v1, "view"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "div2View"

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resolver"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "div"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actions"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->d(Landroid/view/View;)V

    iget-object v12, v7, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v12, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Li81;->u0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    move-object v2, v13

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Li81;->f1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwp2;

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v7, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->a()V

    goto :goto_0

    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lwp2;

    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->f(Lwp2;)V

    iget-object v5, v7, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->d:Ljava/util/HashMap;

    new-instance v4, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;

    invoke-interface {v6}, Lwp2;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    new-instance v2, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$observe$2$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v7, v2

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, p4

    move-object/from16 p5, v6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$observe$2$1;-><init>(Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Lwp2;)V

    invoke-virtual {v10, v9, v7}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-direct {v11, v0, v8}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;-><init>(Lqc2;Landroid/view/View;)V

    move-object/from16 v0, p5

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v13, v16

    goto :goto_1

    :cond_3
    move-object/from16 v7, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    goto :goto_1

    :cond_4
    invoke-interface {v12, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
