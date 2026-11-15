.class public abstract Lo2j;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:Ljava/util/Map;

.field public e:Z

.field public volatile f:Li2j;

.field public g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ll2j;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo2j;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo2j;->g:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic b(Lo2j;)I
    .locals 0

    iget p0, p0, Lo2j;->c:I

    return p0
.end method

.method public static bridge synthetic e(Lo2j;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo2j;->o(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lo2j;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic k(Lo2j;)V
    .locals 0

    invoke-virtual {p0}, Lo2j;->q()V

    return-void
.end method

.method public static bridge synthetic m(Lo2j;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo2j;->b:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lo2j;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo2j;->d:Ljava/util/Map;

    iget-object v0, p0, Lo2j;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo2j;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo2j;->g:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo2j;->e:Z

    :cond_2
    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lo2j;->c:I

    return p0
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lo2j;->q()V

    iget v0, p0, Lo2j;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lo2j;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo2j;->c:I

    :cond_0
    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo2j;->n(Lxbi;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lo2j;->f:Li2j;

    if-nez v0, :cond_0

    new-instance v0, Li2j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li2j;-><init>(Lo2j;Ll2j;)V

    iput-object v0, p0, Lo2j;->f:Li2j;

    :cond_0
    iget-object p0, p0, Lo2j;->f:Li2j;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo2j;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lo2j;

    invoke-virtual {p0}, Lo2j;->size()I

    move-result v1

    invoke-virtual {p1}, Lo2j;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    iget v2, p0, Lo2j;->c:I

    iget v4, p1, Lo2j;->c:I

    if-ne v2, v4, :cond_5

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Lo2j;->g(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lo2j;->g(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    iget-object p1, p1, Lo2j;->d:Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lo2j;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lo2j;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    return v3
.end method

.method public final f(Lxbi;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lo2j;->q()V

    invoke-virtual {p0, p1}, Lo2j;->n(Lxbi;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    check-cast p0, Ld2j;

    invoke-virtual {p0, p2}, Ld2j;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lo2j;->q()V

    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    const/16 v2, 0x10

    if-nez v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    iput-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lo2j;->p()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget v1, p0, Lo2j;->c:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    check-cast v1, Ld2j;

    iput v2, p0, Lo2j;->c:I

    invoke-virtual {p0}, Lo2j;->p()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Ld2j;->a()Lxbi;

    invoke-virtual {v1}, Ld2j;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    array-length v4, v1

    rsub-int/lit8 v4, v0, 0xf

    invoke-static {v1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    new-instance v2, Ld2j;

    invoke-direct {v2, p0, p1, p2}, Ld2j;-><init>(Lo2j;Lxbi;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    iget p1, p0, Lo2j;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo2j;->c:I

    return-object v3
.end method

.method public final g(I)Ljava/util/Map$Entry;
    .locals 1

    iget v0, p0, Lo2j;->c:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ld2j;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo2j;->n(Lxbi;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    check-cast p0, Ld2j;

    invoke-virtual {p0}, Ld2j;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lo2j;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_1
    return v2
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lo2j;->e:Z

    return p0
.end method

.method public final n(Lxbi;)I
    .locals 5

    iget v0, p0, Lo2j;->c:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    iget-object v4, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ld2j;

    invoke-virtual {v4}, Ld2j;->a()Lxbi;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int p0, v0

    return p0

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    if-gt v2, v1, :cond_5

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Ld2j;

    invoke-virtual {v4}, Ld2j;->a()Lxbi;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lo2j;->q()V

    iget-object v0, p0, Lo2j;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ld2j;

    invoke-virtual {v0}, Ld2j;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    iget v2, p0, Lo2j;->c:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lo2j;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo2j;->c:I

    iget-object p1, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo2j;->p()Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v1, p0, Lo2j;->b:[Ljava/lang/Object;

    iget v2, p0, Lo2j;->c:I

    new-instance v3, Ld2j;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lubc;->a(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5, v4}, Ld2j;-><init>(Lo2j;Lxbi;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    iget v1, p0, Lo2j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo2j;->c:I

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object v0
.end method

.method public final p()Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0}, Lo2j;->q()V

    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lo2j;->g:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lo2j;->f(Lxbi;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q()V
    .locals 0

    iget-boolean p0, p0, Lo2j;->e:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2j;->q()V

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo2j;->n(Lxbi;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lo2j;->o(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lo2j;->c:I

    iget-object p0, p0, Lo2j;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
