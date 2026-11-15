.class public abstract Lcom/google/common/collect/d;
.super Lcom/google/common/collect/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/p;


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient descendingMultiset:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/d;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 3
    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/d;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public createDescendingMultiset()Lcom/google/common/collect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/p;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$a;-><init>(Lcom/google/common/collect/d;)V

    return-object v0
.end method

.method public createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public bridge synthetic createElementSet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d;->createElementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public abstract descendingEntryIterator()Ljava/util/Iterator;
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingMultiset()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->i(Lcom/google/common/collect/j;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingMultiset()Lcom/google/common/collect/p;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d;->descendingMultiset:Lcom/google/common/collect/p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/d;->createDescendingMultiset()Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d;->descendingMultiset:Lcom/google/common/collect/p;

    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/b;->elementSet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/d;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public firstEntry()Lcom/google/common/collect/j$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/j$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public lastEntry()Lcom/google/common/collect/j$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/j$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/j$a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/b;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j$a;

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->g(Ljava/lang/Object;I)Lcom/google/common/collect/j$a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public pollLastEntry()Lcom/google/common/collect/j$a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j$a;

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/j$a;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->g(Ljava/lang/Object;I)Lcom/google/common/collect/j$a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;
    .locals 0

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method
