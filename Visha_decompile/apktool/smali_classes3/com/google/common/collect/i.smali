.class public abstract Lcom/google/common/collect/i;
.super Lu44;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu44;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/j;->add(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/j;->count(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/j;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract f()Lcom/google/common/collect/j;
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/j;->hashCode()I

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/j;->remove(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/j;->setCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/collect/j;->setCount(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public standardAddAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/j;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public standardClear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method public standardContains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i;->count(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public standardRemove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/i;->remove(Ljava/lang/Object;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public standardRemoveAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->j(Lcom/google/common/collect/j;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public standardRetainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->k(Lcom/google/common/collect/j;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public standardToString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
