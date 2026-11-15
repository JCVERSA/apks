.class public final Lcom/google/common/collect/ImmutableSetMultimap$a;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "source.java"


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

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method d(ILjava/lang/Iterable;)I
    .locals 1

    .line 1
    instance-of v0, p2, Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_0
    return p1
.end method

.method e(I)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableSet$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/common/collect/ImmutableSortedSet$a;

    .line 11
    .line 12
    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;-><init>(Ljava/util/Comparator;I)V

    .line 13
    .line 14
    .line 15
    move-object p1, v1

    .line 16
    :goto_0
    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$a;->m(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$a;->o(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->b:Ljava/util/Comparator;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->c:Ljava/util/Comparator;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->fromMapBuilderEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method k(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->b(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableMultimap$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public m(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public n(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->i(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
