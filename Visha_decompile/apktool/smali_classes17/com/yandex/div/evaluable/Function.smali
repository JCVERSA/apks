.class public abstract Lcom/yandex/div/evaluable/Function;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/evaluable/Function$b;,
        Lcom/yandex/div/evaluable/Function$c;,
        Lcom/yandex/div/evaluable/Function$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/evaluable/Function$b;

.field public static final b:Lcom/yandex/div/evaluable/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/evaluable/Function$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/evaluable/Function$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/evaluable/Function;->a:Lcom/yandex/div/evaluable/Function$b;

    new-instance v0, Lcom/yandex/div/evaluable/Function$a;

    invoke-direct {v0}, Lcom/yandex/div/evaluable/Function$a;-><init>()V

    sput-object v0, Lcom/yandex/div/evaluable/Function;->b:Lcom/yandex/div/evaluable/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/evaluable/Function;Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/evaluable/Function;->b(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Z
    .locals 1

    sget-object p0, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/yandex/div/evaluable/Function$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public abstract c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
.end method

.method public abstract d()Ljava/util/List;
.end method

.method public final e()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf84;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf84;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lcom/yandex/div/evaluable/EvaluableType;
.end method

.method public final h(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    const-string v0, "evaluationContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/evaluable/Function;->c(Lpd3;Lcom/yandex/div/evaluable/a;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/yandex/div/evaluable/EvaluableType;->Companion:Lcom/yandex/div/evaluable/EvaluableType$a;

    instance-of p2, p1, Ljava/lang/Long;

    const-string p3, "Unable to find type for "

    const-string v0, "Unable to find type for null"

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_0
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->BOOLEAN:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_3
    instance-of v3, p1, Lcom/yandex/div/evaluable/types/DateTime;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DATETIME:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_4
    instance-of v3, p1, Lk81;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_5
    instance-of v3, p1, Lvib;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->URL:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_6
    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_0

    :cond_7
    instance-of v3, p1, Lorg/json/JSONArray;

    if-eqz v3, :cond_13

    sget-object v3, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->g()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object v4

    if-eq v3, v4, :cond_12

    new-instance v3, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_11

    instance-of p2, p1, Ljava/lang/Double;

    if-nez p2, :cond_10

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_f

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_e

    instance-of p2, p1, Lcom/yandex/div/evaluable/types/DateTime;

    if-nez p2, :cond_d

    instance-of p2, p1, Lk81;

    if-nez p2, :cond_c

    instance-of p2, p1, Lvib;

    if-nez p2, :cond_b

    instance-of p2, p1, Lorg/json/JSONObject;

    if-nez p2, :cond_a

    instance-of p2, p1, Lorg/json/JSONArray;

    if-nez p2, :cond_9

    if-nez p1, :cond_8

    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_9
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->ARRAY:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->DICT:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_b
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->URL:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_c
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->COLOR:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_d
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->DATETIME:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_e
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->STRING:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_f
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->BOOLEAN:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_10
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->NUMBER:Lcom/yandex/div/evaluable/EvaluableType;

    goto :goto_1

    :cond_11
    sget-object p1, Lcom/yandex/div/evaluable/EvaluableType;->INTEGER:Lcom/yandex/div/evaluable/EvaluableType;

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->g()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was expected."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_12
    return-object p1

    :cond_13
    if-nez p1, :cond_14

    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_14
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public abstract i()Z
.end method

.method public final j(Ljava/util/List;Ls74;)Lcom/yandex/div/evaluable/Function$c;
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ly71;->m(Ljava/util/List;)I

    move-result v3

    invoke-static {v1, v3}, Lwn8;->g(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf84;

    invoke-virtual {v2}, Lf84;->a()Lcom/yandex/div/evaluable/EvaluableType;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p0, Lcom/yandex/div/evaluable/Function$c$b;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/evaluable/EvaluableType;

    invoke-direct {p0, v2, p1}, Lcom/yandex/div/evaluable/Function$c$b;-><init>(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)V

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    return-object p0

    :cond_4
    :goto_2
    new-instance p0, Lcom/yandex/div/evaluable/Function$c$a;

    invoke-direct {p0, v0}, Lcom/yandex/div/evaluable/Function$c$a;-><init>(I)V

    return-object p0
.end method

.method public final k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;
    .locals 1

    const-string v0, "argTypes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/evaluable/Function$matchesArguments$1;->INSTANCE:Lcom/yandex/div/evaluable/Function$matchesArguments$1;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/Function;->j(Ljava/util/List;Ls74;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    return-object p0
.end method

.method public final l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;
    .locals 1

    const-string v0, "argTypes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;-><init>(Lcom/yandex/div/evaluable/Function;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/Function;->j(Ljava/util/List;Ls74;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->d()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/yandex/div/evaluable/Function$toString$1;->INSTANCE:Lcom/yandex/div/evaluable/Function$toString$1;

    const/16 v8, 0x19

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v4, ")"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
