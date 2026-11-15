.class public abstract Lhh;
.super Lih;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {p0, v0}, Lih;-><init>(Lcom/yandex/div/evaluable/EvaluableType;)V

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lf84;

    sget-object v5, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v1, v5, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lf84;

    sget-object v6, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {v5, v6, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1, v5}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhh;->f:Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->e(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->f(Ljava/lang/String;)Lk81;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->f(Ljava/lang/String;)Lk81;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v2, "Unable to convert value to Color, expected format #AARRGGBB."

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/evaluable/function/ArrayFunctionsKt;->i(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lhh;->f:Ljava/util/List;

    return-object p0
.end method
