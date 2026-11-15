.class public abstract Lk91;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Lm81;

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/evaluable/EvaluableType;

.field public final f:Z


# direct methods
.method public constructor <init>(Lm81;)V
    .locals 4

    const-string v0, "componentGetter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    iput-object p1, p0, Lk91;->c:Lm81;

    new-instance p1, Lf84;

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lk91;->d:Ljava/util/List;

    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    iput-object p1, p0, Lk91;->e:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk91;->f:Z

    return-void
.end method


# virtual methods
.method public c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Lk81;->b:Lk81$a;

    invoke-virtual {v1, v0}, Lk81$a;->b(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lk91;->c:Lm81;

    invoke-static {p3}, Lk81;->c(I)Lk81;

    move-result-object p3

    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/evaluable/Function;->h(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unable to convert value to Color, expected format #AARRGGBB."

    invoke-static {p0, p3, p2, p1}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->f(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lk91;->d:Ljava/util/List;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lk91;->e:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lk91;->f:Z

    return p0
.end method
