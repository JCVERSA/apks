.class public final Lcom/yandex/div/core/expression/ExpressionResolverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lcom/yandex/div/core/expression/local/RuntimeStore;

.field public final e:Lsnb;

.field public final f:Lcom/yandex/div/evaluable/Evaluator;

.field public final g:Lwc3;

.field public final h:Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/core/expression/local/RuntimeStore;Lsnb;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeStore"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollector"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCreateCallback"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    iput-object p3, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->e:Lsnb;

    iput-object p4, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f:Lcom/yandex/div/evaluable/Evaluator;

    iput-object p5, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g:Lwc3;

    iput-object p6, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->h:Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->i:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->j:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->k:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object p1

    invoke-virtual {p1}, Lpd3;->a()Ll84;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.yandex.div.core.expression.FunctionProviderDecorator"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm84;

    invoke-interface {p6, p0, p3, p1}, Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;->a(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->p(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V

    return-void
.end method

.method public static final synthetic e(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->k:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static final l(Lzbb;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lzbb;->a()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final p(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rawExpression"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->k:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd7;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lqd7;->p(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Lc74;)Lqc2;
    .locals 3

    const-string v0, "rawExpression"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableNames"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lqd7;

    invoke-direct {v0}, Lqd7;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v0, Lqd7;

    invoke-virtual {v0, p3}, Lqd7;->j(Ljava/lang/Object;)Z

    new-instance p2, Lpj3;

    invoke-direct {p2, p0, p1, p3}, Lpj3;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Ljava/lang/String;Lc74;)V

    return-object p2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;Llx7;)Ljava/lang/Object;
    .locals 3

    const-string v0, "expressionKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawExpression"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldType"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->r(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object v1

    sget-object v2, Lcom/yandex/div/json/ParsingExceptionReason;->MISSING_VARIABLE:Lcom/yandex/div/json/ParsingExceptionReason;

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->l:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lmx7;->d()Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_0
    throw v0

    :cond_1
    invoke-interface {p7, v0}, Llx7;->c(Ljava/lang/Exception;)V

    iget-object p7, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g:Lwc3;

    invoke-virtual {p7, v0}, Lwc3;->e(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->r(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public c(Lcom/yandex/div/json/ParsingException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g:Lwc3;

    invoke-virtual {p0, p1}, Lwc3;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    check-cast p1, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    iget-object v2, p1, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h(Ljava/lang/String;Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->i:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/yandex/div/core/expression/local/RuntimeStore;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-object p0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Le74;Ljava/lang/Object;Lzbb;)Ljava/lang/Object;
    .locals 0

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p3, p4}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {p5, p4}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->l(Lzbb;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_2
    return-object p4

    :catch_0
    move-exception p0

    invoke-static {p1, p2, p4, p0}, Lmx7;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p1, p2, p4, p0}, Lmx7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Lpnb;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-interface {p3, p4}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p4}, Lmx7;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p1, p2, p4, p0}, Lmx7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->l:Z

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->e:Lsnb;

    new-instance v1, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)V

    invoke-interface {v0, p0, v1}, Lsnb;->j(Loj3;Le74;)V

    return-void
.end method

.method public final q(Lcom/yandex/div/evaluable/EvaluableException;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div/evaluable/MissingVariableException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div/evaluable/MissingVariableException;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/MissingVariableException;->getVariableName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->h(Ljava/lang/String;Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p6, p3}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p4, "null cannot be cast to non-null type T of com.yandex.div.core.expression.ExpressionResolverImpl.tryResolve"

    invoke-static {p3, p4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->k(Ljava/lang/String;Ljava/lang/String;Le74;Ljava/lang/Object;Lzbb;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    move-object p3, p4

    :goto_0
    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->m(Ljava/lang/String;Ljava/lang/String;Lpnb;Ljava/lang/Object;)V

    return-object p3

    :cond_1
    invoke-static {p1, p2, p3}, Lmx7;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p3

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->q(Lcom/yandex/div/evaluable/EvaluableException;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p1, p2, p0, p3}, Lmx7;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {p1, p2, p3}, Lmx7;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public final s(Ljava/lang/Object;I)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "element"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g:Lwc3;

    invoke-static {p2, p1}, Lmx7;->u(ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final t(Ljava/lang/String;Lvf1;)Lcom/yandex/div/core/expression/ExpressionResolverImpl;
    .locals 8

    const-string v0, "pathSegment"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constants"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lrnb;

    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->e:Lsnb;

    invoke-direct {v4, v0, p2}, Lrnb;-><init>(Lsnb;Lvf1;)V

    new-instance p2, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->d:Lcom/yandex/div/core/expression/local/RuntimeStore;

    new-instance v5, Lcom/yandex/div/evaluable/Evaluator;

    new-instance p1, Lpd3;

    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v0

    invoke-virtual {v0}, Lpd3;->b()Ldy9;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->a()Ll84;

    move-result-object v1

    iget-object v6, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f:Lcom/yandex/div/evaluable/Evaluator;

    invoke-virtual {v6}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v6

    invoke-virtual {v6}, Lpd3;->d()Lqgc;

    move-result-object v6

    invoke-direct {p1, v4, v0, v1, v6}, Lpd3;-><init>(Lcob;Ldy9;Ll84;Lqgc;)V

    invoke-direct {v5, p1}, Lcom/yandex/div/evaluable/Evaluator;-><init>(Lpd3;)V

    iget-object v6, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g:Lwc3;

    iget-object v7, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->h:Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;-><init>(Ljava/lang/String;Lcom/yandex/div/core/expression/local/RuntimeStore;Lsnb;Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;)V

    return-object p2
.end method
