.class public abstract Lgb2;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Lcom/yandex/div/evaluable/EvaluableType;

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lf84;

    sget-object v6, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v5, v6, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lf84;

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;Z)V

    filled-new-array {v0, v5, v2}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb2;->c:Ljava/util/List;

    iput-object v1, p0, Lgb2;->d:Lcom/yandex/div/evaluable/EvaluableType;

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const-string p0, "evaluationContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionContext"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-static {p3, p1, p0, p2, v0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->c(Ljava/util/List;Ljava/lang/Object;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgb2;->c:Ljava/util/List;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lgb2;->d:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lgb2;->e:Z

    return p0
.end method
