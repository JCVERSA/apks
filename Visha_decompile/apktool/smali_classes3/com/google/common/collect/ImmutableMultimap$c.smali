.class public Lcom/google/common/collect/ImmutableMultimap$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/Comparator;

.field public c:Ljava/util/Comparator;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->d:I

    if-lez p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/l;->i(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMultimap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

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

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableListMultimap;->fromMapBuilderEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/common/collect/ImmutableMultimap$c;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 2

    iget-object p1, p1, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection$b;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection$b;->e()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultimap$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/l;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public d(ILjava/lang/Iterable;)I
    .locals 0

    instance-of p0, p2, Ljava/util/Collection;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public e(I)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 2

    invoke-static {p1, p2}, Lk71;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection$b;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableMultimap$c;->d:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$c;->e(I)Lcom/google/common/collect/ImmutableCollection$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableCollection$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMultimap$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$c;

    move-result-object p0

    return-object p0
.end method

.method public h(Lat6;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 2

    invoke-interface {p1}, Lat6;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultimap$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$c;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$c;
    .locals 2

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableCollection$b;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/ImmutableMultimap$c;->d:I

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->d(ILjava/lang/Iterable;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableMultimap$c;->e(I)Lcom/google/common/collect/ImmutableCollection$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$c;->c()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lk71;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableCollection$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null key in entry: null="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lv55;->s(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
