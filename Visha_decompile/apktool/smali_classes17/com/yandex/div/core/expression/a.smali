.class public Lcom/yandex/div/core/expression/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/expression/variables/DivVariableController;

.field public final b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final c:Lxc3;

.field public final d:Lgd2;

.field public final e:Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/variables/DivVariableController;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lxc3;Lgd2;Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;)V
    .locals 1

    const-string v0, "divVariableController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storedValuesController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/a;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    iput-object p2, p0, Lcom/yandex/div/core/expression/a;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p3, p0, Lcom/yandex/div/core/expression/a;->c:Lxc3;

    iput-object p4, p0, Lcom/yandex/div/core/expression/a;->d:Lgd2;

    iput-object p5, p0, Lcom/yandex/div/core/expression/a;->e:Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/expression/a;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/a;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/expression/a;Lwc3;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/expression/a;->e(Lcom/yandex/div/core/expression/a;Lwc3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/expression/a;->f(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V

    return-void
.end method

.method public static final e(Lcom/yandex/div/core/expression/a;Lwc3;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCollector"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storedValueName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/a;->e:Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->c(Ljava/lang/String;Lwc3;)Lcom/yandex/div/data/StoredValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/data/StoredValue;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V
    .locals 7

    const-string v0, "$runtimeStore"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvj3;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lvj3;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lx9b;Lm84;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->m(Lvj3;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/a;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/core/expression/a;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvj3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lvj3;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->a()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/expression/a;->g:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Lcom/yandex/div2/DivData;Lei2;)Lvj3;
    .locals 12

    iget-object v0, p0, Lcom/yandex/div/core/expression/a;->c:Lxc3;

    invoke-virtual {v0, p2, p1}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v0

    new-instance v8, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v8, v1, v2, v1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;-><init>(Lsnb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p1, Lcom/yandex/div2/DivData;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivVariable;

    :try_start_0
    invoke-static {v1}, Lhu2;->a(Lcom/yandex/div2/DivVariable;)Lqnb;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->i(Lqnb;)V
    :try_end_0
    .catch Lcom/yandex/div/data/VariableDeclarationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/expression/a;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->f()Lrs6;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->q(Ldob;)V

    new-instance p1, Lm84;

    sget-object v1, Lnd4;->a:Lnd4;

    invoke-direct {p1, v1}, Lm84;-><init>(Ll84;)V

    new-instance v1, Lpd3;

    new-instance v2, Lwj3;

    invoke-direct {v2, p0, v0}, Lwj3;-><init>(Lcom/yandex/div/core/expression/a;Lwc3;)V

    new-instance v3, Lcom/yandex/div/core/expression/a$a;

    invoke-direct {v3, v0}, Lcom/yandex/div/core/expression/a$a;-><init>(Lwc3;)V

    invoke-direct {v1, v8, v2, p1, v3}, Lpd3;-><init>(Lcob;Ldy9;Ll84;Lqgc;)V

    new-instance v9, Lcom/yandex/div/evaluable/Evaluator;

    invoke-direct {v9, v1}, Lcom/yandex/div/evaluable/Evaluator;-><init>(Lpd3;)V

    new-instance v10, Lcom/yandex/div/core/expression/local/RuntimeStore;

    iget-object v1, p0, Lcom/yandex/div/core/expression/a;->d:Lgd2;

    iget-object v2, p0, Lcom/yandex/div/core/expression/a;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-direct {v10, v9, v0, v1, v2}, Lcom/yandex/div/core/expression/local/RuntimeStore;-><init>(Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V

    new-instance v7, Lxj3;

    invoke-direct {v7, v10}, Lxj3;-><init>(Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    new-instance v11, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataTag: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lei2;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v11

    move-object v3, v10

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;-><init>(Ljava/lang/String;Lcom/yandex/div/core/expression/local/RuntimeStore;Lsnb;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;)V

    new-instance p2, Lx9b;

    iget-object v6, p0, Lcom/yandex/div/core/expression/a;->d:Lgd2;

    iget-object v7, p0, Lcom/yandex/div/core/expression/a;->b:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-object v1, p2

    move-object v2, v8

    move-object v3, v11

    move-object v4, v9

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lx9b;-><init>(Lsnb;Loj3;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V

    new-instance p0, Lvj3;

    move-object v1, p0

    move-object v2, v11

    move-object v3, v8

    move-object v4, p2

    move-object v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lvj3;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lx9b;Lm84;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    invoke-virtual {v10, p0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->q(Lvj3;)V

    return-object p0
.end method

.method public final g(Lsnb;Lcom/yandex/div2/DivData;Lwc3;)V
    .locals 3

    iget-object p0, p2, Lcom/yandex/div2/DivData;->g:Ljava/util/List;

    if-eqz p0, :cond_a

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivVariable;

    invoke-static {p2}, Lyj3;->a(Lcom/yandex/div2/DivVariable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p2}, Lhu2;->a(Lcom/yandex/div2/DivVariable;)Lqnb;

    move-result-object p2

    invoke-interface {p1, p2}, Lsnb;->i(Lqnb;)V
    :try_end_0
    .catch Lcom/yandex/div/data/VariableDeclarationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p3, p2}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$b;

    if-eqz v1, :cond_2

    instance-of v0, v0, Lqnb$b;

    goto :goto_1

    :cond_2
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$f;

    if-eqz v1, :cond_3

    instance-of v0, v0, Lqnb$f;

    goto :goto_1

    :cond_3
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$g;

    if-eqz v1, :cond_4

    instance-of v0, v0, Lqnb$e;

    goto :goto_1

    :cond_4
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$h;

    if-eqz v1, :cond_5

    instance-of v0, v0, Lqnb$g;

    goto :goto_1

    :cond_5
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$c;

    if-eqz v1, :cond_6

    instance-of v0, v0, Lqnb$c;

    goto :goto_1

    :cond_6
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$i;

    if-eqz v1, :cond_7

    instance-of v0, v0, Lqnb$h;

    goto :goto_1

    :cond_7
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$e;

    if-eqz v1, :cond_8

    instance-of v0, v0, Lqnb$d;

    goto :goto_1

    :cond_8
    instance-of v1, p2, Lcom/yandex/div2/DivVariable$a;

    if-eqz v1, :cond_9

    instance-of v0, v0, Lqnb$a;

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n                           Variable inconsistency detected!\n                           at DivData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lyj3;->a(Lcom/yandex/div2/DivVariable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")\n                           at VariableController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lyj3;->a(Lcom/yandex/div2/DivVariable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n                        "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lz0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    return-void
.end method

.method public h(Lei2;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/Div2View;)Lvj3;
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2View"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/a;->f:Ljava/util/Map;

    const-string v1, "runtimes"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/expression/a;->d(Lcom/yandex/div2/DivData;Lei2;)Lvj3;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lvj3;

    iget-object v0, p0, Lcom/yandex/div/core/expression/a;->c:Lxc3;

    invoke-virtual {v0, p1, p2}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/expression/a;->g:Ljava/util/WeakHashMap;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/Set;

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tag.id"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lvj3;->g()Lsnb;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/core/expression/a;->g(Lsnb;Lcom/yandex/div2/DivData;Lwc3;)V

    invoke-virtual {v2}, Lvj3;->f()Lx9b;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p2, Lcom/yandex/div2/DivData;->f:Ljava/util/List;

    if-nez p1, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lx9b;->b(Ljava/util/List;)V

    :cond_3
    const-string p0, "result"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public i(Ljava/util/List;)V
    .locals 2

    const-string v0, "tags"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/expression/a;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lei2;

    iget-object v1, p0, Lcom/yandex/div/core/expression/a;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lei2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
