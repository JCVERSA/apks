.class public final Lrn5;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/evaluable/EvaluableType;

.field public final f:Ljava/util/List;

.field public final g:Z

.field public final h:Lcom/yandex/div/evaluable/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/yandex/div/evaluable/EvaluableType;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declaredArgs"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argNames"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    iput-object p1, p0, Lrn5;->c:Ljava/lang/String;

    iput-object p2, p0, Lrn5;->d:Ljava/util/List;

    iput-object p3, p0, Lrn5;->e:Lcom/yandex/div/evaluable/EvaluableType;

    iput-object p4, p0, Lrn5;->f:Ljava/util/List;

    sget-object p1, Lcom/yandex/div/evaluable/a;->d:Lcom/yandex/div/evaluable/a$b;

    invoke-virtual {p1, p5}, Lcom/yandex/div/evaluable/a$b;->a(Ljava/lang/String;)Lcom/yandex/div/evaluable/a;

    move-result-object p1

    iput-object p1, p0, Lrn5;->h:Lcom/yandex/div/evaluable/a;

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "args"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lrn5;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :cond_1
    new-instance p3, Lrnb;

    invoke-virtual {p1}, Lpd3;->c()Lcob;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.core.expression.variables.VariableController"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lsnb;

    new-instance v1, Lvf1;

    invoke-direct {v1, p2}, Lvf1;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, v0, v1}, Lrnb;-><init>(Lsnb;Lvf1;)V

    new-instance p2, Lpd3;

    invoke-virtual {p1}, Lpd3;->b()Ldy9;

    move-result-object v0

    invoke-virtual {p1}, Lpd3;->a()Ll84;

    move-result-object v1

    invoke-virtual {p1}, Lpd3;->d()Lqgc;

    move-result-object p1

    invoke-direct {p2, p3, v0, v1, p1}, Lpd3;-><init>(Lcob;Ldy9;Ll84;Lqgc;)V

    new-instance p1, Lcom/yandex/div/evaluable/Evaluator;

    invoke-direct {p1, p2}, Lcom/yandex/div/evaluable/Evaluator;-><init>(Lpd3;)V

    iget-object p0, p0, Lrn5;->h:Lcom/yandex/div/evaluable/a;

    invoke-virtual {p1, p0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lrn5;->d:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrn5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lrn5;->e:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lrn5;->g:Z

    return p0
.end method
