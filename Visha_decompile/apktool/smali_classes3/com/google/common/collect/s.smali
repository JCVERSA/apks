.class public abstract Lcom/google/common/collect/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/s$b;,
        Lcom/google/common/collect/s$c;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/common/collect/s;->h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/s$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/s;->j(Lcom/google/common/collect/s$b;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Lcom/google/common/collect/s$b;)Lcom/google/common/collect/s$b;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/s;->i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Lcom/google/common/collect/s$b;)Lcom/google/common/collect/s$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lcom/google/common/collect/s$b;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/s;->g()Lcom/google/common/collect/s$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/collect/s;->f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/common/collect/ImmutableTable$a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$a;

    return-void
.end method

.method public static synthetic g()Lcom/google/common/collect/s$b;
    .locals 2

    new-instance v0, Lcom/google/common/collect/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/s$b;-><init>(Lcom/google/common/collect/s$a;)V

    return-object v0
.end method

.method public static synthetic h(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/google/common/collect/s$b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/s$b;Lcom/google/common/collect/s$b;)Lcom/google/common/collect/s$b;
    .locals 0

    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/s$b;->a(Lcom/google/common/collect/s$b;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/s$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/s$b;)Lcom/google/common/collect/ImmutableTable;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/s$b;->c()Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmda;

    invoke-direct {v0}, Lmda;-><init>()V

    new-instance v1, Lnda;

    invoke-direct {v1, p0, p1, p2}, Lnda;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Loda;

    invoke-direct {p0}, Loda;-><init>()V

    new-instance p1, Lpda;

    invoke-direct {p1}, Lpda;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2

    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    invoke-static {p3, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lida;

    invoke-direct {v0}, Lida;-><init>()V

    new-instance v1, Ljda;

    invoke-direct {v1, p0, p1, p2, p3}, Ljda;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance p0, Lkda;

    invoke-direct {p0, p3}, Lkda;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance p1, Llda;

    invoke-direct {p1}, Llda;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
