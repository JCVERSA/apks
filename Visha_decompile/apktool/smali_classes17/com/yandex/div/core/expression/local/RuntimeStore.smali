.class public final Lcom/yandex/div/core/expression/local/RuntimeStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/evaluable/Evaluator;

.field public final b:Lwc3;

.field public final c:Lgd2;

.field public final d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public e:Z

.field public final f:Ljava/util/Map;

.field public final g:Lqd7;

.field public final h:Lcom/yandex/div/core/expression/local/RuntimeTree;

.field public i:Lvj3;

.field public final j:Lyi5;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
    .locals 1

    const-string v0, "evaluator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2Logger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->a:Lcom/yandex/div/evaluable/Evaluator;

    iput-object p2, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->b:Lwc3;

    iput-object p3, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->c:Lgd2;

    iput-object p4, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->f:Ljava/util/Map;

    new-instance p1, Lqd7;

    invoke-direct {p1}, Lqd7;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->g:Lqd7;

    new-instance p1, Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-direct {p1}, Lcom/yandex/div/core/expression/local/RuntimeTree;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    new-instance p1, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;-><init>(Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->j:Lyi5;

    return-void
.end method

.method public static synthetic f(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->e(Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;)Lvj3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Lvj3;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/RuntimeStore;->h(Ljava/lang/String;Lcom/yandex/div2/Div;Lvj3;Loj3;Lvj3;)Lvj3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->e:Z

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->g:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj3;

    invoke-virtual {v0}, Lvj3;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->g:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj3;

    invoke-virtual {v0}, Lvj3;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lvj3;Lvj3;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lvj3;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    new-instance v10, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    invoke-virtual/range {p1 .. p1}, Lvj3;->g()Lsnb;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;-><init>(Lsnb;)V

    move-object/from16 v0, p4

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnb;

    invoke-virtual {v10, v1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->i(Lqnb;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lvj3;->d()Lm84;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {p6 .. p6}, Lk84;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm84;->d(Ljava/util/List;)Lm84;

    move-result-object v0

    :cond_3
    :goto_2
    move-object v11, v0

    new-instance v0, Lpd3;

    iget-object v1, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->a:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->b()Ldy9;

    move-result-object v1

    iget-object v2, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->a:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v2}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v2

    invoke-virtual {v2}, Lpd3;->d()Lqgc;

    move-result-object v2

    invoke-direct {v0, v10, v1, v11, v2}, Lpd3;-><init>(Lcob;Ldy9;Ll84;Lqgc;)V

    new-instance v12, Lcom/yandex/div/evaluable/Evaluator;

    invoke-direct {v12, v0}, Lcom/yandex/div/evaluable/Evaluator;-><init>(Lpd3;)V

    new-instance v13, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object v1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v14

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v14

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->b:Lwc3;

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->d()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

    move-result-object v6

    move-object v0, v13

    move-object v2, p0

    move-object v3, v10

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;-><init>(Ljava/lang/String;Lcom/yandex/div/core/expression/local/RuntimeStore;Lsnb;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;)V

    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v14, Lx9b;

    iget-object v4, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->b:Lwc3;

    iget-object v5, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->c:Lgd2;

    iget-object v6, v7, Lcom/yandex/div/core/expression/local/RuntimeStore;->d:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-object v0, v14

    move-object v1, v10

    move-object v2, v13

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lx9b;-><init>(Lsnb;Loj3;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V

    invoke-virtual {v14, v9}, Lx9b;->b(Ljava/util/List;)V

    :cond_7
    :goto_5
    move-object v3, v14

    new-instance v6, Lvj3;

    move-object v0, v6

    move-object v1, v13

    move-object v2, v10

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lvj3;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lx9b;Lm84;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v6, v8, v0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->n(Lvj3;Ljava/lang/String;Lvj3;)V

    return-object v6
.end method

.method public final d()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->j:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

    return-object p0
.end method

.method public final e(Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;)Lvj3;
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/expression/local/RuntimeTree;->c(Ljava/lang/String;)Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->c()Lvj3;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/RuntimeStore;->h(Ljava/lang/String;Lcom/yandex/div2/Div;Lvj3;Loj3;Lvj3;)Lvj3;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final g()Lvj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->i:Lvj3;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Lcom/yandex/div2/Div;Lvj3;Loj3;Lvj3;)Lvj3;
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-nez p5, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->i:Lvj3;

    if-nez p3, :cond_1

    const-string p1, "Root runtime is not specified."

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->o(Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v2, p3

    goto :goto_1

    :cond_2
    move-object v2, p5

    :goto_1
    if-nez p5, :cond_3

    if-eqz p4, :cond_4

    invoke-virtual {p0, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object p5

    :cond_3
    move-object v3, p5

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-interface {p3}, Log2;->c()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p3}, Leu2;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    move-object v5, p3

    goto :goto_3

    :cond_5
    move-object v5, v0

    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Log2;->w()Ljava/util/List;

    move-result-object p3

    move-object v6, p3

    goto :goto_4

    :cond_6
    move-object v6, v0

    :goto_4
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Log2;->y()Ljava/util/List;

    move-result-object v0

    :cond_7
    move-object v7, v0

    invoke-static {v5, v6, v7}, Limb;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_8

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/RuntimeStore;->c(Lvj3;Lvj3;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lvj3;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {p0, v2, v3, p1}, Lcom/yandex/div/core/expression/local/RuntimeTree;->h(Lvj3;Lvj3;Ljava/lang/String;)V

    invoke-virtual {v2}, Lvj3;->i()V

    return-object v2
.end method

.method public final j(Loj3;)Lvj3;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvj3;

    return-object p0
.end method

.method public final k()Lcom/yandex/div/core/expression/local/RuntimeTree;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    return-object p0
.end method

.method public final l()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeTree;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lvj3;)V
    .locals 2

    const-string v0, "runtime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->g:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(Lvj3;Ljava/lang/String;Lvj3;)V
    .locals 1

    const-string v0, "runtime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->m(Lvj3;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/expression/local/RuntimeTree;->h(Lvj3;Lvj3;Ljava/lang/String;)V

    invoke-virtual {p1}, Lvj3;->i()V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lxi;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->b:Lwc3;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lwc3;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Loj3;)Lvj3;
    .locals 11

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/expression/local/RuntimeTree;->c(Ljava/lang/String;)Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->c()Lvj3;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {p3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v6

    if-nez v6, :cond_3

    const-string p1, "ExpressionResolverImpl didn\'t call RuntimeStore#putRuntime on create."

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->o(Ljava/lang/String;)V

    return-object v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p3, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->h:Lcom/yandex/div/core/expression/local/RuntimeTree;

    invoke-virtual {p3, v0, p1}, Lcom/yandex/div/core/expression/local/RuntimeTree;->g(Lvj3;Ljava/lang/String;)V

    :cond_4
    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v3 .. v10}, Lcom/yandex/div/core/expression/local/RuntimeStore;->i(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Lvj3;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lvj3;)V
    .locals 2

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->i:Lvj3;

    if-eqz p1, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->n(Lvj3;Ljava/lang/String;Lvj3;)V

    :cond_0
    return-void
.end method

.method public final r(Log2;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->e:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Log2;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->e:Z

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->b:Lwc3;

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "You are using local variables. Please ensure that all elements that use local variables and all of their parents recursively have an \'id\' attribute."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore;->g:Lqd7;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj3;

    invoke-virtual {v0}, Lvj3;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method
