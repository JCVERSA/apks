.class public abstract Lza2;
.super Lcom/yandex/div/evaluable/Function;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public final d:Ljava/util/List;

.field public final e:Lcom/yandex/div/evaluable/EvaluableType;

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/yandex/div/evaluable/Function;-><init>()V

    new-instance v0, Lf84;

    sget-object v1, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lf84;

    sget-object v2, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lf84;-><init>(Lcom/yandex/div/evaluable/EvaluableType;Z)V

    filled-new-array {v0, v1}, [Lf84;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lza2;->d:Ljava/util/List;

    sget-object v0, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    iput-object v0, p0, Lza2;->e:Lcom/yandex/div/evaluable/EvaluableType;

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

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p2, p1, Ljava/math/BigInteger;

    const-string v0, "Integer overflow."

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/math/BigDecimal;

    const-string v1, "Cannot convert value to integer."

    if-nez p2, :cond_5

    instance-of p2, p1, Ljava/lang/Double;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p2, v2, v4

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p2, v2, v4

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ls86;->d(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    long-to-double v4, v2

    sub-double/2addr p1, v4

    const-wide/16 v4, 0x0

    cmpg-double p1, p1, v4

    if-nez p1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p0

    invoke-static {p1, p3, v1, p0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p0

    invoke-static {p1, p3, v0, p0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lza2;->g()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object v0

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p0

    invoke-static {p2, p3, v0, p1, p0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->g(Ljava/lang/String;Ljava/util/List;Lcom/yandex/div/evaluable/EvaluableType;Ljava/lang/Object;Z)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p0

    invoke-static {p1, p3, v1, p0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lza2;->m()Z

    move-result p0

    invoke-static {p1, p3, v0, p0}, Lcom/yandex/div/evaluable/function/DictFunctionsKt;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lza2;->d:Ljava/util/List;

    return-object p0
.end method

.method public g()Lcom/yandex/div/evaluable/EvaluableType;
    .locals 0

    iget-object p0, p0, Lza2;->e:Lcom/yandex/div/evaluable/EvaluableType;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lza2;->f:Z

    return p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lza2;->c:Z

    return p0
.end method
