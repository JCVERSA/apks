.class public final Lcom/yandex/div/core/expression/triggers/TriggerExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/yandex/div/evaluable/a;

.field public final c:Lcom/yandex/div/evaluable/Evaluator;

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/json/expressions/Expression;

.field public final f:Loj3;

.field public final g:Lsnb;

.field public final h:Lwc3;

.field public final i:Lgd2;

.field public final j:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final k:Le74;

.field public l:Lqc2;

.field public m:Lcom/yandex/div2/DivTrigger$Mode;

.field public n:Z

.field public o:Lqc2;

.field public p:Lqc2;

.field public q:Lqc2;

.field public r:Lsv2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/Evaluator;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Loj3;Lsnb;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
    .locals 1

    const-string v0, "rawExpression"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableController"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->b:Lcom/yandex/div/evaluable/a;

    iput-object p3, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->c:Lcom/yandex/div/evaluable/Evaluator;

    iput-object p4, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->e:Lcom/yandex/div/json/expressions/Expression;

    iput-object p6, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->f:Loj3;

    iput-object p7, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->g:Lsnb;

    iput-object p8, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->h:Lwc3;

    iput-object p9, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->i:Lgd2;

    iput-object p10, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->j:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    new-instance p1, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$changeTrigger$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$changeTrigger$1;-><init>(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->k:Le74;

    new-instance p1, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$modeObserver$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$modeObserver$1;-><init>(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    invoke-virtual {p5, p6, p1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->l:Lqc2;

    sget-object p1, Lcom/yandex/div2/DivTrigger$Mode;->ON_CONDITION:Lcom/yandex/div2/DivTrigger$Mode;

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->m:Lcom/yandex/div2/DivTrigger$Mode;

    sget-object p1, Lqc2;->A1:Lqc2;

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->o:Lqc2;

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->p:Lqc2;

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->q:Lqc2;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->k(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;Lcom/yandex/div2/DivTrigger$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->m:Lcom/yandex/div2/DivTrigger$Mode;

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->h()V

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->i()V

    return-void
.end method

.method public static final k(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V
    .locals 1

    const-string v0, "$div2View"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/Div2View;->removePersistentDivDataObserver$div_release(Lw08;)V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->c:Lcom/yandex/div/evaluable/Evaluator;

    iget-object v2, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->b:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v1, v2}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->n:Z

    iput-boolean v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->n:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->m:Lcom/yandex/div2/DivTrigger$Mode;

    sget-object v3, Lcom/yandex/div2/DivTrigger$Mode;->ON_CONDITION:Lcom/yandex/div2/DivTrigger$Mode;

    if-ne p0, v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    instance-of v2, v1, Ljava/lang/ClassCastException;

    const-string v3, "\')"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Condition evaluated in non-boolean result! (expression: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/yandex/div/evaluable/EvaluableException;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Condition evaluation failed! (expression: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->h:Lwc3;

    invoke-virtual {p0, v2}, Lwc3;->e(Ljava/lang/Throwable;)V

    return v0

    :cond_3
    throw v1
.end method

.method public final f(Lsv2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->r:Lsv2;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->h()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->g()V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->l:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->g:Lsnb;

    iget-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->b:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->k:Le74;

    invoke-interface {v0, v1, v2, v3}, Lsnb;->c(Ljava/util/List;ZLe74;)Lqc2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->o:Lqc2;

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->g:Lsnb;

    iget-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->b:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$startObserving$1;

    invoke-direct {v2, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$startObserving$1;-><init>(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    invoke-interface {v0, v1, v2}, Lsnb;->g(Ljava/util/List;Le74;)Lqc2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->p:Lqc2;

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->e:Lcom/yandex/div/json/expressions/Expression;

    iget-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->f:Loj3;

    new-instance v2, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$startObserving$2;

    invoke-direct {v2, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$startObserving$2;-><init>(Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->l:Lqc2;

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->i()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->l:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->o:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->p:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    iget-object p0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->q:Lqc2;

    invoke-interface {p0}, Lqc2;->close()V

    return-void
.end method

.method public final i()V
    .locals 8

    invoke-static {}, Lxi;->c()V

    iget-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->r:Lsv2;

    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v0, v1, Lcom/yandex/div/core/view2/Div2View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div/core/view2/Div2View;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getInMiddleOfBind$div_release()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->j(Lcom/yandex/div/core/view2/Div2View;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->e()Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->d:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivAction;

    if-eqz v0, :cond_6

    move-object v5, v1

    check-cast v5, Lcom/yandex/div/core/view2/Div2View;

    goto :goto_3

    :cond_6
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->i:Lgd2;

    invoke-interface {v6, v5, v4}, Lgd2;->k(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAction;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->j:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v2, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->f:Loj3;

    iget-object v3, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->d:Ljava/util/List;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v4, "trigger"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V

    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->q:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    new-instance v0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor;)V

    new-instance v1, Lw9b;

    invoke-direct {v1, p1, v0}, Lw9b;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/expression/triggers/TriggerExecutor$a;)V

    iput-object v1, p0, Lcom/yandex/div/core/expression/triggers/TriggerExecutor;->q:Lqc2;

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/Div2View;->addPersistentDivDataObserver$div_release(Lw08;)V

    return-void
.end method
