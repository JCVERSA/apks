.class public final Lf84;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/evaluable/EvaluableType;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/EvaluableType;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    .line 3
    iput-boolean p2, p0, Lf84;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lf84;->b:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf84;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lf84;

    iget-object v1, p0, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    iget-object v3, p1, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lf84;->b:Z

    iget-boolean p1, p1, Lf84;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lf84;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FunctionArgument(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf84;->a:Lcom/yandex/div/evaluable/EvaluableType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVariadic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lf84;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
