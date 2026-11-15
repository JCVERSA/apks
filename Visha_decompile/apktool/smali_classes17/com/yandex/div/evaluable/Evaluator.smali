.class public Lcom/yandex/div/evaluable/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/evaluable/Evaluator$a;,
        Lcom/yandex/div/evaluable/Evaluator$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/evaluable/Evaluator$a;


# instance fields
.field public final a:Lpd3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/evaluable/Evaluator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/evaluable/Evaluator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/evaluable/Evaluator;->b:Lcom/yandex/div/evaluable/Evaluator$a;

    return-void
.end method

.method public constructor <init>(Lpd3;)V
    .locals 1

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/evaluable/Evaluator;->a:Lpd3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_1

    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_2

    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object p1

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    invoke-static {p1}, Ly71;->m(Ljava/util/List;)I

    move-result v4

    invoke-static {v1, v4}, Lwn8;->g(II)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf84;

    invoke-virtual {v1}, Lf84;->a()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object v1

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->Companion:Lcom/yandex/div/evaluable/EvaluableType$a;

    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_1
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_2
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->BOOLEAN:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_3
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_4
    instance-of v4, v2, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->DATETIME:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_5
    instance-of v4, v2, Lk81;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_6
    instance-of v4, v2, Lvib;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->URL:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_7
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_8
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    :goto_1
    if-eq v1, v4, :cond_9

    invoke-virtual {p0, v2, v1}, Lcom/yandex/div/evaluable/Evaluator;->c(Ljava/lang/Object;Lcom/yandex/div/evaluable/EvaluableType;)Ljava/lang/Object;

    move-result-object v2

    :cond_9
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_a
    const/4 p0, 0x2

    const/4 p1, 0x0

    if-nez v2, :cond_b

    new-instance p2, Lcom/yandex/div/evaluable/EvaluableException;

    const-string v0, "Unable to find type for null"

    invoke-direct {p2, v0, p1, p0, p1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    :cond_b
    new-instance p2, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1, p0, p1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    :cond_c
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lcom/yandex/div/evaluable/EvaluableType;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/yandex/div/evaluable/Evaluator$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;
    .locals 1

    const-string v0, "expr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/evaluable/a;->c(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p1, v0, p0}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public e(Lcom/yandex/div/evaluable/a$a;)Ljava/lang/Object;
    .locals 4

    const-string v0, "binary"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$d;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object v1

    check-cast v1, Lgpa$c$a$d;

    new-instance v2, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;

    invoke-direct {v2, p0, p1}, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;-><init>(Lcom/yandex/div/evaluable/Evaluator;Lcom/yandex/div/evaluable/a$a;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/yandex/div/evaluable/Evaluator;->j(Lgpa$c$a$d;Ljava/lang/Object;Lc74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/evaluable/Evaluator;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object v2

    instance-of v3, v2, Lgpa$c$a$b;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p1

    check-cast p1, Lgpa$c$a$b;

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/div/evaluable/Evaluator;->h(Lgpa$c$a$b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lgpa$c$a$f;

    if-eqz v3, :cond_2

    sget-object p0, Lcom/yandex/div/evaluable/Evaluator;->b:Lcom/yandex/div/evaluable/Evaluator$a;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p1

    check-cast p1, Lgpa$c$a$f;

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/div/evaluable/Evaluator$a;->b(Lgpa$c$a$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lgpa$c$a$c;

    if-eqz v3, :cond_3

    sget-object p0, Lcom/yandex/div/evaluable/Evaluator;->b:Lcom/yandex/div/evaluable/Evaluator$a;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p1

    check-cast p1, Lgpa$c$a$c;

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/div/evaluable/Evaluator$a;->a(Lgpa$c$a$c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v2, v2, Lgpa$c$a$a;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p1

    check-cast p1, Lgpa$c$a$a;

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/div/evaluable/Evaluator;->g(Lgpa$c$a$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->c(Lgpa$c$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$a;->j()Lgpa$c$a;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->c(Lgpa$c$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final f(Lgpa$c$a$a;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 2

    instance-of p0, p1, Lgpa$c$a$a$c;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_3

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lgpa$c$a$a$d;

    if-eqz p0, :cond_1

    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lgpa$c$a$a$b;

    if-eqz p0, :cond_2

    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lgpa$c$a$a$a;

    if-eqz p0, :cond_4

    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final g(Lgpa$c$a$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/evaluable/Evaluator;->f(Lgpa$c$a$a;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/evaluable/Evaluator;->f(Lgpa$c$a$a;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/evaluable/Evaluator;->f(Lgpa$c$a$a;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->c(Lgpa$c$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final h(Lgpa$c$a$b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lgpa$c$a$b$a;

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lgpa$c$a$b$b;

    if-eqz p0, :cond_2

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public i(Lcom/yandex/div/evaluable/a$c;)Ljava/lang/Object;
    .locals 7

    const-string v0, "functionCall"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/evaluable/a;

    invoke-virtual {p0, v1}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/evaluable/a;->g(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/yandex/div/evaluable/EvaluableType;->Companion:Lcom/yandex/div/evaluable/EvaluableType$a;

    instance-of v6, v3, Ljava/lang/Long;

    if-eqz v6, :cond_1

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_1
    instance-of v6, v3, Ljava/lang/Double;

    if-eqz v6, :cond_2

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_2
    instance-of v6, v3, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->BOOLEAN:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_3
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_4
    instance-of v6, v3, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v6, :cond_5

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DATETIME:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_5
    instance-of v6, v3, Lk81;

    if-eqz v6, :cond_6

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_6
    instance-of v6, v3, Lvib;

    if-eqz v6, :cond_7

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->URL:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_7
    instance-of v6, v3, Lorg/json/JSONObject;

    if-eqz v6, :cond_8

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_8
    instance-of v6, v3, Lorg/json/JSONArray;

    if-eqz v6, :cond_9

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "Unable to find type for null"

    invoke-direct {p0, p1, v5, v4, v5}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find type for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5, v4, v5}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_b
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->a()Ll84;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$c;->i()Lgpa$a;

    move-result-object v3

    invoke-virtual {v3}, Lgpa$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ll84;->b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object v0
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p1}, Lkj3;->a(Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/Function;->i()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/yandex/div/evaluable/Evaluator;->b(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object p0

    invoke-virtual {v0, p0, v1, p1}, Lcom/yandex/div/evaluable/Function;->h(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lcom/yandex/div/evaluable/IntegerOverflow; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/yandex/div/evaluable/IntegerOverflow;

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5, v4, v5}, Lcom/yandex/div/evaluable/IntegerOverflow;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$c;->i()Lgpa$a;

    move-result-object p1

    invoke-virtual {p1}, Lgpa$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, ""

    :cond_c
    move-object v3, p0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->g(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final j(Lgpa$c$a$d;Ljava/lang/Object;Lc74;)Ljava/lang/Object;
    .locals 1

    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_6

    instance-of p0, p1, Lgpa$c$a$d$b;

    if-eqz p0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    instance-of v0, p1, Lgpa$c$a$d$a;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p3}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_4
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1, p2, p3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->c(Lgpa$c$a;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ..."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be called with boolean operands."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-static {p0, p1, p3, p2, p3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public k(Lcom/yandex/div/evaluable/a$e;)Ljava/lang/Object;
    .locals 5

    const-string v0, "methodCall"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$e;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/evaluable/a;

    invoke-virtual {p0, v2}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/evaluable/a;->g(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/EvaluableType;->Companion:Lcom/yandex/div/evaluable/EvaluableType$a;

    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_1

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_1
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_2

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->BOOLEAN:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_4
    instance-of v4, v3, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v4, :cond_5

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DATETIME:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_5
    instance-of v4, v3, Lk81;

    if-eqz v4, :cond_6

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_6
    instance-of v4, v3, Lvib;

    if-eqz v4, :cond_7

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->URL:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_7
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_8

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_2

    :cond_8
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_9

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/4 p0, 0x2

    const/4 p1, 0x0

    if-nez v3, :cond_a

    new-instance v0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string v1, "Unable to find type for null"

    invoke-direct {v0, v1, p1, p0, p1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_b
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object v2

    invoke-virtual {v2}, Lpd3;->a()Ll84;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$e;->i()Lgpa$a;

    move-result-object v3

    invoke-virtual {v3}, Lgpa$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ll84;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object v1
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lkj3;->a(Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/Function;->i()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object p1

    invoke-virtual {p0, v1, v0}, Lcom/yandex/div/evaluable/Evaluator;->b(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Lcom/yandex/div/evaluable/Function;->h(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$e;->i()Lgpa$a;

    move-result-object p1

    invoke-virtual {p1}, Lgpa$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-static {p1, v0, v1, p0}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->h(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public l(Lcom/yandex/div/evaluable/a$f;)Ljava/lang/String;
    .locals 10

    const-string v0, "stringTemplate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$f;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/evaluable/a;

    invoke-virtual {p0, v2}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/evaluable/a;->g(Z)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m(Lcom/yandex/div/evaluable/a$g;)Ljava/lang/Object;
    .locals 4

    const-string v0, "ternary"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->k()Lgpa$c;

    move-result-object v0

    instance-of v0, v0, Lgpa$c$e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/evaluable/a;->g(Z)V

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/evaluable/a;->g(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->j()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->j()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/evaluable/a;->g(Z)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ? "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->j()Lcom/yandex/div/evaluable/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ternary must be called with a Boolean value as a condition."

    invoke-static {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a;->e()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$g;->k()Lgpa$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was incorrectly parsed as a ternary operator."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public n(Lcom/yandex/div/evaluable/a$h;)Ljava/lang/Object;
    .locals 2

    const-string v0, "tryEvaluable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$h;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$h;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$h;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$h;->h()Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/evaluable/a;->g(Z)V

    :goto_1
    return-object v0
.end method

.method public o(Lcom/yandex/div/evaluable/a$i;)Ljava/lang/Object;
    .locals 4

    const-string v0, "unary"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$i;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$i;->h()Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/evaluable/a;->g(Z)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$i;->i()Lgpa$c;

    move-result-object v0

    instance-of v1, v0, Lgpa$c$g$c;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "A Number is expected after a unary plus."

    invoke-static {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    instance-of v1, v0, Lgpa$c$g$a;

    if-eqz v1, :cond_5

    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_3
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "A Number is expected after a unary minus."

    invoke-static {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    sget-object v1, Lgpa$c$g$b;->a:Lgpa$c$g$b;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of p1, p0, Ljava/lang/Boolean;

    if-nez p1, :cond_7

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, "\'"

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "A Boolean is expected after a unary not."

    invoke-static {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableExceptionKt;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_7
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_8
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$i;->i()Lgpa$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was incorrectly parsed as a unary operator."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v3, v0, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public p(Lcom/yandex/div/evaluable/a$j;)Ljava/lang/Object;
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$j;->h()Lgpa$b$a;

    move-result-object p0

    instance-of p1, p0, Lgpa$b$a$b;

    if-eqz p1, :cond_0

    check-cast p0, Lgpa$b$a$b;

    invoke-virtual {p0}, Lgpa$b$a$b;->f()Ljava/lang/Number;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lgpa$b$a$a;

    if-eqz p1, :cond_1

    check-cast p0, Lgpa$b$a$a;

    invoke-virtual {p0}, Lgpa$b$a$a;->f()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lgpa$b$a$c;

    if-eqz p1, :cond_2

    check-cast p0, Lgpa$b$a$c;

    invoke-virtual {p0}, Lgpa$b$a$c;->f()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public q(Lcom/yandex/div/evaluable/a$k;)Ljava/lang/Object;
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Evaluator;->r()Lpd3;

    move-result-object p0

    invoke-virtual {p0}, Lpd3;->c()Lcob;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcob;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/div/evaluable/MissingVariableException;

    invoke-virtual {p1}, Lcom/yandex/div/evaluable/a$k;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/evaluable/MissingVariableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public r()Lpd3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/Evaluator;->a:Lpd3;

    return-object p0
.end method
