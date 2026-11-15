.class abstract Lcom/google/common/collect/d2;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/stream/Collector;

.field private static final b:Ljava/util/stream/Collector;

.field private static final c:Ljava/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/common/collect/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/h0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/collect/m0;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/common/collect/m0;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/common/collect/n0;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/common/collect/n0;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/google/common/collect/o0;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/google/common/collect/o0;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/common/collect/d2;->a:Ljava/util/stream/Collector;

    .line 29
    .line 30
    new-instance v0, Lcom/google/common/collect/p0;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/google/common/collect/p0;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/google/common/collect/q0;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/google/common/collect/q0;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/google/common/collect/r0;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/google/common/collect/r0;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/google/common/collect/s0;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/google/common/collect/s0;-><init>()V

    .line 48
    .line 49
    .line 50
    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 51
    .line 52
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/common/collect/d2;->b:Ljava/util/stream/Collector;

    .line 57
    .line 58
    new-instance v0, Lcom/google/common/collect/i0;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/google/common/collect/i0;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/google/common/collect/j0;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/google/common/collect/j0;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/google/common/collect/k0;

    .line 69
    .line 70
    invoke-direct {v2}, Lcom/google/common/collect/k0;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/google/common/collect/l0;

    .line 74
    .line 75
    invoke-direct {v3}, Lcom/google/common/collect/l0;-><init>()V

    .line 76
    .line 77
    .line 78
    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/google/common/collect/d2;->c:Ljava/util/stream/Collector;

    .line 85
    .line 86
    return-void
.end method

.method private static synthetic A(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/collect/j3;->putAll(Lcom/google/common/collect/j3;)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method private static synthetic B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1, p3}, Lcom/google/common/collect/t;->a(Ljava/util/function/ToIntFunction;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/common/collect/l3;->add(Ljava/lang/Object;I)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static synthetic F(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method private static synthetic G(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/common/collect/Range;

    .line 6
    .line 7
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$a;->c(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static synthetic I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic J(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$a;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static synthetic M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static N(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/d0;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/common/collect/d0;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/e0;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/e0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/common/collect/f0;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/common/collect/f0;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/common/collect/g0;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/common/collect/g0;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 29
    .line 30
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method static O()Ljava/util/stream/Collector;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/d2;->a:Ljava/util/stream/Collector;

    .line 2
    .line 3
    return-object v0
.end method

.method static P(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    const-string v0, "keyFunction"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "valueFunction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/common/collect/p1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/common/collect/p1;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/common/collect/q1;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/q1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/google/common/collect/r1;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/common/collect/s1;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/google/common/collect/s1;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 33
    .line 34
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method static Q(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/h1;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/common/collect/h1;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/i1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/i1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/common/collect/j1;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/common/collect/j1;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/common/collect/k1;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/common/collect/k1;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 29
    .line 30
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method static R(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/common/collect/x1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/common/collect/x1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/o;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Lcom/google/common/collect/y1;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/google/common/collect/y1;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method static S(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/x0;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/common/collect/x0;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/y0;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/y0;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/common/collect/z0;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/common/collect/z0;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/common/collect/a1;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/common/collect/a1;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 29
    .line 30
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method static T(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/v;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/common/collect/v;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/w;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/w;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/common/collect/x;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/common/collect/y;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/common/collect/y;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 29
    .line 30
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method static U()Ljava/util/stream/Collector;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/d2;->c:Ljava/util/stream/Collector;

    .line 2
    .line 3
    return-object v0
.end method

.method static V()Ljava/util/stream/Collector;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/d2;->b:Ljava/util/stream/Collector;

    .line 2
    .line 3
    return-object v0
.end method

.method static W(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    .line 1
    const-string v0, "keyFunction"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "valueFunction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/common/collect/t1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/common/collect/t1;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/common/collect/u1;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/u1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/google/common/collect/v1;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/common/collect/w1;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/google/common/collect/w1;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    .line 33
    .line 34
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method static X(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/common/collect/z;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/google/common/collect/z;-><init>(Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/google/common/collect/a0;

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/google/common/collect/b0;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/google/common/collect/b0;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/google/common/collect/c0;

    .line 26
    .line 27
    invoke-direct {p2}, Lcom/google/common/collect/c0;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/google/common/collect/m;->a()Ljava/util/stream/Collector$Characteristics;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v1, v2

    .line 39
    .line 40
    invoke-static {v0, p0, p1, p2, v1}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method static Y(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/common/collect/f1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/google/common/collect/f1;-><init>(Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p3, v0}, Lcom/google/common/collect/o;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/google/common/collect/g1;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/common/collect/g1;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static Z(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/collect/l1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/common/collect/l1;-><init>(Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lcom/google/common/collect/m1;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/common/collect/m1;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/common/collect/n1;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/google/common/collect/n1;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/common/collect/o1;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/google/common/collect/o1;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    .line 26
    .line 27
    invoke-static {v0, p0, v1, v2, v3}, Lcom/google/common/collect/l;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/d2;->K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/l3;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/d2;->M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/d2;->G(Lcom/google/common/collect/l3;)Lcom/google/common/collect/ImmutableMultiset;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->F(Lcom/google/common/collect/l3;Lcom/google/common/collect/l3;)Lcom/google/common/collect/l3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/d2;->J(Ljava/util/Comparator;)Ljava/util/TreeMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/d2;->D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/d2;->A(Lcom/google/common/collect/j3;Lcom/google/common/collect/j3;)Lcom/google/common/collect/j3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static s(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/t0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/common/collect/t0;-><init>(Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lcom/google/common/collect/u0;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/google/common/collect/u0;-><init>(Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->a()Lcom/google/common/collect/MultimapBuilder$d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/common/collect/v0;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/google/common/collect/v0;-><init>(Lcom/google/common/collect/MultimapBuilder$d;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/d2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Lcom/google/common/collect/w0;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/google/common/collect/w0;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method static t(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/b1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/common/collect/b1;-><init>(Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lcom/google/common/collect/c1;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/google/common/collect/c1;-><init>(Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->d()Lcom/google/common/collect/MultimapBuilder$f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/common/collect/d1;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/google/common/collect/d1;-><init>(Lcom/google/common/collect/MultimapBuilder$f;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/d2;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Lcom/google/common/collect/e1;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/google/common/collect/e1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/google/common/collect/n;->a(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method static u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/common/collect/z1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/z1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/google/common/collect/a2;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/common/collect/a2;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    .line 22
    .line 23
    invoke-static {p2, v0, p0, p1}, Lcom/google/common/collect/q;->a(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static synthetic v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Lcom/google/common/collect/b2;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/google/common/collect/b2;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/google/common/collect/s;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static synthetic x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Lcom/google/common/collect/b2;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/google/common/collect/b2;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/google/common/collect/s;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static synthetic z(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/j3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p2, p0}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1, p3}, Lcom/google/common/collect/p;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/r;->a(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/google/common/collect/c2;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/google/common/collect/c2;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/google/common/collect/u;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
