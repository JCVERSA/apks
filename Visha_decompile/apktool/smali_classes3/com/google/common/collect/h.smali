.class public abstract Lcom/google/common/collect/h;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/p;


# instance fields
.field public transient b:Ljava/util/Comparator;

.field public transient c:Ljava/util/NavigableSet;

.field public transient d:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/p;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h;->f()Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/h;->f()Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public descendingMultiset()Lcom/google/common/collect/p;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h;->c:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    iput-object v0, p0, Lcom/google/common/collect/h;->c:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->k()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/h;->d:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public f()Lcom/google/common/collect/j;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public firstEntry()Lcom/google/common/collect/j$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->lastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->descendingMultiset()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method public abstract l()Ljava/util/Iterator;
.end method

.method public lastEntry()Lcom/google/common/collect/j$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->firstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public abstract m()Lcom/google/common/collect/p;
.end method

.method public pollFirstEntry()Lcom/google/common/collect/j$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->pollLastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public pollLastEntry()Lcom/google/common/collect/j$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->pollFirstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0, p3, p4, p1, p2}, Lcom/google/common/collect/p;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->descendingMultiset()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->m()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->descendingMultiset()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu44;->standardToArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lu44;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
