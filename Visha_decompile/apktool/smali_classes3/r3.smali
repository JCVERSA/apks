.class public abstract Lr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lcom/google/common/collect/Range;)V
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 3
    invoke-virtual {p0, v0}, Lr3;->add(Lcom/google/common/collect/Range;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAll(Lun8;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr3;->remove(Lcom/google/common/collect/Range;)V

    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr3;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract encloses(Lcom/google/common/collect/Range;)Z
.end method

.method public enclosesAll(Ljava/lang/Iterable;)Z
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 3
    invoke-virtual {p0, v0}, Lr3;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public enclosesAll(Lun8;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lun8;

    if-eqz v0, :cond_1

    check-cast p1, Lun8;

    invoke-interface {p0}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-interface {p0}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
.end method

.method public abstract remove(Lcom/google/common/collect/Range;)V
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 3
    invoke-virtual {p0, v0}, Lr3;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Lun8;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3;->removeAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lun8;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
