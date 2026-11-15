.class public Lx9b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsnb;

.field public final b:Loj3;

.field public final c:Lcom/yandex/div/evaluable/Evaluator;

.field public final d:Lwc3;

.field public final e:Lgd2;

.field public final f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final g:Ljava/util/Map;

.field public h:Lsv2;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lsnb;Loj3;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
    .locals 1

    const-string v0, "variableController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9b;->a:Lsnb;

    iput-object p2, p0, Lx9b;->b:Loj3;

    iput-object p3, p0, Lx9b;->c:Lcom/yandex/div/evaluable/Evaluator;

    iput-object p4, p0, Lx9b;->d:Lwc3;

    iput-object p5, p0, Lx9b;->e:Lgd2;

    iput-object p6, p0, Lx9b;->f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lx9b;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lx9b;->h:Lsv2;

    iget-object p0, p0, Lx9b;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;

    invoke-virtual {v2, v0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->f(Lsv2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "divTriggers"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lx9b;->i:Ljava/util/List;

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, v0, Lx9b;->i:Ljava/util/List;

    iget-object v2, v0, Lx9b;->h:Lsv2;

    iget-object v3, v0, Lx9b;->g:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v4, Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lx9b;->a()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivTrigger;

    iget-object v5, v3, Lcom/yandex/div2/DivTrigger;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5}, Lcom/yandex/div/json/expressions/Expression;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    sget-object v5, Lcom/yandex/div/evaluable/a;->d:Lcom/yandex/div/evaluable/a$b;

    invoke-virtual {v5, v7}, Lcom/yandex/div/evaluable/a$b;->a(Ljava/lang/String;)Lcom/yandex/div/evaluable/a;

    move-result-object v8
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lx9b;->c(Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Lx9b;->d:Lwc3;

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid condition: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/yandex/div2/DivTrigger;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;

    iget-object v9, v0, Lx9b;->c:Lcom/yandex/div/evaluable/Evaluator;

    iget-object v10, v3, Lcom/yandex/div2/DivTrigger;->a:Ljava/util/List;

    iget-object v11, v3, Lcom/yandex/div2/DivTrigger;->c:Lcom/yandex/div/json/expressions/Expression;

    iget-object v12, v0, Lx9b;->b:Loj3;

    iget-object v13, v0, Lx9b;->a:Lsnb;

    iget-object v14, v0, Lx9b;->d:Lwc3;

    iget-object v15, v0, Lx9b;->e:Lgd2;

    iget-object v3, v0, Lx9b;->f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-object v6, v5

    move-object/from16 v16, v3

    invoke-direct/range {v6 .. v16}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;-><init>(Ljava/lang/String;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/Evaluator;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Loj3;Lsnb;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lx9b;->d(Lsv2;)V

    :cond_4
    return-void
.end method

.method public final c(Ljava/util/List;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No variables defined!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Lsv2;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx9b;->h:Lsv2;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lx9b;->h:Lsv2;

    iget-object v0, p0, Lx9b;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lx9b;->g:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->f(Lsv2;)V

    goto :goto_0

    :cond_1
    return-void
.end method
