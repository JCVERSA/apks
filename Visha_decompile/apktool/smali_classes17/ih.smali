.class public abstract Lih;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Lcom/yandex/div/evaluable/EvaluableType;

.field public final d:Ljava/util/List;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/EvaluableType;)V
    .locals 6

    const-string v0, "resultType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    iput-object p1, p0, Lih;->c:Lcom/yandex/div/evaluable/EvaluableType;

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

    invoke-direct {v5, p1, v2, v3, v4}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v1, v5}, [Lf84;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lih;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lih;->d:Ljava/util/List;

    return-object p0
.end method

.method public final g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lih;->c:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lih;->e:Z

    return p0
.end method
