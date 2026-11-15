.class public final Lcom/google/common/collect/ImmutableSetMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/Iterable;)I
    .locals 0

    instance-of p0, p2, Ljava/util/Set;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public e(I)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->m(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->n(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->p(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    move-result-object p0

    return-object p0
.end method

.method public k()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSetMultimap;->fromMapBuilderEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public l(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->b(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public n(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public o(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    return-object p0
.end method
