.class public abstract Ln81;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Ls74;

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/evaluable/EvaluableType;

.field public final f:Z


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 6

    const-string v0, "componentSetter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    iput-object p1, p0, Ln81;->c:Ls74;

    new-instance p1, Lf84;

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lf84;

    sget-object v5, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v4, v5, v1, v2, v3}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {p1, v4}, [Lf84;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln81;->d:Ljava/util/List;

    iput-object v0, p0, Ln81;->e:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln81;->f:Z

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "expressionContext"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lk81;

    invoke-virtual {p1}, Lk81;->k()I

    move-result p1

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    :try_start_0
    iget-object p3, p0, Ln81;->c:Ls74;

    invoke-static {p1}, Lk81;->c(I)Lk81;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk81;

    invoke-virtual {p3}, Lk81;->k()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lk81;->c(I)Lk81;

    move-result-object p0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lk81;->j(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v2, "Value out of range 0..1."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->g(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln81;->d:Ljava/util/List;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Ln81;->e:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Ln81;->f:Z

    return p0
.end method
