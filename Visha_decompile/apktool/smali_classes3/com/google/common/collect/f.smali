.class public abstract Lcom/google/common/collect/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/stream/Collector;

.field public static final b:Ljava/util/stream/Collector;

.field public static final c:Ljava/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lf51;

    invoke-direct {v0}, Lf51;-><init>()V

    new-instance v1, Li51;

    invoke-direct {v1}, Li51;-><init>()V

    new-instance v2, Lj51;

    invoke-direct {v2}, Lj51;-><init>()V

    new-instance v3, Lk51;

    invoke-direct {v3}, Lk51;-><init>()V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/f;->a:Ljava/util/stream/Collector;

    new-instance v0, Ll51;

    invoke-direct {v0}, Ll51;-><init>()V

    new-instance v1, Lm51;

    invoke-direct {v1}, Lm51;-><init>()V

    new-instance v2, Lo51;

    invoke-direct {v2}, Lo51;-><init>()V

    new-instance v3, Lp51;

    invoke-direct {v3}, Lp51;-><init>()V

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/f;->b:Ljava/util/stream/Collector;

    new-instance v0, Lq51;

    invoke-direct {v0}, Lq51;-><init>()V

    new-instance v1, Lr51;

    invoke-direct {v1}, Lr51;-><init>()V

    new-instance v2, Lg51;

    invoke-direct {v2}, Lg51;-><init>()V

    new-instance v3, Lh51;

    invoke-direct {v3}, Lh51;-><init>()V

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/f;->c:Ljava/util/stream/Collector;

    return-void
.end method

.method public static synthetic A(Lat6;Lat6;)Lat6;
    .locals 0

    invoke-interface {p0, p1}, Lat6;->putAll(Lat6;)Z

    return-object p0
.end method

.method public static synthetic B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    return-void
.end method

.method public static synthetic C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$a;->m(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    return-void
.end method

.method public static synthetic D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-void
.end method

.method public static synthetic E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/j;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/common/collect/j;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method public static synthetic F(Lcom/google/common/collect/j;Lcom/google/common/collect/j;)Lcom/google/common/collect/j;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static synthetic G(Lcom/google/common/collect/j;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/j;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$a;->c(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$a;

    return-void
.end method

.method public static synthetic I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->m(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    return-void
.end method

.method public static synthetic J(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$a;

    return-void
.end method

.method public static synthetic M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static N(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Li71;

    invoke-direct {v0}, Li71;-><init>()V

    new-instance v1, Lj71;

    invoke-direct {v1, p0, p1}, Lj71;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Ld51;

    invoke-direct {p0}, Ld51;-><init>()V

    new-instance p1, Le51;

    invoke-direct {p1}, Le51;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static O()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/f;->a:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static P(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lq61;

    invoke-direct {v0}, Lq61;-><init>()V

    new-instance v1, Lr61;

    invoke-direct {v1, p0, p1}, Lr61;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Ls61;

    invoke-direct {p0}, Ls61;-><init>()V

    new-instance p1, Lt61;

    invoke-direct {p1}, Lt61;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lh61;

    invoke-direct {v0}, Lh61;-><init>()V

    new-instance v1, Li61;

    invoke-direct {v1, p0, p1}, Li61;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lk61;

    invoke-direct {p0}, Lk61;-><init>()V

    new-instance p1, Ll61;

    invoke-direct {p1}, Ll61;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lz61;

    invoke-direct {v0}, Lz61;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, La71;

    invoke-direct {p1}, La71;-><init>()V

    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw51;

    invoke-direct {v0}, Lw51;-><init>()V

    new-instance v1, Lx51;

    invoke-direct {v1, p0, p1}, Lx51;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance p0, Lz51;

    invoke-direct {p0}, Lz51;-><init>()V

    new-instance p1, La61;

    invoke-direct {p1}, La61;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc51;

    invoke-direct {v0}, Lc51;-><init>()V

    new-instance v1, Ln51;

    invoke-direct {v1, p0, p1}, Ln51;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Ly51;

    invoke-direct {p0}, Ly51;-><init>()V

    new-instance p1, Lj61;

    invoke-direct {p1}, Lj61;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static U()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/f;->c:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static V()Ljava/util/stream/Collector;
    .locals 1

    sget-object v0, Lcom/google/common/collect/f;->b:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static W(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3

    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv61;

    invoke-direct {v0}, Lv61;-><init>()V

    new-instance v1, Lw61;

    invoke-direct {v1, p0, p1}, Lw61;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lx61;

    invoke-direct {p0}, Lx61;-><init>()V

    new-instance p1, Ly61;

    invoke-direct {p1}, Ly61;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu61;

    invoke-direct {v0, p0}, Lu61;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lf71;

    invoke-direct {p0, p1, p2}, Lf71;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lg71;

    invoke-direct {p1}, Lg71;-><init>()V

    new-instance p2, Lh71;

    invoke-direct {p2}, Lh71;-><init>()V

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    filled-new-array {v1}, [Ljava/util/stream/Collector$Characteristics;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lf61;

    invoke-direct {v0, p0}, Lf61;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, p2, p3, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lg61;

    invoke-direct {p1}, Lg61;-><init>()V

    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Ln61;

    invoke-direct {p0}, Ln61;-><init>()V

    new-instance v1, Lo61;

    invoke-direct {v1}, Lo61;-><init>()V

    new-instance v2, Lp61;

    invoke-direct {v2}, Lp61;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/f;->K(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/j;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->E(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/j;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->C(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/f;->M(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/google/common/collect/j;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/f;->G(Lcom/google/common/collect/j;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/j;Lcom/google/common/collect/j;)Lcom/google/common/collect/j;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->F(Lcom/google/common/collect/j;Lcom/google/common/collect/j;)Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/f;->J(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->H(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->L(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/function/Function;Ljava/util/function/Function;Lat6;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->z(Ljava/util/function/Function;Ljava/util/function/Function;Lat6;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->I(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->B(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$a;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/f;->D(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Lat6;Lat6;)Lat6;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f;->A(Lat6;Lat6;)Lat6;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls51;

    invoke-direct {v0, p0}, Ls51;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lt51;

    invoke-direct {p0, p1}, Lt51;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->a()Lcom/google/common/collect/MultimapBuilder$d;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu51;

    invoke-direct {v1, p1}, Lu51;-><init>(Lcom/google/common/collect/MultimapBuilder$d;)V

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/f;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lv51;

    invoke-direct {p1}, Lv51;-><init>()V

    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb61;

    invoke-direct {v0, p0}, Lb61;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lc61;

    invoke-direct {p0, p1}, Lc61;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->c()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->d()Lcom/google/common/collect/MultimapBuilder$f;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ld61;

    invoke-direct {v1, p1}, Ld61;-><init>(Lcom/google/common/collect/MultimapBuilder$f;)V

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/f;->u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Le61;

    invoke-direct {p1}, Le61;-><init>()V

    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb71;

    invoke-direct {v0, p0, p1}, Lb71;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lc71;

    invoke-direct {p0}, Lc71;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance p1, Ld71;

    invoke-direct {p1}, Ld71;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance p1, Ld71;

    invoke-direct {p1}, Ld71;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/util/function/Function;Ljava/util/function/Function;Lat6;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lat6;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Le71;

    invoke-direct {p2, p0}, Le71;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method
